require 'rubygems'
require 'bundler/setup'
require 'aws-sdk'
require 'csv'

users = []
CSV.foreach("user_password_group.csv") do |row|
  users.push({user_name: row[0], password: row[1], group_name: row[2]})
end

users.each do |user| 
  iam_user = Aws::IAM::User.new(user[:user_name])
  iam_user.create
  iam_user.create_login_profile({password: user[:password]})
  iam_user.add_group({group_name: user[:group_name]})
end