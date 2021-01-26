require 'pry'

class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        # binding.pry
        ProjectBacker.all.select{|project| project.backer == self}.collect {|backed_proj| backed_proj.project}
    end
end