require "application_system_test_case"

class ChequeosTest < ApplicationSystemTestCase
  setup do
    @chequeo = chequeos(:one)
  end

  test "visiting the index" do
    visit chequeos_url
    assert_selector "h1", text: "Chequeos"
  end

  test "should create chequeo" do
    visit chequeos_url
    click_on "New chequeo"

    fill_in "Descripcion", with: @chequeo.descripcion
    fill_in "Fecha", with: @chequeo.fecha
    click_on "Create Chequeo"

    assert_text "Chequeo was successfully created"
    click_on "Back"
  end

  test "should update Chequeo" do
    visit chequeo_url(@chequeo)
    click_on "Edit this chequeo", match: :first

    fill_in "Descripcion", with: @chequeo.descripcion
    fill_in "Fecha", with: @chequeo.fecha
    click_on "Update Chequeo"

    assert_text "Chequeo was successfully updated"
    click_on "Back"
  end

  test "should destroy Chequeo" do
    visit chequeo_url(@chequeo)
    click_on "Destroy this chequeo", match: :first

    assert_text "Chequeo was successfully destroyed"
  end
end
