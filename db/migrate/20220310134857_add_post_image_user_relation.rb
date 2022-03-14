class AddPostImageUserRelation < ActiveRecord::Migration[7.0]
  def change
    add_reference :image_posts, :user, foreign_key: true
  end
end
