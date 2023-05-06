function [weight] = calcWeight(solution, items)
	weight = 0;
	% zsumowanie plecaka
	for i =1:length(solution)
    	if solution(i) == 1
        	weight = weight + items(i,1);
    	end
	end
end