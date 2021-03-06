require 'docking_station'
require 'bike'

describe DockingStation do

 it 'expects DockingStation to respond to release_bike method' do
   docking_station = DockingStation.new
   expect(docking_station).to respond_to(:release_bike)
  end

it 'expects bike to be working' do
  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.dock(bike)
  expect(docking_station.release_bike.working?).to eq true
 end

 it 'expects docking_station to respond to the dock method' do
   docking_station = DockingStation.new
   expect(docking_station).to respond_to(:dock)
 end

 it 'docks something' do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
 end

 it 'returns docked bike' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.bike).to eq bike
 end

 it 'expects docking_station to have a bike' do
   docking_station = DockingStation.new
 expect(docking_station).to respond_to(:dock).with(1).argument
 end

 it 'returns an error when no bikes are available' do
   expect { !DockingStation.new.release_bike.is_an_instance_of Bike }.to raise_error("No bikes available.")
 end

 it 'returns error when no space to dock' do
   bike = Bike.new
   docking_station = DockingStation.new
   docking_station.dock(bike)
   expect {docking_station.dock(bike)}.to raise_error ("No space at this docking station.")
 end
 end

describe '#release_bike' do
  it 'releases a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
   expect(docking_station.release_bike).to eq(bike)
 end
end
