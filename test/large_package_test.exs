defmodule LargePackageTest do
  use ExUnit.Case
  doctest LargePackage

  test "greets the world" do
    assert LargePackage.hello() == :world
  end
end
