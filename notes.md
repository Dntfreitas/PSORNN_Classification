# Accuracy

For all datasets, the best accuracy was achieved by the combination PSO--CHI. It is important to note, however, that in terms of the general mean accuracy, the LMA--Hybrid--CHI2 is the combination that achieved the best results, except for the white wine dataset; nevertheless, the LMA--Hybrid--CHI2 and the LMA--Hybrid--MRMR obtained similar results in this dataset. Contrarily, the worst accuracy was obtained by the PSO--MRMR combination.

Moreover, the PSO--CHI2 also revealed to be the algorithm combination with the highest standard deviation. It is noteworthy that this combination reported requiring a number of hidden neurons less than or equal to the combination that comes in the second place for all datasets, except the cars’ dataset.

Despite that, the LMA showed to be the most stable algorithm in terms of accuracy. These results were already expected since the LMA is an exact algorithm (i.e., the optimisation process is based on the calculation of the gradient of the error function), and in its turn, the PSO is a pure stochastic optimisation algorithm.

# Epochs

In terms of the number of epochs, the tables depicted that in most of the datasets the LMA--Hybrid--MRMR is the algorithm that requires the lowest number of iterations to the algorithm convergence. On the other hand, the LMA came to prominence as being the optimisation algorithm that requires, in most cases, a simpler neuron network architecture.  

Regarding the overall results, the CHI2 revealed to be the worst feature selection algorithm for fast convergence, being the MRMR the best feature selection for this purpose. Moreover, the LMA--Hybrid is the best optimisation algorithm in terms of convergence speed, followed by the LMA and PSO.

Finally, and in respect of stability of the converging speed, the LMA showed to be the most stable algorithm, especially when used in conjunction with the MRMR; in the other way, the PSO-MRMR revealed to be the combination that presents higher levels of variation in the number of epochs required for algorithm convergence.

# Execution Time

As expected, the hybrid optimisation algorithms revealed to have, in general, the lowest execution time per iteration, especially the LMA--Hybrid--MRMR (that remains almost constant with an increase in the number of hidden units). Interestingly, for the LMA--Hybrid--CHI2 as the number of hidden neurons increase, it is possible to verify that the execution time per iteration reduces, until it remains almost constant after 12 hidden neurons. On the other hand, for the LMA-CHI2 and LMA-MRMR the execution time per iterations increases linearly with an increase in the number of hidden units.   

For the execution time analysis, it is not possible to compare the PSO with LMA, as the stochastic algorithms are known to require a higher execution time per iteration when compared to other exact optimisation methods. Nevertheless, the PSO--CHI2 combination, similarly to the LMA--Hybrid--CHI2, showed that as the number of neurons increases, the lower is the execution time. In addition to this, and similarly to the LMA--Hybrid--MRMR, the PSO--MRMR revealed to not vary significantly in the execution time with an increase of the number of hidden units. One possible justification for the fact of the relationship between number of hidden neuron units and execution time being similar on PSO--CHI2 and LMA--Hybrid--CHI2, and on the PSO--MRMR and LMA--Hybrid--MRMR, may be related to the fact that in both cases the weights are initialised by the final solutions provided by the PSO.