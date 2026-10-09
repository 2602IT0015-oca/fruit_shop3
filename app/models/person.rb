class Person < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    %w[name job]
  end
end