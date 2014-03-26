require "spec_helper"

describe "RSpec, Testing Sauce Connect", :sauce => true do
  it "Should have 'This is a test' " do
    visit "http://127.0.0.1:3000/static"
    page.should have_content "This is a test"
  end

  it "Should also have the title 'this is a test'" do
    visit "http://127.0.0.1:3000/static"
    page.should have_content "This is a test"
  end
end
