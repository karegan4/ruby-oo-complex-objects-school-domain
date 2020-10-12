# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(name, grade)
        self.roster[grade] ||=[]
        self.roster[grade] << name
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        roster.each do |key, value|
            value.sort!
        end
        roster.sort.to_h
    end
end