void do_pushGammaEd(int n) { seriesEd p(Ed(gNg(n), 0));    stack_Ed.push(p); }

void do_pushDeltaEd(int t) { seriesEd p(Ed(E_op::E(), t));    stack_Ed.push(p); }

void do_pushMuEd(int m) { seriesEd p(Ed(gNg(0, m, 1, 0), 0));    stack_Ed.push(p); }

void do_pushBetaEd(int b) { seriesEd p(Ed(gNg(0, 1, b, 0), 0));    stack_Ed.push(p); }

void do_pushNablaEd(int n) { seriesEd p(Ed(gNg(0, n, n, 0), 0));    stack_Ed.push(p); }

void do_pushEpsEd() { stack_Ed.push(seriesEd::Epsilon()); }

void do_pushIdentEd()
{
	//std::cout << "pushEd" << endl;
	//std::cout << "se_"+strIdentEd << endl;
	stack_identEd.push("e" + strIdent);
	strIdent.clear();
}

void do_pushVarEd()
{
	string strEd = "e" + strIdent;
	strIdent.clear();
	//cout << strEd << endl;

	symtab_sed::iterator it = vars_Ed.find(strEd);
	if (it == vars_Ed.end())
	{
		string str = "undefined name " + strEd;
		cerr << str << endl;
		stack_Ed.push(seriesEd::Epsilon());
	}
	else
	{
		stack_Ed.push(vars_Ed[strEd]);
	}
}

void do_printVarEd()
{
	string strEd = "e" + strIdent;
	strIdent.clear();

	symtab_sed::iterator it = vars_Ed.find(strEd);
	if (it == vars_Ed.end())
	{
		string str = "undefined name " + strEd;
		cerr << str << endl;
	}
	else
	{
		cout << strEd <<"="<< vars_Ed[strEd];
	}
}



void do_pushMuVarEd()
{
	E_op muv = E_op::MuVar(vect_Uint);
	vect_Uint.clear();
	seriesEd p(Ed(muv, 0));
	stack_Ed.push(p);
}
void do_pushBetaVarEd()
{
	E_op betav = E_op::BetaVar(vect_Uint);
	vect_Uint.clear();
	seriesEd p(Ed(betav, 0));
	stack_Ed.push(p);
}

void do_otimesEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd first = stack_Ed.top();
	stack_Ed.pop();
	seriesEd res = first * last;
	stack_Ed.push(res);
}

void do_oplusEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd first = stack_Ed.top();
	stack_Ed.pop();
	seriesEd res = first + last;
	stack_Ed.push(res);
}

void do_kleeneEd()
{
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	last = last.star();
	stack_Ed.push(last);
}

void do_infEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd first = stack_Ed.top();
	stack_Ed.pop();
	seriesEd res = first.infCD(last);
	stack_Ed.push(res);
}

void do_lfracEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd first = stack_Ed.top();
	stack_Ed.pop();
	seriesEd res = first.lfracCD(last);
	stack_Ed.push(res);
}

void do_rfracEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd first = stack_Ed.top();
	stack_Ed.pop();
	seriesEd res = first.rfracCD(last);
	stack_Ed.push(res);
}

void do_prcausEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd res = seriesEd::toCausal(last);
	stack_Ed.push(res);
}

void do_rightEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	last.toRight();
	stack_Ed.push(last);
}

void do_leftEd() {
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	last.toLeft();
	stack_Ed.push(last);
}

void do_MMToEd() {
	series last = stack_MM.top();
	stack_MM.pop();
	seriesEd res = seriesEd::toSeriesEd(last);
	stack_Ed.push(res);
}

void do_assignEd()
{
	string ident = stack_identEd.top();
	stack_identEd.pop();
	seriesEd last = stack_Ed.top();
	vars_Ed[ident] = last;
	stack_Ed.pop();
	cout << ident << "=" << last;
}


void do_printEd()
{
	if (stack_Ed.size() > 0)
	{
		std::cout << stack_Ed.top() << endl;
		stack_Ed.pop();
	}
}


void do_printEdAsMuVar()
{
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	cout << last.toStringAsMuVar();
}
void do_printAsCoreEd()
{
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	matrix<series> core = last.getCoreMax();
	unsigned m = core.GetRow();
	unsigned b = core.GetColumn();
	cout << "M=[m" << m << ",g1.m" << m << ",...,g" << (m - 1) << ".m" << m << "] and ";
	cout << "B=[b" << b << ".g" << (b - 1) << "," << "...,b" << b << "]'" << endl;
	cout << core ;
}


void do_equalEd()
{
	seriesEd last = stack_Ed.top();
	stack_Ed.pop();
	seriesEd first = stack_Ed.top();
	stack_Ed.pop();
	if (first == last) cout << "true";
	else cout << "false";
}