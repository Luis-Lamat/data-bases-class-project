class ReportsController < ApplicationController

  def index
    
  end

  def employee_on_vehicle
    @vehicle = Vehicle.find(params[:id])
    @sql = Vehicle.where(id: params[:id]).to_sql
  end

  def vehicle_workshop
    @vehicle = Vehicle.find(params[:id])
    @sql = Vehicle.where(id: params[:id]).to_sql
  end

  def vehicle_spare_parts
  end

  def vehicle_procedures
  end
end
