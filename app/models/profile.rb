class Profile < ActiveRecord::Base
	attr_accessible :name, :lastname, :age, :latitude, :longitude
	validates :name, presence:{ message: "Name can't be blank" }
	validates :lastname, presence:{ message: "Lastname can't be blank" }
	validates :age, presence:{ message: "Age can't be blank" }
	validates :latitude, presence:{ message: "Latitude can't be blank" }
	validates :longitude, presence:{ message: "Longitude can't be blank" }

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			profile = find_or_create_by(name:row['name'],lastname:row['lastname'])
			profile.attributes = row.to_hash.slice(*accessible_attributes)
			profile.save!
		end
	end

	def self.open_spreadsheet(file)
  		case File.extname(file.original_filename)
  			when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
  			when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  			when ".xlsx" then Roo::Excelx.new(file.path, packed: nil, file_warning: :ignore)
 			else raise "Unknown file type: #{file.original_filename}"
 		end
	end
end
