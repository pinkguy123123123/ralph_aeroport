class PeopleController < ApplicationController

def index
  @people=Person.all.order('name ASC')
  @groups = Group.all
  @NumberOfPeople = Person.count
  @AverageAge = Person.all.average(:age)
  @people=Person.all.order('name ASC')
 
end

def edit
  @person = Person.find(params[:id])
  @groups = Group.all
end

def new
  @people=Person.all
  @groups = Group.all
end

def create
  person = Person.new(person_params)
  if person.save
    redirect_to action: "index"
  else
    render action: "new"
  end
end

def destroy
  Person.find(params[:id]).destroy
  redirect_to action: "index"
end

def update
  person = Person.find(params[:id])
  if person.update_attributes(person_params)
    redirect_to action: "index"
  else
    render action: "edit"
  end
end
def person_params
  params.require(:person).permit(:name, :firstname, :group_id, :sex, :age, :email, :des1, :des2, :des3)
end
end
