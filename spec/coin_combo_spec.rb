require('rspec')
require('coin_combo')

describe('Numeric#coins') do

  it("returns the correct amount of quarters") {
    expect((2.25).coins).to(eq"Your change is 9 quarters.")
  }

  it("returns the correct amount with dimes and quarters") {
    expect((2.35).coins).to(eq("Your change is 9 quarters and 1 dime."))
  }

  it("returns the correct amount with nickels and dimes and quarters") {
    expect((2.40).coins).to(eq("Your change is 9 quarters, 1 dime, and 1 nickel."))
  }

  it("returns the correct amount with pennies and nickels and dimes and quarters") {
    expect((2.42).coins).to(eq("Your change is 9 quarters, 1 dime, 1 nickel, and 2 pennies."))
  }

  it("returns the correct amount for different combinations") {
    expect((0.13).coins).to(eq("Your change is 1 dime and 3 pennies."))
    expect((5.68).coins).to(eq("Your change is 22 quarters, 1 dime, 1 nickel, and 3 pennies."))
    expect((1.21).coins).to(eq("Your change is 4 quarters, 2 dimes, and 1 penny."))
  }

end
