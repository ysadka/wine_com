class Subscription < ActiveRecord::Base
  has_many :subscriptions_users
end
