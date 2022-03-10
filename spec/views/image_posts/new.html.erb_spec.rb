require 'rails_helper'

RSpec.describe "image_posts/new", type: :view do
  before(:each) do
    assign(:image_post, ImagePost.new(
      title: "MyString",
      description: "MyString",
      published: false,
      image: nil
    ))
  end

  it "renders new image_post form" do
    render

    assert_select "form[action=?][method=?]", image_posts_path, "post" do

      assert_select "input[name=?]", "image_post[title]"

      assert_select "input[name=?]", "image_post[description]"

      assert_select "input[name=?]", "image_post[published]"

      assert_select "input[name=?]", "image_post[image]"
    end
  end
end
