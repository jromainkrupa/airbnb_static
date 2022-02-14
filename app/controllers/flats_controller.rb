require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    id = params[:id].to_i
    @flat = @flats.find { |flat| flat["id"] == id }
  end

  private

  def set_flats
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    doc = URI.open(url).read
    @flats = JSON.parse(doc)
  end
end
