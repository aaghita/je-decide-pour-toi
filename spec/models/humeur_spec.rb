require 'rails_helper'

RSpec.describe Humeur, type: :model do
  context 'validation'
  describe do
    it 'should persist an humeur' do
      build(:humeur)

      expect(Humeur.count).to eq(1)
    end

    it 'should validate presence of name' do
      humeur = build(:humeur_blank)
      humeur.validate

      expect(humeur.errors.messages).to include(:name)
      expect(humeur.valid?).to be false
    end
  end
end
