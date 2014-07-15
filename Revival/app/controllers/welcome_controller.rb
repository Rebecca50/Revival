class WelcomeController < ApplicationController
  def index
    @courses = Record.pluck(:short_title).uniq.map do |title|
      { short_title: title }
    end
  end
end
