require 'rails_helper'

RSpec.describe "mushrooms/show", type: :view do
  before(:each) do
    @mushroom = assign(:mushroom, Mushroom.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
