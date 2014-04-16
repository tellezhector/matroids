function void = look_for_common_circuits(A, T, r)
	n = size(A, 2);
	P = perms([1:n]);
	
	B = column_circuits(T, r);
	for i = 1:factorial(n);
		p = P(i, :);
		pA = A(:, p);
		pa = rref(pA);
		Bpa = column_circuits(pa, r);
		if(isequal(B, Bpa))
			p
			pA
			pa
			"--------------------******---------------"
		endif
		
		if(mod(i, 100) == 0)
			"==="
			i
			"==="
		endif
	endfor
endfunction