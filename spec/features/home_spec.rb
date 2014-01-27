require 'spec_helper'

describe "visiting the homepage" do
  it "shows an apply link" do
    path = root_path
    visit path

    click_on "Apply"
    expect(page).to have_css "form"
  end
end
