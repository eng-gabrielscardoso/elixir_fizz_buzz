defmodule ElixirFizzBuzzTest do
  use ExUnit.Case

  # We always should test public functions
  # Format: <function_name>/<arity>
  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14, :fizz_buzz]}

      ## Set your absolute path to file numbers.txt
      assert ElixirFizzBuzz.build("") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}

      assert ElixirFizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
