void do_pushEpsTg() { stack_Tg.push(seriesTg::Epsilon()); }

void do_pushGammaTg(int n) { stack_Tg.push(Tg::g(n)); }

void do_pushDeltaTg(int t) { stack_Tg.push(Tg::d(t)); }

void do_pushBigDeltaTg(int T) { stack_Tg.push(Tg::D(T)); }

void do_pushIdentTg()
{
	stack_identTg.push("t" + strIdent);
	strIdent.clear();
}

void do_pushVarTg()
{
	string strTg = "t" + strIdent;
	strIdent.clear();

	symtab_stg::iterator it = vars_Tg.find(strTg);
	if (it == vars_Tg.end())
	{
		string str = "undefined name " + strTg;
		cerr << str << endl;
		stack_Tg.push(polyTg::Epsilon());
	}
	else
	{
		stack_Tg.push(vars_Tg[strTg]);
	}
}

void do_printVarTg()
{
	string strTg = "t" + strIdent;
	strIdent.clear();

	symtab_stg::iterator it = vars_Tg.find(strTg);
	if (it == vars_Tg.end())
	{
		string str = "undefined name " + strTg;
		cerr << str << endl;
	}
	else
	{
		cout << strTg << "=" << vars_Tg[strTg];
	}
}

void do_otimesTg() {
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	seriesTg first = stack_Tg.top();
	stack_Tg.pop();
	seriesTg res = first * last;
	stack_Tg.push(res);
}

void do_oplusTg() {
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	seriesTg first = stack_Tg.top();
	stack_Tg.pop();
	seriesTg res = first + last;
	stack_Tg.push(res);
}

void do_kleeneTg()
{
	//cout << "Kleene star not connected yet!" << endl;
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	//TODO
	last = last.star();
	stack_Tg.push(last);
}

void do_infTg() {
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	seriesTg first = stack_Tg.top();
	stack_Tg.pop();
	seriesTg res = first.infCD(last);
	stack_Tg.push(res);
}

void do_lfracTg() {
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	seriesTg first = stack_Tg.top();
	stack_Tg.pop();
	seriesTg res = first.lfracCD(last);
	stack_Tg.push(res);
}

void do_rfracTg() {
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	seriesTg first = stack_Tg.top();
	stack_Tg.pop();
	seriesTg res = first.rfracCD(last);
	stack_Tg.push(res);
}

void do_prcausTg() {
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	//cout << "prcaus(Tg) not connected yet!" << endl;
	seriesTg res = seriesTg::toCausal(last);  // seriesTg::toCausal(last); 
	stack_Tg.push(res);
}

void do_rightTg()
{ // cout << "right(Tg) not connected yet!" << endl;
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	last.toRight();
	stack_Tg.push(last);
}

void do_leftTg() {
	// cout << "left(Tg) not connected yet!" << endl;    
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	last.toLeft();
	stack_Tg.push(last);
}

void do_MMToTg() {
	series last = stack_MM.top();
	stack_MM.pop();
	//cout << "Not connected yet!" << endl;
	stack_Tg.push(seriesTg::toSeriesTg(last));
}

void do_assignTg()
{
	string ident = stack_identTg.top();
	stack_identTg.pop();
	seriesTg last = stack_Tg.top();
	vars_Tg[ident] = last;
	stack_Tg.pop();
	cout << ident << "=" << last;
}


void do_printTg()
{
	if (stack_Tg.size() > 0)
	{
		std::cout << stack_Tg.top() << endl;
		stack_Tg.pop();
	}
}


void do_printTgAsDeltaVar()
{
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	cout << last.toStringAsDeltaVar();
}

void do_printAsCoreTg()
{
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	cout << last.getCoreMax();
}



void do_pushDeltaVarTg()
{
	T_op deltav = T_op::deltaVar(vect_Int);
	vect_Int.clear();
	seriesTg p(Tg(deltav, 0));
	stack_Tg.push(p);
}

void do_equalTg()
{
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	seriesTg first = stack_Tg.top();
	stack_Tg.pop();
	if (first == last) cout << "true";
	else cout << "false";
}