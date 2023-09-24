class User < ApplicationRecord
  def touch(*_a, **_b)
    super
  end

  # def update(**)
  # end

  # module Substitute
  #   def find=(user)
  #     @user = user
  #   end

  #   def find(_)
  #     @user
  #   end
  # end
end
