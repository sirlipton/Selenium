require File.expand_path('../method1.rb', __FILE__)
require File.expand_path('../method2.rb', __FILE__)
require File.expand_path('../method3.rb', __FILE__)
#File.expand_path is redundant


  #Instantiating class
  book1 = Author.new
  #Instantiating object of the class
  book1.name


class Main2
  book2 = Author2.new
  book2.name2
end

class Main3
  book3 = Author3.new
  book3.name3
end