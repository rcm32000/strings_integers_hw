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

  def test_add_append_data_returns_a_new_node
    list = LinkedList.new
    assert_instance_of  Node, list.append("West")
  end

  def test_add_append_data_sets_head_to_new_node
    list = LinkedList.new
    list.append("West")
    assert_equal "West", list.head.surname
    assert_equal nil, list.head.next_node
  end

  def test_count_method
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end


  def test_count_method
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("West")
    assert_equal "The West family.", list.to_string
  end

  def test_new_name_append
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    assert_equal 2, list.count
  end

  def test_new_name_append
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.append("McKinney")
    assert_equal 3, list.count
  end

  def test_prepending_new_node
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    assert_equal "Brooks", list.head.surname
    assert_equal "Henderson", list.head.next_node.surname
    list.prepend("McKinney")
    assert_equal "McKinney", list.head.surname
    assert_equal "Brooks", list.head.next_node.surname
  end

  def test_inserting_new_node
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    assert_equal "McKinney", list.head.surname
    assert_equal "Brooks", list.head.next_node.surname
    list.insert(1, "Lawson")
    assert_equal "McKinney", list.head.surname
    assert_equal "Lawson", list.head.next_node.surname
  end

  def test_find_mode
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    binding.pry
    assert_equal "The Brooks family", list.find(2, 1)
    assert_equal "The Brooks family", list.head.next_node.surname
  end
end
