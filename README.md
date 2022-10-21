# setup-hlf
Action to set up Hyperledger Fabric Framework

### Example workflow

```
name: Setup HLF
on: [push, pull_request, workflow_dispatch]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Setup Hyperledger Fabric
        uses: arjundashrath/setup-hlf@v0.0.1
```

#### Action Inputs
|Input|Description|Required|
|-----|-----------|--------|
