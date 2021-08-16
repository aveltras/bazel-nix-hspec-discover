# bazel-nix-hspec-discover

The goal is to have both the following commands working with the same `Spec.hs`

```sh
bazel test :test
```

which currently works with

```hs
{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -F -pgmF HSPEC_DISCOVER #-}
```

and

```sh
bazel run :repl
```

with currently works with

```hs
{-# OPTIONS_GHC -F -pgmF hspec-discover #-}
```

