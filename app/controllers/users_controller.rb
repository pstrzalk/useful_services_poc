class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    update_user = UpdateUserService.build(params[:id], params:)
    update_user.call

    render json: {}
  end
end
