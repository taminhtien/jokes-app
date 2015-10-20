require 'rails_helper'

RSpec.describe "Jokes", type: :request do
  describe "GET /jokes" do
    it "works! (now write some real specs)" do
      get jokes_path
      expect(response).to have_http_status(200)
    end

    #it "displays joke" do
    #  Joke.create!(content: "Test", like: 0, dislike: 0)
    #  get jokes_path
    #  response.body.should include("Test")
    #end
  end

  #describe "PATCH /joke/:id/like" do
  #  it "increases like number" do
  #    @joke = Joke.create!(content: "Test", like: 0, dislike: 0)
  #    patch_via_redirect joke_like_path, id: @joke.id
  #    @joke.like.should eq(1)
  #  end
  #end
end
