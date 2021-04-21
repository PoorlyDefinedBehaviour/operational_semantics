defmodule SmallStepTest do
  @moduledoc false

  use ExUnit.Case

  test "eval/1 evaluates expression in small steps" do
    SmallStep.eval({:+, 2, -2}) == 0
    SmallStep.eval({:+, 0, 0}) == 0
    SmallStep.eval({:+, 2, 2}) == 4
    SmallStep.eval({:+, 2, {:+, 2, 2}}) == 6
  end
end
