class UserRepository
  def save(obj)
    obj.save
  end

  def find(id)
    User.find(id)
  end

  module Substitute
    include HashRepository
  end
end
