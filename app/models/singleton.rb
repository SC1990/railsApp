require 'singleton'

class AppConfig
  include Singleton

  attr_accessor :data

  def app_version
    '1.0.0'
  end

end
