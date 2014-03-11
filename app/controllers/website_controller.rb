class WebsiteController < ApplicationController
  def index
    @faculties = Faculty.take(15)
    @versions = PaperTrail::Version.all
  end

  def howto
  end
  
end
