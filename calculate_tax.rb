class TaxCalculator
  attr_reader :income, :premium

  def initialize(income, premium)
    @income = income
    @premium = premium
  end

  def calculate_tax(status)
    taxable = income - premium
    
    case status
    when "married"
      base_tax = 0.01 * 450000

      if taxable <= 450000
        total_tax = 0.01 * taxable

      elsif taxable <= 550000
        total_tax = base_tax + (0.1 * (taxable - 450000))
      
      elsif taxable <= 750000
        total_tax = base_tax + (0.1 * 100000) + (0.2 * (taxable - 550000))

      elsif taxable <= 2000000
        total_tax = base_tax + (0.1 * 100000) + (0.2 * 200000) + (0.3 * (taxable - 750000))

      elsif taxable > 2000000
        tax = base_tax + (0.1 * 100000)+(0.2 * 200000) + (0.3 * 1250000) + (0.36 * (taxable - 2000000) )
      end

    when "unmarried"
      base_tax = 0.01 * 400000

      if taxable <= 400000
        total_tax = 0.01 * taxable

      elsif taxable <= 500000
        total_tax = base_tax + (0.1 * (taxable - 400000))
      
      elsif taxable <= 700000
        total_tax = base_tax + (0.1 * 100000) + (0.2 * (taxable - 500000))

      elsif taxable <= 2000000
        total_tax = base_tax + (0.1 * 100000) + (0.2 * 200000) + (0.3 * (taxable - 700000))

      elsif taxable > 2000000
        tax = base_tax + (0.1 * 100000)+(0.2 * 200000) + (0.3 * 1300000) + (0.36 * (taxable - 2000000) )
      end
    end
  end
end