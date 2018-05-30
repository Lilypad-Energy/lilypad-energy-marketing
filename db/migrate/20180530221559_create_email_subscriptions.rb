class CreateEmailSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :email_subscriptions do |t|
      t.string :email
      t.string :first_name
      t.timestamps
    end
  end
end
