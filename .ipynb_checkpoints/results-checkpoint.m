function [result] = results(nHidden, Acc, time, epochs)

    % Initialise the result array
    result = zeros(length(nHidden), 5);
   
    for i = 1:length(nHidden)
        accAux = Acc(i,:);
        timeAux = time(i,:);
        epochsAux = epochs(i,:);
        % Get best and worst MSE
        best_acc = max(max(accAux));
        worst_acc = min(min(accAux));
        % Compose result
        result(i,1) = nHidden(i);
        result(i,2) = best_acc;
        result(i,3) = worst_acc;
        result(i,4) = mean(accAux);
        result(i,5) = std(accAux);
        result(i,6) = mean(timeAux);
        result(i,7) = std(timeAux);
        result(i,8) = mean(epochsAux);
        result(i,9) = std(epochsAux);
    end   

end