class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |attribute|
      p attribute
      puts "*****************************"
      category = Category.find_or_create_by(attribute)
      self.categories << category
    end
  end

  #users who have commented on post
  def users_w_comments

    users = self.comments.map do |comment|
      user = User.find_by(id: comment.user_id)
    end
    users.uniq
  end

end
