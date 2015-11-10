class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, presence: { message:"フリガナを入力してください"}
  validates :content, presence: { message:"内容を入力してください"}
end
