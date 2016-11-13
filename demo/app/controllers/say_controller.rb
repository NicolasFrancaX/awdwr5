class SayController < ApplicationController
  def hello
    @time = Time.now
  end

  def goodbye
  end

  def file
    @files = Dir.glob('*')
  end
end
