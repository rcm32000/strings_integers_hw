require 'pry'
require './lib/node'

class LinkedList

  attr_reader :head

  def initialize
    @head   = nil
  end

  def count(current=@head)
    if @head == nil
      count = 0
    else
      count = 1
      until current.next_node == nil
        current = current.next_node
        count +=1
      end
    end
    count
  end

  def append(surname)
    current = @head
    if @head == nil
        @head = Node.new(surname)
      else
        until current.next_node == nil
          current = current.next_node
        end
      current.next_node = Node.new(surname)
    end
  end

  def to_string
    current = @head
    last_names = "The #{current.surname} family"
    until current.next_node == nil do
      last_names << ", followed by the #{current.next_node.surname} family"
      current = current.next_node
    end
    last_names << "."
  end

  def prepend(surname)
    insert(0, surname)
  end

  def insert(index, surname)
    current = @head
    index.times do
      current = current.next_node
    end
    new_node = current.dup
    current.next_node = new_node
    current.surname = surname
  end

  def find(index)
    current = @head
    current = 0
    until current == index
      current = current.next_node
      current +=1
    end
    current = current.to_s
  end

end
