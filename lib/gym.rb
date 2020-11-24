class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do | membership |
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do | membership |
      membership.lifter
    end
  end

  def lifter_names
    self.lifters.map do | lifter |
      lifter.name
    end
  end

  def combined_lift_total
    lift_totals = self.lifters.map do | lifter |
      lifter.lift_total
    end
    lift_totals.sum
  end

end
