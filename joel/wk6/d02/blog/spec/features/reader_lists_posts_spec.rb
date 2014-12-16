require 'rails_helper'

feature "ReaderListsPosts", :type => :feature do
  scenario "there is no blog posts" do
    visit '/' 
    expect(page).to have_content("No blog posts found")
  end

  scenario "one blog post" do
    Post.create(
      title: "Hello World",
      author: "Jane Birkin",
      content: "Lorem ipsum dolar sit amet"
      )
    visit '/'
    expect(page).to have_content("Hello World")
    expect(page).to have_content("Jane Birkin")
    expect(page).to have_content("Lorem ipsum dolar sit amet")
  end
end
