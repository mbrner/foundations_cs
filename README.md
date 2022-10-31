# Foundations in Computer Science WS22/23

[![Build LaTeX document](https://github.com/mbrner/foundations_cs/actions/workflows/github-actions.yaml/badge.svg)](https://github.com/mbrner/foundations_cs/actions/workflows/github-actions.yaml)

[Whiteboard](https://mycampus.imp.fu-berlin.de/portal/site/b0ec8038-6d1b-4daa-af0a-77d606d845ed)
[Assignments](https://mycampus.imp.fu-berlin.de/portal/site/b0ec8038-6d1b-4daa-af0a-77d606d845ed/tool/20cc3730-a53b-44cb-8c07-838020439aae)


## Create an new sheet template

`./create_sheet_template.sh <sheet_number with leading zeros for proper alphabetic order> <number of tasks>`

Example for sheet 1 with 5 tasks:

```
./create_sheet_template.sh 01 5
git add sheet_01
```
Now add the new sheet to the github workflow to build the pdf in CICD.

1. Open `.github/workflows/github-actions.yaml`
2. Add `sheet_XX.tex` to to list of `root_files`:

```yaml
name: Build LaTeX document
on: [push]
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
        ...
      - name: Compile LaTeX document
        uses: xu-cheng/latex-action@v2
        with:
          root_file: |
            sheet_01/assignment_01.tex
            sheet_02/assignment_02.tex
            ...
            sheet_XX/assignment_XX.tex<-- ADD HERE
          ...
```

Not commit changes


```
git commit -am "empty sheet 1"
```

## Create `.pdf`

```
cd sheet_01 && make
```

or check [github action run](https://github.com/mbrner/foundations_cs/actions) artifact.
