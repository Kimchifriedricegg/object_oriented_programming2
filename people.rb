class Person

attr_writer :name

  def initialize(name)
    @name = name
  end

  def greeting
    "hi my #{@name}is"
  end
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


chris = Instructor.new("chris")
cristina = Student.new("chris")
