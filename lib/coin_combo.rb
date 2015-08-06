class Numeric
  def coins
    total = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    until total < 0.25
      total -= 0.25
      quarters += 1
    end
    until total < 0.10
      total -= 0.10
      dimes += 1
    end
    quarters_s = "#{quarters} quarters" if quarters > 0
    if dimes > 0
      dimes_s = "#{dimes} dimes"
      dimes_s.prepend(" ") if quarters > 0
    end
    "Your change is #{quarters_s}#{dimes_s}."
  end
end
