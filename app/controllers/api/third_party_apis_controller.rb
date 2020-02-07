class Api::ThirdPartyApisController < ApplicationController
  def index
    @holiday =HTTP.headers("Authorization" => "Bearer #{ENV['holiday_api_key']}").get("https://holidayapi.com/v1/countries?key=#{params[:search]}").parse["third_party_apis"]
  render 'index.json.jb'
  end
end


