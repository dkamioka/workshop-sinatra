# Exemplo do uso do Sinatrarb.
# esse exemplo cria uma aplicação que deve se comportar como um encurtador de URLs.
# A arquitetura é simples, basta que para uma dada URL um hash de até 8 caracteres 
# é gerado que remete ao link depois.


require 'sinatra'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.establish_connection(
	:adapter => "mysql2",
	:host => "localhost",
	:username => "root",
	:password => "",
	:database => "workshop_sinatra"
	)

class Item < ActiveRecord::Base
end

if (!ActiveRecord::Base.connection.table_exists? 'items')
	ActiveRecord::Migration.create_table :items do |t|
		t.string :url
		t.integer :count, :default => 0
		t.string :name
	end
end

class App < Sinatra::Application
end

get '/:name' do
	a = Item.find_by_name(params[:name])
	a.count += 1
	a.save
	redirect a.url
end

post '/create' do
	a = Item.new
	a.url, a.name = params[:url], params[:name]
	a.save
end
