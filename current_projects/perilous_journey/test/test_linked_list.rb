require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'

class TestLinkedList < MiniTest::Test

  def test_list_creation
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_add_append_data
    list = LinkedList.new
    assert_instance_of  Node, list.append("West")
    binding.pry
  end

  def test_count_method
    
    assert_equal 1, list.count
  end


end

# => <LinkedList @head=nil #45678904567>
# > list.head
# => nil
# > list.append("West")
# => <Node @surname="West" @next_node=nil #5678904567890>
# > list
# => <LinkedList @head=<Node @surname="West" ... > #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "The West family"
