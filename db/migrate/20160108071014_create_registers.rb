class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :contactno
      t.string :collegename
      t.string :coladdress
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :fphydirname
      t.string :lphydirname
      t.integer :pdcontact
      t.string :sports
      t.string :menwomen
      t.string :singdouble
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
