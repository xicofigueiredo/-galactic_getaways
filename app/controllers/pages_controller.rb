class PagesController < ApplicationController
  def home
    @astros = Astro.limit(6).order('created_at DESC')
  end
end
