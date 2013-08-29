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
    parent = Advancement.find(params[:advancement_id]).advancement_requirements.find(parent_req)
    children_reqs = parent.children.split("#")
    children_needed = parent.children_count
    children_completed = children_completed(children_reqs)
    return children_completed >= children_needed
  end
end
