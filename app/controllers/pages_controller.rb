class PagesController < ApplicationController
  skip_before_action :authorized

  layout "application"

  def index
  end
end
