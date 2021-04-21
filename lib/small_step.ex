defmodule SmallStep do
  @moduledoc """
  Evaluates an expression using small step operational semantics
  """

  defp reducible?(expression) do
    case expression do
      epxr when is_integer(epxr) -> false
      _ -> true
    end
  end

  defp reduce(expression) do
    case expression do
      {:+, left, right} ->
        cond do
          reducible?(left) ->
            {:+, reduce(left), right}

          reducible?(right) ->
            {:+, left, reduce(right)}

          true ->
            left + right
        end

      _ ->
        expression
    end
  end

  def eval(expression) do
    if reducible?(expression) do
      expression |> reduce |> eval
    else
      expression
    end
  end
end
