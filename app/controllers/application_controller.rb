class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def hello_action
    @random = Random.new.rand(100)
    render 'hello.json.jbuilder'
  end

  def about
    @favorite_coding_lang = "Ruby"
    render "about.json.jbuilder"
  end

end
