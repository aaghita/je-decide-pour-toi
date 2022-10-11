require 'rails_helper'

RSpec.describe Mission, type: :model do
  context 'create mission' do
    it 'should persist a mission' do
      mission = build(:mission)
      mission.humeur = create(:humeur)
      mission.save

      expect(Mission.count).to eq(1)
    end
  end

  context 'validation' do
    it 'should validate the assignement to an humeur' do
      mission = build(:mission)
      mission.validate

      expect(mission.errors.messages).to include(:humeur)
    end

    it 'should validate the lenght of the content' do
      mission = build(:mission_empty_content)
      mission.humeur = build(:humeur)
      mission.validate

      expect(mission.errors.messages).to include(:content)
    end

    it 'should validate format of the link' do
      mission = build(:mission_wrong_link)
      mission.humeur = build(:humeur)
      mission.validate

      expect(mission.errors.messages).to include(:link)
    end

    it 'should validate format of the video' do
      mission = build(:mission_wrong_video)
      mission.humeur = build(:humeur)
      mission.validate

      expect(mission.errors.messages).to include(:video)
    end
  end
end
