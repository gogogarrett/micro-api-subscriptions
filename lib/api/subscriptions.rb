require 'grape'
require './representers/subscription_representer'
require './representers/subscriptions_representer'
require './models/subscription'

module Api
  class Subscriptions < Grape::API
    format :json
    formatter :json, Grape::Formatter::Roar

    resources :subscriptions do
      get do
        present Subscription.all, with: SubscriptionsRepresenter
      end

      get ":id" do
        present Subscription.find(params[:id]), with: SubscriptionRepresenter
      end
    end

  end
end
