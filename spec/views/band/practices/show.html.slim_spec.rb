require 'rails_helper'

RSpec.describe "band/practices/show", type: :view do
  before(:each) do
    @band_practice = assign(:band_practice, Band::Practice.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
