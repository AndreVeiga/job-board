class AddPremiunToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :premium, :boolean
  end
end
