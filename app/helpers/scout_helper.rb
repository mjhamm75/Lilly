module ScoutHelper

  def get_updates
    ar = AdvancementRequirement.where(:requirement_id => params[:requirement_id]).first
    @sr = ScoutRequirement.where(:requirement_id => params[:requirement_id], :scout_id => params[:scout_id]).first
    result = Hash.new(false)
    if ar.isSolo?
      puts "SINGLE"
      result[:req_complete] = update_requirement(params[:requirement_id], @sr.isComplete?)
    elsif ar.isChild?
      puts "CHILD"
      result = update_child
    elsif ar.isParent?
      puts "PARENT"
    end
    result
  end

  def update_requirement(requirement_id, isComplete)
    puts "UPDATE REQ"
    puts requirement_id
    puts isComplete
    result = false
    if isComplete
      Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => requirement_id).first.update_attributes(:completed_date => nil)
    else
      Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => requirement_id).first.update_attributes(:completed_date => Date.today)
      result = true
    end
    update_reqs_remaining
    return result
  end

  def update_reqs_remaining
    ars = Scout.find(params[:scout_id]).advancements.find(params[:advancement_id]).advancement_requirements
    count = 0
    ars.each do |ar|
      if ar.isParent? || ar.isSolo?
        sr = ScoutRequirement.where(:requirement_id => ar.requirement_id, :scout_id => params[:scout_id])
        if sr.first.isComplete?
          count = count + 1
        end
      end
    end
    reqs_needed = get_reqs_needed
    reqs_remaining = reqs_needed - count
    sa = Scout.find(params[:scout_id]).scout_advancements.where(:advancement_id => params[:advancement_id]).first.update_attribute(:reqs_remaining, reqs_remaining)
  end

  def get_reqs_needed
    ars = Scout.find(params[:scout_id]).advancements.find(params[:advancement_id]).advancement_requirements
    count = 0
    ars.each do |ar|
      if ar.isParent? || ar.isSolo?
        count = count + 1
      end
    end
    count
  end

  def update_child
    puts "UPDATE CHILD"
    result = Hash.new(false)
    result[:req_complete] = update_requirement(params[:requirement_id], @sr.isComplete?)
    result[:parent_complete] = update_parent
    return result
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
