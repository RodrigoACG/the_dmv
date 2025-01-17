require 'spec_helper'

RSpec.describe Registrant do 
  before (:each) do 
    @registrant_1 = Registrant.new('Bruce', 18, true )
    @registrant_2 = Registrant.new('Penny', 15 )
    @registrant_3 = Registrant.new('Tucker', 15 )
  end

  describe '#initialize' do
   it 'exists' do
      expect(@registrant_1).to be_an_instance_of(Registrant)
    end
  end

  describe '#instance methods' do
    it 'has a name' do
      expect(@registrant_1.name).to eq("Bruce")
      expect(@registrant_2.name).to eq("Penny")
    end
  end

  describe '#instance methods' do
    it 'has an age' do
      expect(@registrant_1.age).to eq(18)
      expect(@registrant_2.age).to eq(15)
    end
  end

  describe '#permit?' do
    it 'has a permit?' do
      expect(@registrant_1.permit?).to eq(true)
      expect(@registrant_2.permit?).to eq(false)
    end
  end
  
  describe '#earn permit' do
    it 'earns a permit' do
      expect(@registrant_2.permit?).to eq(false)
      @registrant_2.earn_permit
      expect(@registrant_2.permit?).to eq(true)
    end
  end
end