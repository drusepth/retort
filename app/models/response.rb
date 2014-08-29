class Response < ActiveRecord::Base
  belongs_to :context

  validates_presence_of :context_id, :trigger, :response
  validates_uniqueness_of :response, :scope => [:context_id, :trigger]
end
