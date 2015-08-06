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
    # index = 0
    # until output_array.empty?
    #   change = "Your change is" + "#{output_array[index]}"
    #   index += 1
    # end
    # change
    # quarters_s = "#{quarters} quarters" if quarters > 0
    # if dimes > 0
    #   dimes_s = "#{dimes} dimes"
    #   dimes_s.prepend(" ") if quarters > 0
    # end
    "Your change is #{output}."
  end
end
