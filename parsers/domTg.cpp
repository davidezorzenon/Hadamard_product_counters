void do_pushIdentmTg()
{
	stack_identmTg.push("T" + strIdent);
	strIdent.clear();
}

void do_printVarmTg()
{
	string strmTg = "T" + strIdent;
	strIdent.clear();

	symtab_mtg::iterator it = vars_mTg.find(strmTg);
	if (it == vars_mTg.end())
	{
		string str = "undefined name " + strmTg;
		cerr << str << endl;
	}
	else
	{
		//cout << vars_mTg[strmTg];
		
		matrix<seriesTg> mat = vars_mTg[strmTg];
		for (unsigned l = 0; l < mat.GetRow(); l++)
		{
			for (unsigned c = 0; c < mat.GetColumn(); c++)
			{
				if (!mat(l, c).isEpsilon())
					cout << strmTg << "(" << l << "," << c << ")=" << mat(l, c) << endl;
			}
		}
	}
}

void do_pushVarmTg()
{
	string strmTg = "T" + strIdent;
	strIdent.clear();

	symtab_mtg::iterator it = vars_mTg.find(strmTg);
	if (it == vars_mTg.end())
	{
		string str = "undefined name " + strmTg;
		cerr << str << endl;
		stack_mTg.push(matrix<seriesTg>(1, 1));
	}
	else
	{
		stack_mTg.push(vars_mTg[strmTg]);
	}
}

void do_assignmTg()
{
	string ident = stack_identmTg.top();
	stack_identmTg.pop();
	matrix<seriesTg> last = stack_mTg.top();
	vars_mTg[ident] = last;
	stack_mTg.pop();
	
	matrix<seriesTg> mat = last;
	for (unsigned l = 0; l < mat.GetRow(); l++)
	{
		for (unsigned c = 0; c < mat.GetColumn(); c++)
		{
			if (!mat(l, c).isEpsilon())
				cout << ident << "(" << l << "," << c << ")=" << mat(l, c) << endl;
		}
	}
}

void do_assignEntrymTg()
{
	string ident = stack_identmTg.top();
	stack_identmTg.pop();
	unsigned  co = vect_Uint.back();
	vect_Uint.pop_back();
	unsigned  li = vect_Uint.back();
	vect_Uint.pop_back();
	vars_mTg[ident](li, co) = stack_Tg.top();
	stack_Tg.pop();
}

void do_pushEntrymTg()
{
	string ident = stack_identmTg.top();
	stack_identmTg.pop();
	unsigned  co = vect_Uint.back();
	vect_Uint.pop_back();
	unsigned  li = vect_Uint.back();
	vect_Uint.pop_back();
	stack_Tg.push(vars_mTg[ident](li, co));
}

void do_pushMatTg()
{
	int co = vect_Int.back();
	vect_Int.pop_back();
	int li = vect_Int.back();
	vect_Int.pop_back();
	matrix<seriesTg> eps(li, co);
	stack_mTg.push(eps);
}

void do_kleenemTg()
{
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	last = last.star();
	stack_mTg.push(last);
}

void do_otimesmTg() {
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg>  first = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> res = first * last;
	stack_mTg.push(res);
}

void do_oplusmTg() {
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> first = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> res = first + last;
	stack_mTg.push(res);
}

void do_infmTg() {
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> first = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> res = first.inf(last);
	stack_mTg.push(res);
}

void do_lfracmTg() {
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> first = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> res = first.lfrac(last);
	stack_mTg.push(res);
}

void do_rfracmTg() {
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> first = stack_mTg.top();
	stack_mTg.pop();
	matrix<seriesTg> res = first.rfrac(last);
	stack_mTg.push(res);
}

void do_prcausmTg()
{
	matrix<seriesTg> last = stack_mTg.top();
	stack_mTg.pop();
	for (unsigned i = 0; i < last.GetRow(); i++)
	{
		for (unsigned j = 0; j < last.GetColumn(); j++)
		{
			last(i, j) = seriesTg::toCausal(last(i, j));
		}
	}
	stack_mTg.push(last);
}