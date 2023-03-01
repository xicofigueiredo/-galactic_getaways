class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @astros = Astro.limit(6).order('created_at DESC')
  end

  def planets
    @planets = Astro.where(category: "planet")
  end

  def commets
    @commets = Astro.where(category: "commet")
  end

  def asteroids
    @asteroids = Astro.where(category: "asteroid")
  end

  def stars
    @stars = Astro.where(category: "star")
  end

  def galaxies
    @galaxies = Astro.where(category: "galaxy")
  end

  def mylistings
    @astros = current_user.owned_astros
  end

  def mybookings
    @bookings = current_user.bookings
  end

end
