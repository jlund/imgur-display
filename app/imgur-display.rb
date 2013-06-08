require 'json'
require 'sinatra'
require_relative 'models/imgur-random'

module Imgur

  class Display < Sinatra::Application

    get "/" do
      "<img src=\"#{ Imgur::Random.get }\" />"
    end

  end

end
