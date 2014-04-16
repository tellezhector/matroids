function void = busca_bases_iguales(A, T, r)
	n = size(A, 2);
	P = perms([1:n]);
	
	B = column_basis(T, r);
	for i = 1:factorial(n);
		p = P(i, :);
		pA = A(:, p);
		pa = rref(pA);
		Bpa = column_basis(pa, r);
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