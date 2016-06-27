require 'rails_helper'

RSpec.feature "static" do
  it "says hello world" do
    visit root_path

    expect(page).to have_content("Hello World")
  end
end
