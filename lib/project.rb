class Project 
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        backed_array = ProjectBacker.all.select do |backed|
            backed.project == self
        end
        backed_array.collect do |projs|
            projs.backer
        end
    end

end