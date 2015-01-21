class User < ActiveRecord::Base
  has_one :apikey
end
