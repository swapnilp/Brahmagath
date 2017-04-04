class HomeController < ApplicationController
  def index
    @cohabitants = Cohabitant.last(6)
  end

  def about
  end
  
  def search
    
  end

  def contact
  end
end
