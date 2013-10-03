module ScoutHelper

  def get_updates
    ar = AdvancementRequirement.where(:requirement_id => params[:requirement_id]).first
    @sr = ScoutRequirement.where(:requirement_id => params[:requirement_id], :scout_id => params[:scout_id]).first
    if ar.isSolo?
      puts "SOLO"
      update_requirement(params[:requirement_id], @sr.isComplete?)
    elsif ar.isChild?
      puts "CHILD"
      update_child
    elsif ar.isParent?
      puts "PARENT"
    end
  end
  # def update_requirement
  #   ar = AdvancementRequirement.where(:requirement_id => params[:requirement_id]).first
  #   @sr = ScoutRequirement.where(:requirement_id => params[:requirement_id], :scout_id => params[:scout_id]).first
  #   result = Hash.new(false)
  #   if ar.isSolo?
  #     req_complete = update_single(params[:requirement_id], @sr.isComplete?)
  #     result[:req_complete => req_complete]
  #   elsif ar.isChild?
  #     result_child = update_child
  #     result = result.merge(result_child)
  #   elsif ar.isParent?
  #     "Do nothing"
  #   end
  #   result
  # end

  def update_requirement(requirement_id, isComplete)
    puts "UPDATE REQ"
    puts requirement_id
    puts isComplete
    if isComplete
      Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => requirement_id).first.update_attributes(:completed_date => nil)
      false
    else
      Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => requirement_id).first.update_attributes(:completed_date => Date.today)
      true
    end
  end

  # def update_child
  #   result = Hash.new(false)
  #   req_complete = update_single(params[:requirement_id], @sr.isComplete?)
  #   parent_complete = update_parent
  #   result[:req_complete] = req_complete
  #   result[:parent_complete] = parent_complete
  #   result
  # end

  def update_child
    puts "UPDATE CHILD"
    req_complete = update_requirement(params[:requirement_id], @sr.isComplete?)
    parent_complete = update_parent
  end

  def update_parent
    parent_req = get_parent
    parent_finished = check_parent_finished(parent_req)
    puts "PARENT_FINISHED"
    puts parent_finished
    update_requirement(parent_req, !parent_finished)
  end

  def check_parent_finished(parent_req)
    children_needed = AdvancementRequirement.find(parent_req).children_count
    children_reqs = get_children(parent_req)
    count_children_complete = get_completed_children(children_reqs)
    count_children_complete >= children_needed
  end

  def get_children(parent_req)
    parent = AdvancementRequirement.find(parent_req)
    children_reqs = parent.children.split('#')
  end

  def get_parent
    AdvancementRequirement.find(params[:requirement_id]).parent
  end

  def get_completed_children(requirements)
    count = 0
    requirements.each do |requirement|
      req = Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => requirement).first
      if(req.completed_date != nil)
        count = count + 1
      end
    end
    count
  end
end
