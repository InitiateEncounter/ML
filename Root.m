function[] = Root(lo_lim, up_lim, error)
	x = 0;
	iteration = 0;
	while (abs(MyFunction(x)) > error)
		x = (lo_lim + up_lim)/2;
		iteration = iteration + 1;
		if (iteration > 100)
			break;
		end;
		if (((MyFunction(lo_lim)) * MyFunction(x)) < 0)
			up_lim = x;
		else
			lo_lim = up_lim;
			up_lim = x;
		end;
	end;
	disp(x);
end

