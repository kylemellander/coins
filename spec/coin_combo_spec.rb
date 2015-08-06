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

end
