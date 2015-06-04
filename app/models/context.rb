class Context < ActiveRecord::Base
  include AuthenticationToken

  validates_presence_of :name
  validates_uniqueness_of :token

  has_many :responses, :dependent => :destroy
end
