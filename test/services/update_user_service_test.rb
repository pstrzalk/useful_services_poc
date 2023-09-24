class UpdateUserServiceTest < Minitest::Test
  def test_first_name_is_updated
    user = User.new(id: 17)

    service = UpdateUserService.new(17, first_name: 'Foo')
    service.model.save(user)

    service.call

    assert user.first_name == 'Foo'
  end
end
