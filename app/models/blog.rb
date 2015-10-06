class Blog < ActiveRecord::Base
  belongs_to :user
  
  validates :title, presence: { message:"フリガナを入力してください"}
  validates :content, presence: { message:"内容を入力してください"}
end
