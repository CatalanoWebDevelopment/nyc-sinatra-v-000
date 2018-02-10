class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])

    redirect "/landmarks"
  end

  get '/landmarks' do
    erb :index
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])

    erb '/landmarks/show'
  end

end
