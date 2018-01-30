require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class TestNode < MiniTest::Test

  def test_node_creation
    node = Node.new("Burke")
    assert_equal Node, node.class
    assert_equal "Burke", node.surname
  end

  def test_next_node
    node = Node.new("West")
    assert_equal Node, node.class
    assert_equal nil, node.next_node
  end

end
