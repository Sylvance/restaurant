# frozen_string_literal: true

RSpec.describe Restaurant do
  let(:params) { { id: 2, menu_choices: [] } }

  it "has a version number" do
    expect(Restaurant::VERSION).not_to be nil
  end

  context "when an order is given" do
    it "creates an order" do
      expect(Restaurant.create_order(params: params).success?).to eq(true)
    end
  end
end
