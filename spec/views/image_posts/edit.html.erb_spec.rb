require 'rails_helper'

RSpec.describe "image_posts/edit", type: :view do
  before(:each) do
    @image_post = assign(:image_post, ImagePost.create!(
      title: "MyString",
      description: "MyString",
      published: false,
      image: nil
    ))
  end

  it "renders the edit image_post form" do
    render

    assert_select "form[action=?][method=?]", image_post_path(@image_post), "post" do

      assert_select "input[name=?]", "image_post[title]"

      assert_select "input[name=?]", "image_post[description]"

      assert_select "input[name=?]", "image_post[published]"

      assert_select "input[name=?]", "image_post[image]"
    end
  end
end
