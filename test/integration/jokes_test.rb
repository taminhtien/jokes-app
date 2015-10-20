require 'test_helper'

class JokesTest < ActionDispatch::IntegrationTest
  def setup
    @joke = jokes(:one)
  end

  #test "should return next joke" do
  #  get root_path
  #  assert_template 'jokes/index'
  #  assert_difference '@joke.like', 1 do
  #    xhr :patch, like_joke_path, id: @joke.id
  #  end
  #end
end
