class User < ActiveRecord::Base
  has_and_belongs_to_many :followers,
  class_name: "User",
  join_table: :following_users,
  foreign_key: :user_id,
  association_foreign_key: :follower_user_id
  has_many :comments
end
