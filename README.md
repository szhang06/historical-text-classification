# Historical Text classification with Naive Bayes, SVM, and Bert Classifiers

## Descriptions

#### This projects evaluates the impacts of spelling normalization of historical data on text classification. We first evalute the original historical dataset and then the normalized dataset for comparison. 

#### We use sklearn and tensorflow to build the models. For spelling normalization, we used the character-based bi-RNN neural machine translation model OpenNMT (https://github.com/OpenNMT/OpenNMT), and is trained with uppmax, the high performing computation center. 

##### Datasets: https://cl.lingfil.uu.se/histcorp/. The training dataset for spelling normalization is from "Spelling Normalisation and Linguistic Analysis of Historical Text for Information Extraction" (https://www.semanticscholar.org/paper/Spelling-Normalisation-and-Linguistic-Analysis-of-Pettersson/f4ad6e55eed6c067dd8014a301e7add2fbd75afd). 

#### Results
##### normalization accuracy
![image](https://user-images.githubusercontent.com/81448993/211129314-135d42bf-bc6a-4b23-9da5-a6541e8c825a.png)
##### model performance is shown in the notebook.


## References
https://towardsdatascience.com/multi-label-text-classification-using-bert-and-tensorflow-d2e88d8f488d
