class Fpga < ApplicationRecord
  has_one_attached :pin_assigments
  has_one_attached :bitstream

  has_one :seat
end
