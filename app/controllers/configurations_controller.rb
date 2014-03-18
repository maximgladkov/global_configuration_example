class ConfigurationsController < ApplicationController
  def index
  end

  def update
    key = params[:global_configuration_configuration][:key]
    value = params[:global_configuration_configuration][:data]
    GlobalConfiguration::Configuration.write(key, value)
    render :index
  end
end
