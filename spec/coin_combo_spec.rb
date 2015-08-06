require('rspec')
require('coin_combo')

describe('Float#coins') do
  it("returns the correct amount of quarters") do
    expect((2.25).coins).to(eq"Your change is 9 quarters.")
  end
end
