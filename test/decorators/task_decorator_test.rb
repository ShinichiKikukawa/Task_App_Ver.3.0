# frozen_string_literal: true

require 'test_helper'

class TaskDecoratorTest < ActiveSupport::TestCase
  def setup
    @task = Task.new.extend TaskDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
