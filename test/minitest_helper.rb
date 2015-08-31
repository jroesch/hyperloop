$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../test', __FILE__)

require 'hyperloop'
require 'minitest/autorun'
require 'pry'

require_relative 'test_hyperloop'

binding.pry
