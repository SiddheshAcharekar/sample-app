# frozen_string_literal: true

require "rails_helper"

describe ApplicationHelper do
  describe "#full_title" do
    let(:base_title) { "Ruby on Rails Tutorial Sample App" }
    context "if page_title is empty" do
      let(:page_title_empty) { "" }
      it "returns base_title" do
        # binding.pry
        expect(full_title(page_title_empty)).to eq(base_title)
      end
    end

    context "if page_title is not empty" do
      let(:page_title) { "About" }
      it "appends page_title with base_title" do
        # binding.pry
        expect(full_title(page_title)).to eq(page_title + " | " + base_title)
      end
    end
  end
end
