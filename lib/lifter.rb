class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_lift_total
    lift_totals = self.all.map do | lifter |
      lifter.lift_total
    end
    average = lift_totals.sum.to_f / lift_totals.length.to_f
  end

  def gym_sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

  def memberships
    Membership.all.select do | membership |
      membership.lifter == self
    end
  end

  def gyms 
    self.memberships.map do | membership |
      membership.gym
    end
  end

  def total_cost
    prices = self.memberships.map do | membership |
      membership.cost
    end
    prices.sum
  end

end
