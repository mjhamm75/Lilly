module ScoutHelper
  def update_requirement
    ar = AdvancementRequirement.where(:requirement_id => params[:requirement_id]).first
    @sr = ScoutRequirement.where(:requirement_id => params[:requirement_id], :scout_id => params[:scout_id]).first
    result = Hash.new(false)
    if ar.isSolo?
      req_complete = update_single @sr.isComplete?
      result[:req_complete => req_complete]
    elsif ar.isChild?
      result_child = update_child
      result = result.merge(result_child)
    elsif ar.isParent?
      "Do nothing"
    end
    result
  end

  def update_single(isComplete)
    if isComplete
      Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => params[:requirement_id]).first.update_attributes(:completed_date => nil)
      false
    else
      Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => params[:requirement_id]).first.update_attributes(:completed_date => Date.today)
      true
    end
  end

  def update_child
    result = Hash.new
    req_complete = update_single @sr.isComplete?
    parent_complete = update_parent
    result[:req_complete] = req_complete
    result[:parent_complete] = parent_complete
    result
  end

  def update_parent
    req_complete = true
    parent_finished = check_parent_finished
    update_single parent_finished
    parent_finished
  end

  def check_parent_finished
    children_reqs = get_children
    children_completed = children_completed(children_reqs)
    return children_completed >= children_reqs.count
  end

  def get_children
    parent_req = AdvancementRequirement.find(params[:requirement_id]).parent
    parent = AdvancementRequirement.find(parent_req)
    children_reqs = parent.children.split('#')
  end

  def children_completed(children)
    count = 0
    children.each do |child|
      kid = Scout.first.scout_requirements.find(child)
      if(kid.completed_date != nil)
        count = count + 1
      end
    end
    count
  end
end