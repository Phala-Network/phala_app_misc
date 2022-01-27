# frozen_string_literal: true

class State < ApplicationRecord
  scope :visible, -> { where(visible: true) }
end
