class GroupsController < ApplicationController
  def index
    @groups=Group.all.order('groupname DESC')
    @NumberOfGroups=Group.count
  end

  def create
        group = Group.new(group_params)
      if group.save
      redirect_to action: "index"
    else
      render action: "index"
    end
  end

  def group_params
      params.require(:group).permit(:groupname, :code, :des1, :des2, :des3)
  end

  def destroy
    if Person.where(group_id: params[:id]).count > 0
      redirect_to action: "index", error: true
    else
     Group.find(params[:id]).destroy
     redirect_to action: "index"
    end
  end
end
