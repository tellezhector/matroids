function C = complements(B, max)
	n = size(B, 1);
	C = []
	for(i = 1:n)
		c = setdiff(1:max, B(i, :));
		C = [C; c];
	endfor
endfunction