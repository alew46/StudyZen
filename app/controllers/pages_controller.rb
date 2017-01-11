class PagesController < ApplicationController

  def show
    render template: "pages/#{params[:googleallow]}"
  end

end
