class JokesController < ApplicationController
  before_action :set_joke, only: [:like, :dislike, :next_joke]

  def index
    if session[:out_of_joke] == true
      @joke = nil
    else
      @joke = Joke.first
    end
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

    def next_joke
      
      # Checks last joke
      if @joke == last_joke
        session[:out_of_joke] ||= true
        @joke = nil
      else
        @joke = Joke.where('id > ?', @joke.id).first
      end

      render 'joke.js.erb'
    end

    def last_joke
      Joke.last
    end
end
