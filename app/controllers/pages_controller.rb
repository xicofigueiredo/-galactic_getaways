class PagesController < ApplicationController
  def home
    @astros = Astro.limit(6).order('created_at DESC')
  end

  def planets
    @planets = Astro.where(category: "Planet")
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
end
