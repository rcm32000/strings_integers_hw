class Node

  attr_reader   :surname
  attr_accessor :next_node,
                :count


  def initialize(surname)
    @surname    = surname
    @next_node  = nil
    @count      = @surname.to_i
  end



end
