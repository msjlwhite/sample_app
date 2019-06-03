=begin
Listing 3.4: Adding a hello action to the Application controller.
app/controllers/application_controller.rb
=end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end

end
