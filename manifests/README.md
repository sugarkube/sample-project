File names have no bearing on the order of execution. They are just prefixed with
numbers to make it easier to reason about which order manifests will be applied 
in, but the actual installation order is determined by the stack configuration 
(see `../stacks.yaml`, or by CLI args).

Different manifests can be installed into different stacks, and can be parameterised 
differently depending on the actual environment.

Manifests are processed sequentially, but the contents of each manifest is processed
in parallel. You can control parallelisation by using an `options` block:

```
options:
  parallelisation: 1      # run sequentially (i.e. with a single thread)
```
