# bazel-nix-hspec-discover

Both the following commands work with the same `Spec.hs`

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

which currently works with

```hs
{-# OPTIONS_GHC -F -pgmF hspec-discover #-}
```

