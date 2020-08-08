require 'test_helper'

class UserTest < ActiveSupport::TestCase

  it "is not valid without a email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end
  # test "the truth" do
  #   assert true
  # end
end
