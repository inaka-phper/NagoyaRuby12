require_relative '../lib/parser'
require_relative '../lib/passenger'
require_relative '../lib/pricing'
require_relative '../lib/run'

p Run.new(ARGV[0]).price