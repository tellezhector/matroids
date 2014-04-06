function C = combinations(n, m)
	C = [];
	if(m > n)
		return;
	endif;
		
	if(m == 1)
		C = [1:n]';
		return;
	endif;

    Y = combinations(n-1, m-1) + 1;
	Y = [(ones(size(Y, 1), 1)), Y];
	
    X = combinations(n-1, m) + 1;
	
	C = [Y; X];
endfunction