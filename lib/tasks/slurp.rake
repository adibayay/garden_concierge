namespace :slurp do
  desc "TODO"
  task transactions: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Garden_Concierge_Master_Plants.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Plant.new
      t.name = row["name"]
      t.plant_type = row["plant_type"]
      t.sun_exposure = row["sun_exposure"]
      t.difficulty = row["difficulty"]
      t.description = row["description"]
      t.spacing = row["spacing"]
      t.video_url = row["video_url"]
      t.image_url = row["image_url"]
      t.watering = row["watering"]
      t.growing = row["growing"]
      t.harvest = row["harvest"]
      t.feeding = row["feeding"]
      t.other_care = row["other_care"]
      t.diseases = row["diseases"]
      t.pests = row["pests"]
      
      t.save
      puts "#{t.name} saved"
    end

    puts "There are now #{Plant.count} rows in the transactions table"
  end

end
