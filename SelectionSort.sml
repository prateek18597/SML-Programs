local
	local
		fun sort1([],P,X,min)= (tl(X),min::P,hd(X))
			| sort1(h::t,P,X,min)=
				if h<min then
					sort1(t,P,min::X,h)
				else
					sort1(t,P,h::X,min)
	in
		fun	sort([],P,min)=List.rev(min::P)
			| sort(h::t,P,min)=
				
				sort(sort1(h::t,P,[],min))

	end
in
	fun selectionsort(L)=
		sort(tl(L),[],hd(L))
end