class AddGamesAllowedToUser < ActiveRecord::Migration
  def up
    add_column :users, :games_allowed, :integer, 
                                    :null => false, 
                                    :default => 2 
  end

  def down
    remove_column :users, :games_allowed
  end

end
