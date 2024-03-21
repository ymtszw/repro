# Repro

This repository is a minimal example of a bug in the ElixirLS.

- (Prepare reasonably new Elixir and Erlang runtimes)
- Clone the repository
- `mix deps.get`
- Make sure it successfully compiles with `mix compile`
- Open the `lib/repro.ex` file in VSCode with the ElixirLS extension installed
- Observe the error message in the editor like so:

```text
** (YamlElixir.ParsingError) malformed yaml
    (yaml_elixir 2.9.0) lib/yaml_elixir.ex:41: YamlElixir.read_from_string!/2
    lib/repro.ex:4: (module)
    (elixir 1.14.5) lib/kernel/parallel_compiler.ex:340: anonymous fn/5 in Kernel.ParallelCompiler.spawn_workers/7
```

- OR, on initial opening of the file, the compilation may succeed. If so, give some arbitrary change to `lib/repro.ex` and save the file. The error should appear then.
