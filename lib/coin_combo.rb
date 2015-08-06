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

    "Your change is #{quarters} quarters."
  end
end
