class Context < ActiveRecord::Base
  include AuthenticationToken

  has_many :responses, :dependent => :destroy

  validates_uniqueness_of :token

end
