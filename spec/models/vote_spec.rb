describe Vote do
  describe "validations" do
    before do
       @vote = Vote.create(validation: 'vote value')
       3.times { @vote.create(value: 1) }
       2.times { @vote.create(value: -1) }
       2.times { @vote.create(value: -2)
       2.times { @vote.create(value: 3) }
     end
    describe "value validation" do
         it "only allows -1 or 1 as values" do
            expect( @vote.value ).to eq(1) or expect ( @vote.value).to eq(-1) 
         end
          it "it prohibits other values" do
            expect( @vote.value ).to_not be_valid
         end
      end
    end
  #  can it be done this way too 
   #    describe "value validation" do
   #      it "only allows 1 as value" do
   #         expect( @vote.value ).to eq(1)
    #     end
    #     it "only allows -1 as value" do
    #       expect ( @vote.value).to eq(-1)
    #     end
   #  it "it prohibits other values" do
    #        expect( @vote.value ).to_not be_valid
    #     end
end