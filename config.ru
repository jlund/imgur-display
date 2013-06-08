RACK_ROOT = File.dirname(__FILE__)
$LOAD_PATH.unshift RACK_ROOT

require 'sinatra'
require 'app/imgur-display'

run Imgur::Display
