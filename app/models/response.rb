class Response < ActiveRecord::Base
  validates_presence_of :context_id, :trigger, :response
  validates_uniqueness_of :response, :scope => [:context_id, :trigger]

  belongs_to :context
end
