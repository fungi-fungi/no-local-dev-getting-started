# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'


get "/" do
  erb :home
end


class Contact < ActiveRecord::Base
  self.table_name = 'salesforce.i_m__item__c'
end

#get "/contacts" do
#  @contacts = Contact.all
#  erb :index
#end

get "/contacts" do
  @contacts = Contact.all
  erb :index
end
