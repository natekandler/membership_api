FactoryBot.define do
    factory :contact do
      first_name { Faker::Name.first_name  }
      last_name  { Faker::Name.last_name }
      work_email { Faker::Internet.email }
      title { Faker::Job.position }
      personal_email { Faker::Internet.email }
      mobile_phone { Faker::PhoneNumber.cell_phone }
      other_phone { Faker::PhoneNumber.cell_phone }
      salesforce_id { Faker::Alphanumeric.alphanumeric(number: 18) }
      linkedin { Faker::Twitter.screen_name }
      twitter { Faker::Twitter.screen_name }
      instagram { Faker::Twitter.screen_name }
      youtube { Faker::Twitter.screen_name }
      country { Faker::Address.country }
      referrer { Faker::Name.name }
      mailing_address { Faker::Address.full_address }
      gender { Faker::Gender.binary_type }
      race { '' }
      last_meeting { '' }
      last_person_to_meet { '' }
      last_email { '' }
      last_person_to_email { Faker::Name.name }
      unicorn { Faker::Boolean.boolean }
      ceo { Faker::Boolean.boolean }
    end
  end 
