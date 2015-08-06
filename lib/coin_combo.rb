class Float
  def coins
    total = self*100
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    until total < 25
      total -= 25
      quarters += 1
    end
    until total < 10
      total -= 10
      dimes += 1
    end
    until total < 5
      total -= 5
      nickels += 1
    end
    until total < 1
      total -= 1
      pennies += 1
    end
    output_array = []
    coins = {"quarter" => quarters, "dime" => dimes, "nickel" => nickels, "penny" => pennies}
    coins.each { |key, value|
      if value == 1
        output_array << "#{value} #{key}"
      elsif value > 1
        if key == "penny"
          output_array << "#{value} pennies"
        else
          output_array << "#{value} #{key}s"
        end
      end
    }
    if output_array.count > 1
      output_array[-1] = "and #{output_array[-1]}"
    end
    if output_array.count > 2
      output = output_array.join(", ")
    else
      output = output_array.join(" ")
    end
    "Your change is #{output}."
  end
end
