# coding: utf-8
class HomeController < ApplicationController
  def top
    @singer_list = Dataset.pluck(:singer).uniq.sort
  end
end
