function Ind = column_basis(M, r)
	columns = size(M, 2);
	C = combinations(columns, r);
	Ind = [];
	for (i=1:size(C, 1))
		subset = C(i, :);
		N = M(:, subset);
		c = det(N);
		if(mod(c, 3) != 0)
			Ind = [Ind; subset];
		endif
	endfor
endfunction