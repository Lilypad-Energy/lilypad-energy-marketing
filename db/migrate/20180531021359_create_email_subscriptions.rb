class CreateEmailSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :email_subscriptions do |t|
      t.string :email
      t.boolean :opt_in, :default => true
      t.timestamps
    end
  end
end
