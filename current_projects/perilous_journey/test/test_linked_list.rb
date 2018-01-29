require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require './lib/linked_list'

class TestLinkedList < MiniTest::Test

  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test
    assert_instance_of LinkedList, list
  end

  def test_that_head_returns_nil
    assert_nil list.head
  end

  def test_append_west_to_node
    assert_instance_of Node, list.append("West")
    assert_equal "West", list.head.surname
    assert_nil list.head.next_node
  end

  def test_list_count
    list.append("West")
    assert_equal 1,list.count
  end

  def test_list_tos
    list.append("West")
    list.to_string("The #{head} family")
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
