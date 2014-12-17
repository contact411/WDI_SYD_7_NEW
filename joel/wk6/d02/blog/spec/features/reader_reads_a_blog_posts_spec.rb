require 'rails_helper'

feature "ReaderReadsABlogPosts", :type => :feature do
  scenario "does exist without comments" do
    Post.create(
      title: "Hello World",
      author: "Jane Birkin",
      content: "Lorem ipsum dolar sit amet"
      )
    visit '/'
    expect(page).to have_content("Hello World")
    expect(page).to have_content("Jane Birkin")
    expect(page).to have_content("Lorem ipsum dolar sit amet")
    expect(page).not_to have_content("No blog posts found")
  end

  scenario "does exist with comments" do
    post = Post.create(
      title: "Hello World",
      author: "Jane Birkin",
      content: "Lorem ipsum dolar sit amet"
    )
    post.comments.create(
      author: "Bill Johnson",
      content: "You write like a goddess."
    )
    visit '/'
    expect(page).to have_content("Hello World")
    expect(page).to have_content("Jane Birkin")
    expect(page).to have_content("Lorem ipsum dolar sit amet")
    expect(page).to have_content("Bill Johnson")
    expect(page).to have_content("You write like a goddess.")
    expect(page).not_to have_content("No blog posts found")

  end
end
