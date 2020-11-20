class ChangeReturnDateFormIssues < ActiveRecord::Migration[6.0]
  def change
    remove_column :issues, :return_date_date, :string
    add_column :issues, :return_date, :date
  end
end
