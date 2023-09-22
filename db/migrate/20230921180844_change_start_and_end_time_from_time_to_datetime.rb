class ChangeStartAndEndTimeFromTimeToDatetime < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :start_time
    remove_column :events, :end_time
    remove_column :events, :date
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
  end
end
