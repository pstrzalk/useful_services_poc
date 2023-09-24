class UpdateUserService
  include Dependency

  dependency :model, UserRepository

  def self.build(user_id, params)
    user_params = params.slice(:first_name)

    service = new(user_id, **user_params)
    service.model = User

    service
  end

  def initialize(user_id, first_name: nil)
    @user_id = user_id
    @first_name = first_name
  end

  def call
    user = model.find(user_id)
    user.first_name = first_name if first_name

    model.save(user)
  end

  attr_reader :first_name, :user_id
end
