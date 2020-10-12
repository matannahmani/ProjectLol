class Player < ApplicationRecord
  has_many :player_stat
  has_many :stat, :through => :player_stat
  has_one_attached :photo
  before_update :updaterate
  after_initialize :initrate

  def initrate
    self.rate ||= 0
    self.totalrated ||= 0
    self.meanrate ||= 0
  end

  def status
    return "Demote" if self.rate < 2.0
    return "No Change" if self.rate > 2.0 && self.rate < 4.0
    return "Promote" if self.rate > 4.0
  end

  def updaterate
    self.totalrated += 1
    self.rate = meanrate / totalrated
  end
end
