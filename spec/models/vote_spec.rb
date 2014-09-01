require 'rails_helper'

describe Vote do 
  describe "validations" do 
    before do
      @vote = Vote.new(value: 2)
    end
    describe "value validation" do 
      it "only allows -1 or 1 as values" do 
        # your expectations here
        expect( @vote.valid?).to eq(false)
      end
    end
  end
end