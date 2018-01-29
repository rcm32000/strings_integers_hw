require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require './lib/linked_list'

class TestNode < MiniTest::Test

  attr_reader :node

  def setup
    @node = Node.new("Burke")
  end

  def test_class_exists
  assert_instance_of Node, node
  end

  def test_name
    assert_equal "Burke", node.surname
  end

  def test_node
    assert_equal nil, node.next_node
  end

end
