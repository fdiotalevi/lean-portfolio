require 'rubygems'
require 'sinatra'
require 'erb'
require './contents/domain'
require './contents/collections'
require './contents/home'

get '/' do
  @photo = Home.new.one 
  @projects = Projects.new.list  
  erb :index
end


get '/collection/:name' do 
  projects = Projects.new
  @projects = projects.list
  @project = projects.select(params['name'])
  erb :collection
end

