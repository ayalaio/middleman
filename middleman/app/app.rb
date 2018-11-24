#!/usr/local/bin/ruby

require 'sinatra'
require 'json'
require 'mysql2'
require "httparty"

set :bind, '0.0.0.0'

get '/' do
  con = Mysql2::Client.new(host: "mysql", username: "emprende24", password: "3mpr3nd324")
  dbs = con.query('SHOW DATABASES;')
  output = ""
  dbs.each do |db|
      output = "#{output} #{db}"
  end
  con.close
  output
end

get "/google" do
  HTTParty.get('http://google.com', follow_redirects: true).body
end

