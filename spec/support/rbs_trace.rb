require 'rbs'
require 'rbs/trace'

RSpec.configure do |config|
  trace = RBS::Trace.new

  config.before(:suite) { trace.enable }
  config.after(:suite) do
    trace.disable
    trace.save_comments
  end
end
