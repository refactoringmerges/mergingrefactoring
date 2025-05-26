## When Merging Meets Refactoring:Investigating Factors Behind Conflicts in Java Projects Using Git, jFSTMerge, and IntelliMerge

This repository contains the results of an analysis of merge conflicts detected by three different merge tools, with a focus on the influence of refactorings under varying merge strategies. For this analysis, we selected three merge tools: Git, jFSTMerge, and IntelliMerge. Git employs a textual-based (unstructured) merge approach [1]. In contrast, jFSTMerge and IntelliMerge use semistructured approaches. However, their mechanisms differ: jFSTMerge relies on Abstract Syntax Trees (ASTs) [2], while IntelliMerge is a refactoring-aware tool which combines graph-based and AST-based techniques to analyze code changes [3].

* [Subjects in our study](/subjects.md)
* [Git execution steps](/git_execution/git_execution_steps.md)
* [IntelliMerge execution steps](/intellimerge_execution/intellimerge_execution_steps.md)
* [jFSTMerge execution steps](/jfstmerge_execution/jfstmerge_execution_steps.md)
* [Linear regression plots for each tool](/linear_regression/Linear Regression Plots for Each Tool.ipynb)
* [Scripts](https://doi.org/10.5281/zenodo.13912933)

Cite the code: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13912933.svg)](https://doi.org/10.5281/zenodo.13912933)

