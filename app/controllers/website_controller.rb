class WebsiteController < ApplicationController
  def index
    @faculties = Faculty.all
    @versions = PaperTrail::Version.all
  end
end
