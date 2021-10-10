class Body < ApplicationRecord
  validates :weight, presence: true

  def data
    pluck(:weight)
    # datasets = [{ label: "Weight", label: pluck(:created_at)}]
  end
end
