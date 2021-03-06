require 'grape'
require 'roar'
require 'representable/json/collection'
require 'grape/roar'

module SubscriptionsRepresenter
  include Grape::Roar::Representer
  include Representable::JSON::Collection

  items extend: SubscriptionRepresenter
end
