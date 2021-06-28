require 'rails_helper'

RSpec.describe "mushrooms/index", type: :view do
  before(:each) do
    assign(:mushrooms, [
      Mushroom.create!(
        name: "Name",
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
      ),
      Mushroom.create!(
        name: "Name",
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
      )
    ])
  end

  it "renders a list of mushrooms" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
