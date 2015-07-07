describe Vote do
  describe "validations" do
       let(:vote) {Vote.new}
        it "only allows 1 as value" do
           @vote.value = 1
           expect (@vote.value).to eq(1)
           expect( @vote.valid?).to be_true 
        end
        it "only allows -1 as value" do
           @vote.value = -1
           expect (@vote.value).to eq(-1)
           expect ( @vote.valid?).to be_true
        end
        it "it prohibits other values" do
           @vote.value = 0 
           expect( @vote.valid?).to  be_false
           @vote.value = 2
           expect( @vote.valid?).to  be_false
        end
  end
end  
    