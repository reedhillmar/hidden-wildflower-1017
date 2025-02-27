class Experiment < ApplicationRecord
  has_many :scientist_experiments
  has_many :experiments, through: :scientist_experiments

  def self.long_experiments
    where("num_months > 6").order(num_months: :desc)
  end
end