class AddIntroductionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :introdction, :text
  end
end
