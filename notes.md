# Accuracy

## Plots 

- For all datasets, the best accuracy was achieved by the combination PSO--CHI2. 
- The best accuracies of LMA-Hybrid-Chi2 and LMA-Chi2 are almost same,the difference lies in the worst case accuracies of both methods.
- Chi2 works best in all the cases than MRMR.

## General Comments

However, when considering the general mean accuracy, the LMA--Hybrid--CHI2 is the combination that achieved the best results. Contrarily, the worst accuracy was obtained by the PSO--MRMR combination. These results are depicted in Table 1.

| OptimizationFeature   |   Mean (%)     |   No. hidden |
|:----------------------|---------------:|-------------:|
| LMA-CHI2              | 63.388 ± 2.854 |        15    |
| LMA-MRMR              | 58.658 ± 2.823 |         7    |
| PSO-CHI2              | 58.214 ± 7.880 |       10/12  |
| PSO-MRMR              | 53.982 ± 6.548 |        12    |
| **LMA-Hybrid-CHI2**   | **67.084**     |         10   |
| LMA-Hybrid-MRMR       | 60.621         |         10   |
**Table 1:** Results for the general mean accuracy and number of hidden neurons for the best accuracy.

Despite being the best in terms of accuracy, the PSO--CHI2 revealed, at the same time, to be the algorithm combination with the highest standard deviation on the accuracy results. In other words, this means that one can obtain in some trials a high accuracy for a given dataset using this combination, but also a low accuracy in some other trials on the same dataset. With respect to the stability on the accuracy, and as can be seen in Table 1, the LMA showed to be the most stable algorithm, regardless of the feature selection method. 
[comment] https://onlinelibrary.wiley.com/doi/pdf/10.1002/ecj.10388 (better)
[comment] https://cs.adelaide.edu.au/~zbyszek/PapersRB/Stabilityanalyses.pdf

On the other hand, it is noteworthy that the PSO--CHI2 combination reported requiring, for the highest accuracy results, a number of hidden neurons less than or equal to the combination that comes in the second place for all datasets, except the cars’ dataset. In the general case, and as can be seen in Table 1, the highest complexity architecture performed poorly than simpler neural network architectures (i.e., number of hidden neurons). For instance, in the cars' and Parkinson's datasets the worst accuracy was achieved by the architecture with 20 hidden neurons, whereas the architecture consisting of 10 hidden neurons performed best. Moreover, regardless of the feature selection, both PSO and LMA--Hybrid required more less the same number of hidden units; however, this is not the case with LMA, where CHI2 required almost the double number of hidden units for achieving an increase of approximately 5% in the mean accuracy. 

Overall, Wine data set is challenging than car and parkinson dataset,as depicted by the methods used.This is due to class imbalance in both datasets.For the red wine data set, the model was not able to classify class 1 and 2 which is due to relatively less number of samples(10  and  53,  respectively),whereas Class 1, 2 and 6 for white wine were poorly classified due to limited samples 20, 53 and 18, respectively.

# Epochs

In terms of the number of epochs, the tables depicted that in most of the datasets the LMA--Hybrid--MRMR is the algorithm that requires the lowest number of iterations to the algorithm convergence with a descent accuracy for all datasets. With no doubt,LMA-Hybrid-chi2 achieved better accuracy than the former,but the accuracy difference between both hybrid methods is negligible. On the other hand, the LMA came to prominence as being the optimisation algorithm that requires, in most cases, a relatively simple neuron network architecture then PSO.

Overall, the LMA--Hybrid is the best optimisation algorithm in terms of convergence speed.

Another fascinating observation is increasing the average epoch by 1 in some cases, can significantly enhance the performance of method in terms of accuracy.As an instance, for parkinson and redwine dataset, an increase of 1 epoch, the accuracy is increased by 7% (82% to 89%-parkinson and 51 to 58% in redwine dataset). 

The performance of LMA, especially when used in conjunction with the MRMR, is independent of the number of features, unlike PSO. In other words, the PSO-MRMR revealed to be the combination that presents higher levels of variation in the number of epochs required for algorithm convergence.

# Execution Time

For LMA-Hybrid-MRMR,the execution time remains almost same for all neural network architectures. On the other hand, for the LMA-CHI2 and LMA-MRMR the execution time per iterations increases linearly with an increase in the number of hidden units.  

As expected, the hybrid optimisation algorithms revealed to have, in general, the lowest mean execution time per iteration, especially the LMA--Hybrid--MRMR. Interestingly, for the LMA--Hybrid--CHI2 as the number of hidden neurons increases, it is possible to verify that the execution time per iteration reduces, until it remains almost constant after 12 hidden neurons, forming an elbow-shaped curve. 

| OptimizationFeature   |   SecsIte |   Variation % |
|:----------------------|----------:|--------------:|
| LMA-Hybrid-MRMR       |     0.039 |               |
| LMA-Hybrid-CHI2       |     0.047 |        19.434 |
| LMA-MRMR              |     0.058 |        45.931 |
| LMA-CHI2              |     0.071 |        78.751 |
| PSO-MRMR              |     8.092 |               |
| PSO-CHI2              |    12.83  |        58.555 |

For the execution time analysis, it is not possible to compare the PSO with LMA, as the stochastic algorithms are known to require a higher execution time per iteration when compared to other exact optimisation methods [put references]. It is interesting to note that both PSO optimized algorithms showed an identical behaviour of gradually decreasing the execution time on an increase in the number of hidden neurons. However, PSO-MRMR showed a spike at 12 hidden neurons whereas the time taken by PSO-Chi2 by the network with 10 and 12 hidden neurons is almost same. Furthermore, for architecture with 7 and 10 hidden neurons, the execution time for PSO-chi2 decreases and almost flat for PSO-MRMR, vice-versa for network having 4 and 7 hidden neurons. The execution time is decreased for all the architectures beyond networks with 12 hidden neurons. This behaviour of PSO with different feature selection may be due to the random components that are present in the particles' velocity update equation.

# Feature Selection 

Regarding the overall results, the CHI2 revealed to be the worst feature selection algorithm in terms of fast convergence, unlike MRMR. However, using CHI2 instead of MRMR further improves the accuracy except in hybrids.
