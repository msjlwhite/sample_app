require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
# Listing 5.32: A test for the links on the layout. green
# test/integration/site_layout_test.rb
#  require 'test_helper'

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("Contact")
  end
  
  # test "the truth" do
  #   assert true
  # end
end
