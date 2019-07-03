The installation order of these files is determined by the stack configuration 
(see `../stacks.yaml`, or by CLI args).

Different manifests can be installed into different stacks, and can be parameterised 
differently depending on the actual environment.

Manifests are processed sequentially, but the contents of each manifest is processed
in parallel. You can control parallelisation by using an `options` block:

```yml
options:
  parallelisation: 1      # run sequentially (i.e. with a single thread)
```
