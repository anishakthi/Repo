require 'test_helper'

class InventoryControllerTest < ActionDispatch::IntegrationTest
  test "should get load" do
    get inventory_load_url
    assert_response :success
  end

end
