require_relative 'company'

class Wagon
  include Company
  attr_reader :wagon_type

  def initialize(wagon_type)
    @wagon_type = wagon_type
  end
end
