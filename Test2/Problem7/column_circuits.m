function Circ = column_circuits(M, r)
	columns = size(M, 2);
	C = combinations(columns, r);
	Circ = [];
	for (i=1:size(C, 1))
		subset = C(i, :);
		N = M(:, subset);
		c = det(N);
		if(mod(c, 3) == 0)
			Circ = [Circ; subset];
		endif
	endfor
endfunction