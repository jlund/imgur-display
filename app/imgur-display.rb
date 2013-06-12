require 'json'
require 'sinatra'
require_relative 'models/imgur-random'

module Imgur

  class Display < Sinatra::Application

    get "/" do
      "<h1>imgur!</h1><br /><img src=\"#{ Imgur::Random.get }\" />"
    end

  end

end
