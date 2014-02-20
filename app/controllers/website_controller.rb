class WebsiteController < ApplicationController

  def index
@faculties = Faculty.all
@versions = Version.all
end

end
