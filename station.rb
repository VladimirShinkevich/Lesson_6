require_relative 'instance_counter'

class Station
  include InstanceCounter
  attr_reader :trains , :station_name

  @@stations = []

  def initialize(station_name)
    @station_name = station_name
    @trains = []
    @@stations << self
    register_instance
  end

  def train_arrived(train)
    @trains << train
  end

  def train_send(train)
    @trains.delete(train)
  end

  def show_cargo_trains
    @trains.select { |train| train.train_type == :cargo }
  end

  def show_passenger_trains
    @trains.select { |train| train.train_type == :passenger }
  end

  def self.all
    @@stations
  end

end
