require "application_system_test_case"

class VacunasTest < ApplicationSystemTestCase
  setup do
    @vacuna = vacunas(:one)
  end

  test "visiting the index" do
    visit vacunas_url
    assert_selector "h1", text: "Vacunas"
  end

  test "should create vacuna" do
    visit vacunas_url
    click_on "New vacuna"

    fill_in "Fecha", with: @vacuna.fecha
    fill_in "Nombre", with: @vacuna.nombre
    click_on "Create Vacuna"

    assert_text "Vacuna was successfully created"
    click_on "Back"
  end

  test "should update Vacuna" do
    visit vacuna_url(@vacuna)
    click_on "Edit this vacuna", match: :first

    fill_in "Fecha", with: @vacuna.fecha
    fill_in "Nombre", with: @vacuna.nombre
    click_on "Update Vacuna"

    assert_text "Vacuna was successfully updated"
    click_on "Back"
  end

  test "should destroy Vacuna" do
    visit vacuna_url(@vacuna)
    click_on "Destroy this vacuna", match: :first

    assert_text "Vacuna was successfully destroyed"
  end
end
