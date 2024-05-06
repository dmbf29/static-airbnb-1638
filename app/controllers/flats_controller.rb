require 'open-uri'

class FlatsController < ApplicationController

  # '/'
  def index
    # @flats = Flat.all
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  # '/flats/145'
  def show
    # params[:id]
    # @flat = Flat.find(params[:id])
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
    @flat = @flats.find do |flat_hash|
      flat_hash["id"] == params[:id].to_i
    end
  end
end
