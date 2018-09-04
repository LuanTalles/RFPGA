require "application_system_test_case"

class FpgasTest < ApplicationSystemTestCase
  setup do
    @fpga = fpgas(:one)
  end

  test "visiting the index" do
    visit fpgas_url
    assert_selector "h1", text: "Fpgas"
  end

  test "creating a Fpga" do
    visit fpgas_url
    click_on "New Fpga"

    fill_in "Brief", with: @fpga.brief
    fill_in "Family", with: @fpga.family
    fill_in "Model", with: @fpga.model
    fill_in "Name", with: @fpga.name
    click_on "Create Fpga"

    assert_text "Fpga was successfully created"
    click_on "Back"
  end

  test "updating a Fpga" do
    visit fpgas_url
    click_on "Edit", match: :first

    fill_in "Brief", with: @fpga.brief
    fill_in "Family", with: @fpga.family
    fill_in "Model", with: @fpga.model
    fill_in "Name", with: @fpga.name
    click_on "Update Fpga"

    assert_text "Fpga was successfully updated"
    click_on "Back"
  end

  test "destroying a Fpga" do
    visit fpgas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fpga was successfully destroyed"
  end
end
