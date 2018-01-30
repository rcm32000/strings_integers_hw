require './lib/node'

class LinkedList

  attr_reader :head,
              :current_node

  def initialize
    @head         = nil
    @current_node = @head
  end

  def append(surname)
    # if @head == nil
      @head = Node.new(surname)
    # else
    #
    #   if current_node.next = nil
    #     current_node.next_node = Node.new
    # else
    #   current.node = current.node.next_node

  end


end
