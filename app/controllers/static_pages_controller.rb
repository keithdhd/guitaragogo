class StaticPagesController < ApplicationController
  def home
    @lessons = Lesson.all
  end

  def splash
  end
end
