require 'rails_helper'

RSpec.describe "mushrooms/new", type: :view do
  before(:each) do
    assign(:mushroom, Mushroom.new(
      name: "MyString",
      edible: false,
      cap_shape: nil,
      cap_surface: nil,
      cap_color: nil,
      bruises: false,
      odor: nil,
      gill_attachment: nil,
      gill_spacing: nil,
      gill_size: nil,
      gill_color: nil,
      stalk_shape: nil,
      stalk_root: nil,
      stalk_surface_above_ring: nil,
      stalk_surface_below_ring: nil,
      stalk_color_above_ring: nil,
      stalk_color_below_ring: nil,
      veil_type: nil,
      veil_color: nil,
      ring_number: nil,
      ring_type: nil,
      spore_print_color: nil,
      population: nil,
      habitat: nil
    ))
  end

  it "renders new mushroom form" do
    render

    assert_select "form[action=?][method=?]", mushrooms_path, "post" do

      assert_select "input[name=?]", "mushroom[name]"

      assert_select "input[name=?]", "mushroom[edible]"

      assert_select "input[name=?]", "mushroom[cap_shape_id]"

      assert_select "input[name=?]", "mushroom[cap_surface_id]"

      assert_select "input[name=?]", "mushroom[cap_color_id]"

      assert_select "input[name=?]", "mushroom[bruises]"

      assert_select "input[name=?]", "mushroom[odor_id]"

      assert_select "input[name=?]", "mushroom[gill_attachment_id]"

      assert_select "input[name=?]", "mushroom[gill_spacing_id]"

      assert_select "input[name=?]", "mushroom[gill_size_id]"

      assert_select "input[name=?]", "mushroom[gill_color_id]"

      assert_select "input[name=?]", "mushroom[stalk_shape_id]"

      assert_select "input[name=?]", "mushroom[stalk_root_id]"

      assert_select "input[name=?]", "mushroom[stalk_surface_above_ring_id]"

      assert_select "input[name=?]", "mushroom[stalk_surface_below_ring_id]"

      assert_select "input[name=?]", "mushroom[stalk_color_above_ring_id]"

      assert_select "input[name=?]", "mushroom[stalk_color_below_ring_id]"

      assert_select "input[name=?]", "mushroom[veil_type_id]"

      assert_select "input[name=?]", "mushroom[veil_color_id]"

      assert_select "input[name=?]", "mushroom[ring_number_id]"

      assert_select "input[name=?]", "mushroom[ring_type_id]"

      assert_select "input[name=?]", "mushroom[spore_print_color_id]"

      assert_select "input[name=?]", "mushroom[population_id]"

      assert_select "input[name=?]", "mushroom[habitat_id]"
    end
  end
end
