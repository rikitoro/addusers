require 'rubygems'
require 'bundler/setup'
require 'aws-sdk'
require 'csv'

class User < Struct.new(:name, :password, :group)

  def create_iam_account
    iam_account = Aws::IAM::User.new(name)
    iam_account.create
    iam_account.create_login_profile({password: password})
    iam_account.add_group({group_name: group})
  end
end

%%%

csv_filename = ARGV[0]

users = []
CSV.foreach(csv_filename) do |name, password, group|
  users.push(User.new(name, password, group))
end

Aws.config[:region] = 'ap-northeast-1'
users.map(&:create_iam_account)
