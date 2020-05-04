class HomeController < ApplicationController
  def Welcome
    puts Gossip.all
  end
end
