require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "this is a user" do
    user = Factory.build(:user)
    user.password = "hellothere"
    user.password_confirmation = "hellothere"
    # magic
    assert user.valid?
  end
end
