class Injury < ActiveRecord::Base

	INJURY_TYPE = ['Open Wound/Bruise', 'Sprain/Strain', 'Dislocation', 'Nerve Damage', 'Fracture', 'Amputation', 'Paralysis', 'Death']
	REGION_TYPE = ['Skull', 'Face', 'Head', 'Neck', 'Back', 'Chest', 'Thorax', 'Shoulder', 'Arm', 'Arm - wrist', 'Arm - elbow', 'Hand', 'Fingers', 'Pelvis/Hip', 'Femur', 'Knee', 'Lower Leg', 'Ankle', 'Foot', 'Toes', 'Internal']

	has_one :treatment, dependent: :destroy
	belongs_to :medical
	belongs_to :firm
end
