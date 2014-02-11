class WebsiteController < ApplicationController

  def index
@faculties = Faculty.all
end

end
