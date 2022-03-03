require 'rails_helper'

RSpec.describe ContactGroup, type: :model do
  let(:contact)  { FactoryBot.create(:contact) }
  let(:group) { FactoryBot.create(:group)}

  it "should be nominated" do
    nominated = ContactGroup.create({contact: contact, group: group, status: :nominated})

    expect(group.contacts).to eq [contact]
    expect(contact.groups).to eq [group]
    expect(nominated.status).to eq "nominated"
  end

  it "should be approved" do
    approved = ContactGroup.create({contact: contact, group: group, status: :approved})

    expect(group.contacts).to eq [contact]
    expect(contact.groups).to eq [group]
    expect(approved.status).to eq "approved"
  end
end
