# Historical Text classification with Naive Bayes, SVM, and Bert Classifiers

## Descriptions

#### This project evaluates the impacts of spelling normalization of historical data on text classification. We first evalute the original historical dataset and then the normalized dataset for comparison. 

#### We use sklearn and tensorflow to build the models. For spelling normalization, we use the character-based bi-RNN neural machine translation model OpenNMT (https://github.com/OpenNMT/OpenNMT), which is trained on uppmax, the high performing computation center. 

##### Datasets: The dataset for model performance is obtained from https://cl.lingfil.uu.se/histcorp/. The training dataset for spelling normalization is from "Spelling Normalisation and Linguistic Analysis of Historical Text for Information Extraction" (https://www.semanticscholar.org/paper/Spelling-Normalisation-and-Linguistic-Analysis-of-Pettersson/f4ad6e55eed6c067dd8014a301e7add2fbd75afd). 

#### Results
##### normalization accuracy
![image](https://user-images.githubusercontent.com/81448993/211129314-135d42bf-bc6a-4b23-9da5-a6541e8c825a.png)
##### model performance is shown in the notebook.


## Some References

https://towardsdatascience.com/multi-label-text-classification-using-bert-and-tensorflow-d2e88d8f488d
R. Andrew Kreek and Emilia Apostolova. 2018. Train-ing and prediction data discrepancies: Challenges of text classification with noisy, historical data. In
Proceedings of the 2018 EMNLP Workshop W-NUT: The 4th Workshop on Noisy User-generated Text, pages 104–109, Brussels, Belgium. Association for Computational Linguistics.
Ankit Kumar, Piyush Makhija, and Anuj Gupta. 2020. User generated data: Achilles’ heel of BERT. CoRR, abs/2003.12932.
Daniel Lopresti. 2008. Optical character recognition er- rors and their effects on natural language processing. In Proceedings of the Second Workshop on Analytics
for Noisy Unstructured Text Data, AND ’08, page 9–16, New York, NY, USA. Association for Com-puting Machinery.
Peter Makarov and Simon Clematide. 2020. Semi- supervised contextual historical text normalization.
In Proceedings of the 58th Annual Meeting of the Association for Computational Linguistics, pages
7284–7295, Online. Association for Computational Linguistics.
Bo Pang and Lillian Lee. 2008. Opinion mining and sentiment analysis. Found. Trends Inf. Retr., 2(1–2):1–135.
Xutan Peng, Yi Zheng, Chenghua Lin, and Advaith Siddharthan. 2021. Summarising historical text in modern languages. In Proceedings of the 16th Con- ference of the European Chapter of the Association for Computational Linguistics: Main Volume, pages 3123–3142, Online. Association for Computational Linguistics.
Eva Pettersson. 2016. Spelling normalisation and lin- guistic analysis of historical text for information ex-traction.
Eva Pettersson, Be ́ata Megyesi, and Joakim Nivre. 2014. A multilingual evaluation of three spelling normalisation methods for historical text. In Pro-ceedings of the 8th Workshop on Language Technol-ogy for Cultural Heritage, Social Sciences, and Hu-manities (LaTeCH), pages 32–41, Gothenburg, Swe-den. Association for Computational Linguistics.
