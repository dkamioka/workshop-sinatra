require 'sinatra'
require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
	:adapter => "sqlite3",
	:database => dev.sqlite3,
	:pool => 5,
	:timeout => 5000
	)

class Item < ActiveRecord::Base
end

ActiveRecord::Migration.create_table :items do |t|
	t.string :name,
	t.string :original_url
end

class App < Sinatra::Application
end

get '/' do
	p Item.all
end
