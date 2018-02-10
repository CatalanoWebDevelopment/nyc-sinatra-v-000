class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post 'landmarks'

  get 'landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])

    erb '/landmarks/show'
  end

end
