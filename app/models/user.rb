class User < ActiveRecord::Base
  validates :full_name,:nickname,:email, presence: true

  def self.accessible_attributes
    ["full_name","nickname","email"]
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      user = find_by_id(row["id"]) || new
      user.attributes = row.to_hash.slice(*accessible_attributes)
      user.save!
    end
  end
end
