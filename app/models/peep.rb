require 'data_mapper'
require 'dm-postgres-adapter'

class Peep

include DataMapper::Resource

property :id, Serial
property :name, String
property :username, String
property :message, String
property :time, String

DataMapper.setup(:default, "postgres://localhost/chitter_peeps_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
end
