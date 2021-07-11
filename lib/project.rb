class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title 
    @backers = []
  end

  # Why does this work? #backers is only an attr_reader? 
  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end