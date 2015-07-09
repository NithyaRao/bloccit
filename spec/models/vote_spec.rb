require 'rails_helper'

describe Vote do
  include TestFactories
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
  describe 'after_save' do
     it "calls `Post#update_rank` after save" do
       post = associated_post
       vote = Vote.new(value: 1, post: post)
       expect(post).to receive(:update_rank)
       vote.save
     end
   end
end  

