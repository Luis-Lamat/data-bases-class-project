class FinanceController < ApplicationController
  
  def summary

    # initial budget
    @budget = 20000
    @costs = 0

    # Calulates spare parts cost
    spare_part_cost = 0
    spare_parts = SparePart.all
    unless spare_parts.empty?
      spare_parts.each do |s|
        spare_part_cost += (s.cost * s.quantity) + s.extra_cost
      end
    end

    # Calulates prodcedures cost
    procedures_cost = 0
    procedures = Procedure.all
    unless procedures.empty?
      procedures.each do |p|
        procedures_cost += p.consumible_lab + p.consumible_general
      end
    end

    @costs += spare_part_cost + procedures_cost

  end

end
