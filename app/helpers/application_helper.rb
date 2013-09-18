module ApplicationHelper

  def get_requirement
    allReqs = Scout.find(params[:scout_id]).scout_requirements.find(Advancement.find(params[:advancement_id]).advancement_requirements.pluck(:requirement_id))
    req = nil
    allReqs.each do |r|
      if(r.requirement_id == params[:parent].to_i)
        req = r
      end
    end
    req
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

  def complete_requirement(requirement)
    req = Scout.find(params[:scout_id]).scout_requirements.find(requirement)
    if(req.completed_date != nil)
      req.update_attributes(:completed_date => nil)
    else
      req.update_attributes(:completed_date => Date.today)
    end
  end

  def check_parent
    parent_req = get_requirement
    parent = Advancement.find(params[:advancement_id]).advancement_requirements.find(params[:parent])
    children_reqs = parent.children.split("#")
    children_needed = parent.children_count
    children_completed = children_completed(children_reqs)
    return children_completed >= children_needed
  end

  def update_percentage_complete
    parents = Scout.find(params[:scout_id]).advancements.find(params[:advancement_id]).advancement_requirements.where("children is NOT NULL")
    solo = Scout.find(params[:scout_id]).advancements.find(params[:advancement_id]).advancement_requirements.where("parent is NULL and children is NULL")
    to_be_finished = parents + solo
    completed = 0
    to_be_finished.each do |req|
      req = Scout.find(params[:scout_id]).scout_requirements.where(:requirement_id => req.requirement_id).first
      if req.completed_date != nil
        completed = completed + 1
      end
    end
    percentage_complete = completed.to_f / (to_be_finished.size().to_f) * 100
    reqs_remaining = to_be_finished.size() -completed
    # Scout.find(params[:scout_id]).scout_advancements.find(params[:advancement_id]).update_attributes(:percentage_complete => percentage_complete)
    Scout.find(params[:scout_id]).scout_advancements.where(:advancement_id => params[:advancement_id]).first.update_attributes(:reqs_remaining => reqs_remaining)
  end
end
