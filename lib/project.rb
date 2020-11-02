class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def all_projects
        ProjectBacker.all.select { |project_inst| project_inst.project == self}
    end

    def backers
        self.all_projects.map {|project| project.backer }
    end


end
