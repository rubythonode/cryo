require_relative 'utils'

class Database
  include Utils

  def get_backup()
    raise "implement me"
  end

  class << self
    def create(options={})
      const_get(options[:type].to_s.capitalize).new(options)
    end
  end

end