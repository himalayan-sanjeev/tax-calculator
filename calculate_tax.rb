class TaxCalculator
  attr_reader :income, :premium

  def initialize(income, premium, status)
    @income = income
    @premium = premium
    @status = status
  end

  def calculate_tax(income, premium, status)
    taxable = income - premium

    case status

    when "married"
      if taxable <= 450000
        total_tax = 0.01 * taxable

      elsif taxable > 450000
        base_tax = 0.01* 450000
        remaining_taxable =  taxable - 450000
        
        if remaining_taxable <= 100000
          tax = 0.1 * remaining_taxable
          total_tax = base_tax + tax

        elsif remaining_taxable <= 300000
          tax = (0.1 * 100000 ) + (0.2 * remaining_taxable-100000)
          total_tax = base_tax + tax

        elsif remaining_taxable <= 1550000
          tax = (0.1 * 100000)+(0.2 * 200000)+ (0.3 * (remaining_taxable-300000))
          total_tax = base_tax + tax

        elsif remaining_taxable <= 2000000
          tax = (0.1 * 100000)+(0.2 * 200000) + (0.36 * (remaining_taxable-1550000))
          total_tax = base_tax + tax
        end
      end

    when "unmarried"
      if  taxable <= 400000
        total_tax = 0.01 * taxable

      elsif taxable > 400000
        base_tax = 0.01* 400000
        remaining_taxable =  taxable - 400000
        
        if remaining_taxable <= 100000
          tax = 0.1 * remaining_taxable
          total_tax = base_tax + tax

        elsif remaining_taxable <= 300000
          tax = (0.1 * 100000 ) + (0.2 * remaining_taxable-100000)
          total_tax = base_tax + tax

        elsif remaining_taxable <= 1600000
          tax = (0.1 * 100000)+(0.2 * 200000)+ (0.3 * (remaining_taxable-300000))
          total_tax = base_tax + tax

        elsif remaining_taxable <= 2000000
          tax = (0.1 * 100000)+(0.2 * 200000) + (0.36 * (remaining_taxable-1600000))
          total_tax = base_tax + tax
        end
      end
    end
  end
end