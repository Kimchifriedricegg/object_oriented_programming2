class Person

attr_writer :name

  def initialize(name)
    @name = name
  end


  class Student < Person

    def learn
    "i get it"
    end
  end

  class Instructor < Person

    def teach
    "everything in ruby is an object"
    end

  end

end
