require 'rails_helper'

RSpec.describe "band/practices/index", type: :view do
  before(:each) do
    assign(:band_practices, [
      Band::Practice.create!(),
      Band::Practice.create!()
    ])
  end

  it "renders a list of band/practices" do
    render
  end
end
