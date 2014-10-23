require 'grape'
require 'roar'
require 'roar/representer/json'
require 'grape/roar'

module SubscriptionRepresenter
  include Roar::Representer::JSON
  include Grape::Roar::Representer

  property :id
  property :name
  property :active

  def active
    !!super
  end
end
