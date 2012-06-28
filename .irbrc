require 'logger'
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  # log SQL to the Rails console
  Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end