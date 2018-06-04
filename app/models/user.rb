class User < ActiveRecord::Base
	# All the users that I am following
	has_many :follow_following, foreign_key: :follower_id, class_name: 'Follow'
	has_many :following, through: :follow_following, source: :followee

	# All the users that are following me
	has_many :follow_followers, foreign_key: :followee_id, class_name: 'Follow'
	has_many :followers, through: :follow_followers, source: :follower

	# This is the user model
end

