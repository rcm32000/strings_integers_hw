require './lib/node'

class LinkedList

  attr_reader :head,
              :count

  def initialize
    @head   = head
    @count  = 0
  end

  def append(name)
    @count  += 1
    @head   = Node.new(name)
  end

end
