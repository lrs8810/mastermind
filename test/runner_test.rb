require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/runner'

class RunnerTest < MiniTest::Test
  def setup
    @runner = Runner.new
  end

  def test_runner_exists
    assert_instance_of Runner, @runner
  end
end
