class ChangeNames < ActiveRecord::Migration
  def change
    rename_column :profiles, :lastName, :lastname
  end
end
