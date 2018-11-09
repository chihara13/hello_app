require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

def setup
  @user       = users(:michael)
  @other_user = users(:archer)
end

test "shoud redirect index when logged in" do
  get users_path
  assert_redirected_to login_url
end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "shoud redirect edit when not logged in" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "shoud redirect update when not logged in" do
    patch user_path(@user), params: { user: { name:  @user.name,
                                              email: @user.emaill } 
    assert_not flash.empty?
    assert_redirected_to login_url
  end

end
