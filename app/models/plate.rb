class Plate < ApplicationRecord
  has_many :wells, dependent: :destroy
  accepts_nested_attributes_for :wells

end


module PlateHelper
  @@rows = ('A'..'H')
  @@columns = (1..12)

  def self.columns
    @@columns
  end

  def self.rows
    @@rows
  end
end