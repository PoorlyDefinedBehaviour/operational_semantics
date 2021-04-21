defmodule BigStep do
  @moduledoc """
  Evaluates an expression using big step operational semantics
  """

  def eval(expression) do
    case expression do
      {:+, left, right} -> eval(left) + eval(right)
      value -> value
    end
  end
end
