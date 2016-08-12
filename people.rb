class Person

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
  puts "hi im #{@name} "
  end
end

class Student < Person

  def learn
  puts  "i get it"
  end

end

class Instructor < Person

  def teach
  puts  "everything in ruby is an object"
  end
end


chris = Instructor.new("chris")
cristina = Student.new("cristina")

chris.greeting
cristina.greeting

chris.teach
cristina.learn
