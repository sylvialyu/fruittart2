class AddCountdown < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :countdown, :string
  end
end
