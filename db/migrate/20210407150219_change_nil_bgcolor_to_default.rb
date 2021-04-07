class ChangeNilBgcolorToDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:users, :bg_color, true, '#00b6ad')
  end
end
