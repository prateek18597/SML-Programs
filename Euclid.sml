fun check_prime(num,i) =
	if ((num mod i) = 0) andalso num<>2 then 
		false
	else
		if (i=2) orelse num=2 then
			true
		else
			check_prime(num,i-1)

fun gen(Q,prime,q,y, number,prod)=
			if y=number then
				Q
			else
				if check_prime(y,y-1) then
					
					if check_prime(prod*y+1,prod*y) then 

						gen((prod*y+1)::Q,(q,y)::prime,q+1,y+1, number,prod*(y))
					else
						(
							print (Int.toString(prod*y+1)^"\n");
						
							gen((prod*y+1)::Q,(q,y)::prime,q+1,y+1, number,prod*(y))
						)

				else
					gen(Q,prime,q,y+1, number,prod)

