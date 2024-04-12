name: Option-based Workflow

on:
  push:
    branches:
      - main

jobs:
  option_based_workflow:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Run with option
      run: |
        # 使用 $INPUT_OPTION 获取传递的选项参数
        ./run_with_option.sh $INPUT_OPTION
      env:
        INPUT_OPTION: ${{ matrix.option }}

    strategy:
      matrix:
        option:
          - option1
          - option2
          - option3
