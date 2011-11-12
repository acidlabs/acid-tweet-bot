class CreateJobOffers < ActiveRecord::Migration
  def self.up
    create_table :job_offers do |t|
      t.column :description, :string, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :stored_files
  end
end