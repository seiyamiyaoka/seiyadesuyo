class Contact < ActiveRecord::Base
  #validates :name,:name2,:addres,:content presence: true
  
  validates :name, presence: { message:"名前を入力してください"}
  validates :name2, presence: { message:"フリガナを入力してください"}
  validates :addres, presence: { inclusion:'@',message:"メールアドレスを入力してください"}
  validates :content, presence: { message:"内容を入力してください"}
end
