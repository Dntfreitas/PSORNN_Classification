# Comparative Analysis of Feature Selection and Optimisation Algorithms For Classification Tasks

## Abstract:
This paper analyses how the Levenberg--Marquardt backpropagation algorithm~(LMA) and the Particle Swarm Optimisation (PSO) can be used as a training algorithm of Artificial Neural Networks (ANN), when subject to different feature selection mechanisms, in this case, the Minimum Redundancy and Maximum Relevance~(mRMR) and the Chi-square test. In this view, four data sets were tested with different ANN architectures, aiming to select the best combination of optimisation algorithm-feature selection that leverage the accuracy of the models. Thus, the comparison between the different combinations was made in terms of maximum, minimum and average accuracy value provided by the confusion matrices. Our results demonstrated that, on average, the best combination is the use of PSO with the features selected by the Chi-square process.

## Results:

| Algorithm |                             | Parkinson's         | Car                | Wine (Red)          | Wine (White)       |
| --------- | --------------------------- | ------------------- | ------------------ | ------------------- | ------------------ |
| LMA--mRMR | No. hidden (max/min)        | 7/12                | 4/20               | 7/20                | 7/20               |
|           | Max                         | 86.2069             | 68.7259            | 58.5774             | 49.1826            |
|           | Min                         | 27,5862             | 63.3205            | 35.1464             | 41,2807            |
|           | Mean standard deviation     | 56.8966 +/- 29.3103 | 66.0232 +/- 2.7023 | 46.8619 +/- 11.7155 | 45.2316 +/- 3.9509 |
| LMA--Chi2 | No. hidden                  | 4/7                 | 10/7               | 15/15               | 4/20               |
|           | Max                         | 89.6552             | 74.1313            | 61.0879             | 51.49864           |
|           | Min                         | 10.3448             | 67.9537            | 43.5146             | 40.0545            |
|           | Mean +/- standard deviation | 50 +/- 39.6552      | 71.0425 +/- 3.0888 | 52.3013+/8.7866     | 45.7766 +/- 5.7228 |
| PSO--mRMR | No. hidden                  | 12/15               | 12/4               | 12/4                | 20/10              |
|           | Max                         | 86.2069             | 69.1120            | 55.6485             | 51.0899            |
|           | Min                         | 62.0690             | 64.0927            | 39.3305             | 42.5068            |
|           | Mean +/- standard deviation | 74.1379 +/- 12.0690 | 66.6023 +/- 2.5097 | 47.4895 +/- 8.1590  | 46.7984 +/- 4.2915 |
| PSO--Chi2 | No. hidden                  | 12/20               | 7/12               | 20/20               | 4/4                |
|           | Max                         | **93.1035**         | **74.9035**        | **62.3431**         | **54.6322**        |
|           | Min                         | 58.6207             | 66.4093            | 47.6987             | 35.9673            |
|           | Mean +/- standard deviation | 75.8621 +/- 17.2414 | 70.6564 +/- 4.2471 | 55.0209 +/- 7.3222  | 45.2997 +/- 9.3324 |

## Conclusion

This study highlighted the use of ANN for classification tasks. Four data sets were used and subject to two different feature selection processes: Minimum Redundancy and Maximum Relevance (mRMR) and Chi-square tests. Besides that, the experiments were conducted also using different optimisation algorithms, using different network architecture. The two optimisation algorithms considered were the Levenberg-Maquardt algorithm and Particle Swarm Optimisation.

The accuracy of an ANN model is dependent upon the network architecture, training algorithm and the feature selection process used. These three parameters should be chosen (most of the times by a trial and error approach) for better training and better accuracy. In this work, we presented a comparative analysis of feature selection and optimisation algorithms for classification tasks, in order to obtain the combination of approaches that leverage the accuracy of a given model.

Making a general assessment, the best combination that, on average, found more accurate results were the use of PSO with the features selected by the Chi-square process, although it required most of the times a higher number of hidden units. Moreover, the concept of feature selection and optimisation algorithm combination have not worked in case of mRMR since both for LMA and PSO in combination with mRMR produces similar values of accuracy. On the other hand, both optimisation algorithms had similar stability problems. Furthermore, in some cases, the same neural network architecture gave best and the worst results which depict the dependence of optimisation algorithms to selection of parameter, e.g., <img src="https://render.githubusercontent.com/render/math?math=\lambda"> in LMA and <img src="https://render.githubusercontent.com/render/math?math=\omega"> in PSO.
