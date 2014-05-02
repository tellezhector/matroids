function A = inverse_where_inverse(M)
	A = M;
	n = size(A, 2);
	for i = 1:n
		a = A(:, i);
		if(min(a)== -1)
			A(:, i) = - A(:, i);
		endif
	endfor
endfunction