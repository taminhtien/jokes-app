class JokesController < ApplicationController
  before_action :set_joke, only: [:like, :dislike, :next_joke]
  before_action :set_session, only: [:index]

  def index
    @joke = Joke.first
  end

  def like
    @joke.update_attribute(:like, @joke.like + 1)
    next_joke
  end

  def dislike
    @joke.update_attribute(:dislike, @joke.dislike + 1)
    next_joke
  end

  private

    def set_joke
      @joke = Joke.find(params[:id])
    end

    def set_session
      @jokes = Joke.all
      @jokes.each do |joke|
        (session[:jokes_id] ||= []) << joke.id
      end
    end

    def next_joke
      @joke = Joke.where('id > ?', @joke.id).first
      render 'joke.js.erb'
    end
end
