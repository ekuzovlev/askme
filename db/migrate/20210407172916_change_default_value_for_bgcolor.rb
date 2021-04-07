class ChangeDefaultValueForBgcolor < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :bg_color, :string, default: '#00b6ad'
  end
end
