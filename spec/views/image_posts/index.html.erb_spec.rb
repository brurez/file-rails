require 'rails_helper'

RSpec.describe "image_posts/index", type: :view do
  before(:each) do
    assign(:image_posts, [
      ImagePost.create!(
        title: "Title",
        description: "Description",
        published: false,
        image: nil
      ),
      ImagePost.create!(
        title: "Title",
        description: "Description",
        published: false,
        image: nil
      )
    ])
  end

  it "renders a list of image_posts" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
