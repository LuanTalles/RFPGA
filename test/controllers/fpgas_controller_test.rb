require 'test_helper'

class FpgasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fpga = fpgas(:one)
  end

  test "should get index" do
    get fpgas_url
    assert_response :success
  end

  test "should get new" do
    get new_fpga_url
    assert_response :success
  end

  test "should create fpga" do
    assert_difference('Fpga.count') do
      post fpgas_url, params: { fpga: { brief: @fpga.brief, family: @fpga.family, model: @fpga.model, name: @fpga.name } }
    end

    assert_redirected_to fpga_url(Fpga.last)
  end

  test "should show fpga" do
    get fpga_url(@fpga)
    assert_response :success
  end

  test "should get edit" do
    get edit_fpga_url(@fpga)
    assert_response :success
  end

  test "should update fpga" do
    patch fpga_url(@fpga), params: { fpga: { brief: @fpga.brief, family: @fpga.family, model: @fpga.model, name: @fpga.name } }
    assert_redirected_to fpga_url(@fpga)
  end

  test "should destroy fpga" do
    assert_difference('Fpga.count', -1) do
      delete fpga_url(@fpga)
    end

    assert_redirected_to fpgas_url
  end
end
