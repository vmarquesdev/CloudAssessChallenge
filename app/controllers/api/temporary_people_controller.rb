class API::TemporaryPeopleController < API::APIController

  # GET /api/temporary_people
  #
  def index
    @people = Person.order(:first_name)
  end

end
