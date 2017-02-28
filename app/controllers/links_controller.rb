class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    links = Faraday.get('http://aqueous-castle-16181.herokuapp.com/api/v1/links')
    @links = JSON.parse(links.body, symbolize_names: true)
  end

  def create
  end

end
