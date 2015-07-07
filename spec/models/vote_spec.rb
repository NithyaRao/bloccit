require 'rails_helper'

describe Vote do
  describe "validations" do
       let(:vote) {Vote.new}
        it "only allows 1 as value" do
           vote.value = 1
            expect( vote.valid?).to eq(true)
        end
        it "only allows -1 as value" do
           vote.value = -1
           expect( vote.valid?).to eq(true)
        end
        it "it prohibits other values" do
           vote.value = 0 
           expect( vote.valid?).to  eq(false)
           vote.value = 2
           expect( vote.valid?).to  eq(false)
        end
  end
end  
    