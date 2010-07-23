require 'test_helper'

class PageTest < Test::Unit::TestCase
  context "Page" do
    should belong_to(:author)

    should validate_presence_of(:title)
    should validate_uniqueness_of(:slug)

    should "have the correct slug" do
      page = Factory(:page, :title => "This is a TiTlE")
      assert_equal "this-is-a-title", page.slug  
    end
  end
end
