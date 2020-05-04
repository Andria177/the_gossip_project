class WelcomeController < ApplicationController
  def hello
    puts "#" * 40
    @first_name = params[:first_name]
    puts "#" * 40
  end
end
