defmodule BigStepTest do
  @moduledoc false

  use ExUnit.Case

  test "eval/1 evaluates expression in big steps" do
    BigStep.eval({:+, 2, -2}) == 0
    BigStep.eval({:+, 0, 0}) == 0
    BigStep.eval({:+, 2, 2}) == 4
    BigStep.eval({:+, 2, {:+, 2, 2}}) == 6
  end
end
