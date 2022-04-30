class AddUserIdToGrandPrix < ActiveRecord::Migration[6.1]
  def change
    add_column :grandprixes, :user_id, :integer
  end
end
