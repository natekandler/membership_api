require 'rails_helper'

RSpec.describe Contact, type: :model do
  let(:contact)  { FactoryBot.create(:contact) }
  let(:group) { FactoryBot.create(:group)}

  it "should have many groups" do
    contact.groups << group

    expect(contact.groups).to eq [group]
    expect(ContactGroup.last.contact).to eq contact
  end
end
