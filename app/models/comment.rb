class Comment < ActiveRecord::Base
  belongs_to :author, :class_name => "User", :foreign_key => :user_id
  belongs_to :parent_post, :class_name => "Post", :foreign_key => :post_id

  #validates :parent_post , :presence => true, unless Proc.new {render :new}
end
