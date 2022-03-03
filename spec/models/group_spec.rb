require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:contact)  { FactoryBot.create(:contact) }
  let(:group) { FactoryBot.create(:group)}

  it "should have many contacts" do
    group.contacts << contact

    expect(group.contacts).to eq [contact]
    expect(ContactGroup.last.group).to eq group
  end
end
