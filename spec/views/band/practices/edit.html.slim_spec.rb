require 'rails_helper'

RSpec.describe "band/practices/edit", type: :view do
  before(:each) do
    @band_practice = assign(:band_practice, Band::Practice.create!())
  end

  it "renders the edit band_practice form" do
    render

    assert_select "form[action=?][method=?]", band_practice_path(@band_practice), "post" do
    end
  end
end
