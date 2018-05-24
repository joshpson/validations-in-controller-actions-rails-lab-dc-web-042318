class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: :allowed_categories}
  validates :content, length: {minimum: 100}
end

def allowed_categories
  ["Fiction", "Non-Fiction"]
end
