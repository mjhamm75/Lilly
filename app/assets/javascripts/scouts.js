$(document).ready(function() {
  "use strict";

  $('#add_new_scout').on('click', function() {
    var template = $("#new_scout_modal").html();
    create_modal(template);
  });

  $('#complete').on('click', function(e) {
    e.preventDefault();
    var req = $.ajax({
      url: '/scouts/new',
      data: { first_name: $('#first_name').val(), last_name: $('#last_name').val(), birthday: $("#birthdate").val()},
      dataType: 'json'
    });

    var success = function(data) {
      $('#main_scout_list tr:last').after('<tr><td>' + data.full_name + '</td><td>' + data.age + '</td></tr>');
    };

    req.done(success);
    $('#modal_container').modal('hide');
  });

  $("tr[data-link]").click(function() {
    window.location = $(this).data("link");
  });

  $("#add_merit_badge").click(function(e) {
    e.preventDefault();
    var req = $.ajax({
      url: '/merit_badge_list'
    });
    var success = function(data) {
      // var badges = _.map(data, function(d){
      //   return d.name;
      // });

      var badges = _.object(
          _.map(_.keys(data), function(key){
              var badge = data[key];
              return [key, [badge.name]];
          })
      )

      var template = $("#add_merit_badge_modal").html();
      // var html = Mustache.to_html(template, badges);
      create_modal(template);
    };
    req.done(success);
  });

  var create_modal = function(template) {
    $('.modal-header').html($(template).siblings('.modal-header'));
    $('.modal-body').html($(template).siblings('.modal-body'));
    $('#modal_container').modal();
  };
});