# IntelliMerge Simulation 

In this README, we will provide an overview of the scripts results obtained from using the IntelliMerge tool, along with important information to understand and reproduce these results.

## Overview

[Describe briefly the purpose of the analysis or experiments conducted with the jFSTMerge tool.]

## How to Reproduce

We executed jFSTMerge over our subjects using shell script, then we preprocessed the results using Python scripts.

1. **Prerequisites:**
   
    To obtain jFSTMerge simulation results:
    * Windows and Java 8 (Java version "1.8.0_212" or above) to execute jFSTMerge
    * Git (optional)
    * A file containing merge parent 1 (p1), merge parent 2 (p2), and the merge commit.
  
    To analyze the IntelliMerge simulation result: </p>
    * Python 
    * Pandas and related libraries

2. **Clone the jFSTMerge Repository:**
     ```bash
     git https://github.com/guilhermejccavalcanti/s3m.git

3. **Run the script to execute jFSTMerge:**
      ```bash
      .\jfst_script.sh
    
4. **Collect results from jFSTMerge execution using the scripts:**
      jFSTMerge_preprocessing.ipynb


