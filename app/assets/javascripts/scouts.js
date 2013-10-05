$(document).ready(function() {
  "use strict";



  $('#add_new_scout').on('click', function() {
    var template = $("#new_scout_modal").html();
    create_modal(template, this.id);
  });

  $('#complete').on('click', function(e) {
    e.preventDefault();
    if (this.id === "complete_add_new_scout") {
      add_new_scout();
    }
    if (this.id === "complete_add_merit_badge") {
      add_new_merit_badge();
    }
    $('#modal_container').modal('hide');
  });

  $("body").on('click', 'tr[data-link]', function() {
    window.location = $(this).data("link");
  });

  $("#add_merit_badge").click(function(e) {
    e.preventDefault();
    var template = $("#add_merit_badge_modal").html();
    create_modal(template, this.id);
    $('.chzn-select').chosen();
  });

  var create_modal = function(template, name) {
    $('.modal-header').html($(template).siblings('.modal-header'));
    $('.modal-body').html($(template).siblings('.modal-body'));
    $('.modal-footer #complete').attr("id", "complete_" + name);
    $('#modal_container').modal();
  };

  var add_new_scout = function() {
    var req = $.ajax({
      url: '/scouts/new',
      data: {
        first_name: $('#first_name').val(),
        last_name: $('#last_name').val(),
        birthday: $("#birthdate").val()
      },
      dataType: 'json'
    });

    var success = function(data) {
      $('#main_scout_list tr:last').after('<tr data-link="/scouts/' + data.id + '/edit"><td>' + data.full_name + '</td><td>' + data.age + '</td></tr>');
    };

    req.done(success);
  };

  var add_new_merit_badge = function() {
    var badge = $('.chzn-select option:selected').text();
    var id = $("[data-scout-id]").data().scoutId;
    var req = $.ajax({
      url: '/scouts/' + id,
      data: {
        badge: badge,
      },
      dataType: 'json'
    });
    var success = function(data) {
      var mb = data.merit_badge;
      if ($('#merit_badges table tbody tr').size() > 0) {
        $('#merit_badges table tbody tr:last').after('<tr><td><i class="icon-ok"></i></td><td>' + mb.name + '</td><td>0</td>' + 0 + '</td></tr>');
      } else {
        $('#merit_badges table tbody').append('<tr><td><i class="icon-ok"></i></td><td>' + mb.name + '</td><td>0</td>' + 0 + '</td></tr>');
      }
    };
    req.done(success);
  };

  $('body').on("click", ".checkbox", function() {
    var scout_id = $('[data-scout]').data().scout;
    var req_id = $(this).parents('[data-req]').data('req');
    var req = $.ajax({
      url: '/scouts/' + scout_id + '/scout_requirements/' + req_id + '/edit'
    });
    req.done();
  });

  $('body').on('click', '.row', function() {
    var $row = $(this);
    var scout_id = $row.parent().data().scout;
    var requirement_id = $row.data().req;
    var parent = $row.data().parent;
    var children = $row.data().children;
    var children_count = $row.data().childrenCount;
    var advancement_id = $row.parent('.table').data().advancement;
    var req = $.ajax({
      url: '/scouts/' + scout_id + '/reqs',
      data: {
        requirement_id: requirement_id,
        parent: parent,
        children: children,
        advancement_id: advancement_id,
        children_count: children_count
      },
      type: 'PUT'
    });
    var success = function(data) {
      var $div = $row.children().last();
      if (data.req_complete === true) {
        toggleCheck($div, true);
      }
      if(data.req_complete === false) {
        toggleCheck($div, false);
      }
      var parent = $('[data-req=' + $row.data().parent + ']');
      if (data.parent_complete === true) {
        toggleCheck(parent, true);
      }
      if (data.parent_complete === false) {
        toggleCheck(parent, false);
      }
    };
    req.done(success);
  });

  var toggleCheck = function(div, turnOn) {
    if (!turnOn) {
      div.find('img').remove();
    } else {
      if(div.children(':last').find('img').length === 0) {
        div.append("<img alt=\"Checkmark\" height=\"48\" src=\"/assets/checkmark.png\" width=\"48\">");
      }
    }
  };
});
