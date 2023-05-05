function [value] = BackpackFcn(solution, items, maxWeight)
    weight = 0;
    value = 0;
    
    % zsumowanie plecaka
    for i =1:length(solution)
        if solution(i) == 1
            weight = weight + items(i,1);
            value = value + items(i,2);
        end
    end

    % sprawdzenie czy nie przekroczyliśmy wagi
    if weight > maxWeight
        value = 0;
    end
    value =  -value;
end

