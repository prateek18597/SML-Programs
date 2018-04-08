fun bubble([],X,max,L)= (X,max::L)
	|	bubble(h::t,X,max,L)=
	if h<max then
		bubble(t,h::X,max,L)
	else
		bubble(t,max::X,h,L)
fun sort([],L)= L
	| sort(L1,L2)=
	sort(bubble(tl(L1),[],hd(L1),L2))