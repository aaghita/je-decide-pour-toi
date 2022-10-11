FactoryBot.define do
  factory :mission do
    content { 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.' }
    address { '11 rue Georges Bizet, 95400 Villiers le bel' }
    link { 'www.google.fr' }
    video { 'www.google.fr' }
    done { false }

    factory :mission_empty_content do
      content { '' }
    end

    factory :mission_done do
      done { true }
    end

    factory :mission_wrong_link do
      link { 'abcd' }
    end

    factory :mission_wrong_video do
      video { 'abcd' }
    end
  end
end
