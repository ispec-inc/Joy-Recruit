class Init < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :website_url

      t.timestamps
    end

    create_table :users do |t|
      t.integer :company_id
      t.string :name
      t.integer :age

      t.timestamps
    end

    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.boolean :is_draft

      t.timestamps
    end
  end
end
