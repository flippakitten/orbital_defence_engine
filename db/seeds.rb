[
  { name: "Satellite" },
  { name: "User" },
].each do |detection_type_attributes|
  unless OrbDef::DetectionType.exists?(name: detection_type_attributes[:name])
    OrbDef::DetectionType.create!(detection_type_attributes)
  end
end