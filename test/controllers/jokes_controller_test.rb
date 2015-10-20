require 'test_helper'

class JokesControllerTest < ActionController::TestCase
  def setup
    @joke = jokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  #test "like should increase like number" do 
  #  assert_difference '@joke.like', 1 do
  #    xhr :patch, :like, id: @joke.id
  #  end
  #end
end
