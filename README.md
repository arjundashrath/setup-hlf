# setup-hlf
GitHub Action to set up [Hyperledger Fabric Framework](https://www.hyperledger.org/use/fabric)

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
|fabric-version|The specific version of hlf to be installed|false|



feel free to contact me at *arjundashrath@gmail.com*
