module JokesSession extend ActiveSupport::Concern

  private

    # Adds all joke id to session
    def set_session
      @jokes = Joke.all
      @jokes.each do |joke|
        (session[:jokes_id] ||= []) << joke.id
      end
    end
end