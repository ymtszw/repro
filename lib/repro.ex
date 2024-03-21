defmodule Repro do
  @compile_time_yaml Path.join([__DIR__, "example.yml"])
                     |> File.read!()
                     |> YamlElixir.read_from_string!()
  def dump(), do: @compile_time_yaml
end
