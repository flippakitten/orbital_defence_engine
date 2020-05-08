namespace :orb_def do
  desc "Seed the database"
  task :seed_db => [ :environment ] do
    puts "Creating Records"
    [
      { name: "Satellite" },
      { name: "User" },
    ].each do |detection_type_attributes|
      unless OrbDef::DetectionType.exists?(name: detection_type_attributes[:name])
        puts "Creating #{detection_type_attributes[:name]}"
        OrbDef::DetectionType.create!(detection_type_attributes)
      end
    end
    puts "Done Creating Records"
  end
end
