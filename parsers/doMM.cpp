void do_pushEpsMM() { stack_MM.push(series::Epsilon()); }

void do_pushGammaMM(int n) { stack_MM.push(gd(n, 0)); }

void do_pushDeltaMM(int t) { stack_MM.push(gd(0, t)); }

void do_printVarMM()
{
	string strMM = "s" + strIdent;
	strIdent.clear();

	symtab_smm::iterator it = vars_MM.find(strMM);
	if (it == vars_MM.end())
	{
		string str = "undefined name " + strMM;
		cerr << str << endl;
	}
	else
	{
		cout << strMM << "=" << vars_MM[strMM];
	}
}

void do_pushIdentMM()
{
	stack_identMM.push("s" + strIdent);
	strIdent.clear();
}

void do_pushVarMM()
{
	string strMM = "s" + strIdent;
	strIdent.clear();

	symtab_smm::iterator it = vars_MM.find(strMM);
	if (it == vars_MM.end())
	{
		string str = "undefined name " + strMM;
		cerr << str << endl;
		stack_MM.push(series::Epsilon());
	}
	else
	{
		stack_MM.push(vars_MM[strMM]);
	}
}

void do_otimesMM() {
	series last = stack_MM.top();
	stack_MM.pop();
	series first = stack_MM.top();
	stack_MM.pop();
	series res = first * last;
	stack_MM.push(res);
}

void do_oplusMM() {
	series last = stack_MM.top();
	stack_MM.pop();
	series first = stack_MM.top();
	stack_MM.pop();
	series res = first + last;
	stack_MM.push(res);
}

void do_infMM() {
	series last = stack_MM.top();
	stack_MM.pop();
	series first = stack_MM.top();
	stack_MM.pop();
	series res = first.inf(last);
	stack_MM.push(res);
}

void do_fracMM() {
	series last = stack_MM.top();
	stack_MM.pop();
	series first = stack_MM.top();
	stack_MM.pop();
	series res = first.frac(last);
	stack_MM.push(res);
}

void do_prcausMM() {
	series last = stack_MM.top();
	stack_MM.pop();
	series res = last.prcaus();
	stack_MM.push(res);
}

void do_EdToMM() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	series res = last.toSeries();
	stack_MM.push(res);
}

void do_TgToMM() {
	//cout << " seriesTg->series not implemented yet !" << endl;
	seriesTg last = stack_Tg.top();
	stack_Tg.pop();
	series res = last.toSeries();   //last.toSeries();
	stack_MM.push(res);
}

void do_kleeneMM()
{
	series last = stack_MM.top();
	stack_MM.pop();
	last = last.star();
	stack_MM.push(last);
}

void do_assignMM()
{
	string ident = stack_identMM.top();
	stack_identMM.pop();
	series last = stack_MM.top();
	vars_MM[ident] = last;
	stack_MM.pop();
	cout << ident <<"=" <<last;
}


void do_printMM()
{
	if (stack_MM.size() > 0)
	{
		std::cout << stack_MM.top();
		stack_MM.pop();
	}
}



void do_equalMM()
{
	series last = stack_MM.top();
	stack_MM.pop();
	series first = stack_MM.top();
	stack_MM.pop();
	if (first == last) cout << "true";
	else cout << "false";
}


