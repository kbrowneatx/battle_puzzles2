class AddGuestToUser < ActiveRecord::Migration
  def up
    add_column :users, :guest, :boolean, 
                                    :null => false, 
                                    :default => false 

  end

  def down
    remove_column :users, :guest
  end

end
