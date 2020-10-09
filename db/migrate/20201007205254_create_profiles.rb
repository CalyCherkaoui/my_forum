class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :author, null: false, foreign_key: true
      t.string :pronouns
      t.string :title
      t.string :speciality
      t.text :bio
      t.string :website_url
      t.string :blog
      t.string :email
      t.string :facebook
      t.string :twitch
      t.string :twitter
      t.string :instagram
      t.string :pinterest
      t.string :linkedin
      t.string :pateron

      t.timestamps
    end
  end
end
