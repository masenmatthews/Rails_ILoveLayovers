class Post < ActiveRecord::Base
  belongs_to :account

  validates :title, :body, :presence => true
end
