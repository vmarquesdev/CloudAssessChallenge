class API::TemporaryPeopleController < API::APIController

  # GET /api/temporary_people
  #
  def index
    @people = Person.order(:first_name)
  end

  # GET /api/temporary_people/:id
  #
  def show
    @people = Person.find(params[:id])
  end

  # PATCH /api/temporary_people/:id
  #
  # Params: [:first_name, :last_name, :organisation_id]
  #
  def update
    @people = Person.find(params[:id])
    people_params = params.permit(:first_name, :last_name, :organisation_id)

    if @people.update(people_params)
      render status: 200
    else
      render status: 422, json: {error: @people.errors.full_messages.first}
    end
  end

end
