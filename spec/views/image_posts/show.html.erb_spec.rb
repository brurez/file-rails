require 'rails_helper'

RSpec.describe "image_posts/show", type: :view do
  before(:each) do
    @image_post = assign(:image_post, ImagePost.create!(
      title: "Title",
      description: "Description",
      published: false,
      image: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
