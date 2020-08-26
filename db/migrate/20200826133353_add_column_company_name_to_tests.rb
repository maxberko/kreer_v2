class AddColumnCompanyNameToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :company_name, :string
  end
end
