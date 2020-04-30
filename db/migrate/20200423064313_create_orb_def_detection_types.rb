class CreateOrbDefDetectionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :orb_def_detection_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
