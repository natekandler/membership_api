class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :title
      t.string :work_email
      t.string :personal_email
      t.string :mobile_phone
      t.string :other_phone
      t.string :salesforce_id
      t.string :linkedin
      t.string :twitter
      t.string :instagram
      t.string :youtube
      t.string :country
      t.string :referrer
      t.string :mailing_address
      t.string :gender
      t.string :race
      t.string :last_meeting
      t.string :last_person_to_meet
      t.string :last_email
      t.string :last_person_to_email
      t.integer :country_code
      t.boolean :unicorn
      t.boolean :founder
      t.boolean :ceo

      t.timestamps
    end
  end
end
