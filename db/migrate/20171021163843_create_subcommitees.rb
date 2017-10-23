class CreateSubcommitees < ActiveRecord::Migration[5.1]
  def change
    create_table :subcommitees do |t|

      t.timestamps
    end
  end
end
