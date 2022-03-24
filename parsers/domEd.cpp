void do_pushIdentmEd()
{
	stack_identmEd.push("E" + strIdent);
	strIdent.clear();
}

void do_printVarmEd()
{
	string strmEd = "E" + strIdent;
	strIdent.clear();

	symtab_med::iterator it = vars_mEd.find(strmEd);
	if (it == vars_mEd.end())
	{
		string str = "undefined name " + strmEd;
		cerr << str << endl;
	}
	else
	{
		//cout << "[" << vars_mEd[strmEd].GetRow() << "x" << vars_mEd[strmEd].GetColumn() << "]" << endl;
		matrix<seriesEd> mat=vars_mEd[strmEd];
		for (unsigned l = 0; l < mat.GetRow(); l++)
		{
			for (unsigned c = 0; c < mat.GetColumn(); c++)
			{
				if (!mat(l, c).isEpsilon())
				{
					cout << strmEd << "(" << l << "," << c << ")=" << mat(l, c) << endl;					
				}
			}
		}
	}
}

void do_pushVarmEd()
{
	string strmEd = "E" + strIdent;
	strIdent.clear();

	symtab_med::iterator it = vars_mEd.find(strmEd);
	if (it == vars_mEd.end())
	{
		string str = "undefined name " + strmEd;
		cerr << str << endl;
		stack_mEd.push(matrix<seriesEd>(1, 1));
	}
	else
	{
		stack_mEd.push(vars_mEd[strmEd]);
	}
}

void do_assignmEd()
{
	string ident = stack_identmEd.top();
	stack_identmEd.pop();
	matrix<seriesEd> last = stack_mEd.top();
	vars_mEd[ident] = last;
	stack_mEd.pop();
	//cout << last;

	matrix<seriesEd> mat = last;
	for (unsigned l = 0; l < mat.GetRow(); l++)
	{
		for (unsigned c = 0; c < mat.GetColumn(); c++)
		{
			if (!mat(l, c).isEpsilon())
				cout << ident << "(" << l << "," << c << ")=" << mat(l, c) << endl;
		}
	}
}
void do_assignEntrymEd()
{
	string ident = stack_identmEd.top();
	stack_identmEd.pop();
	int co = vect_Int.back();
	vect_Int.pop_back();
	int li = vect_Int.back();
	vect_Int.pop_back();
	vars_mEd[ident](li, co) = stack_Ed.top();
	stack_Ed.pop();
}

void do_pushEntrymEd()
{
	string ident = stack_identmEd.top();
	stack_identmEd.pop();
	int co = vect_Int.back();
	vect_Int.pop_back();
	int li = vect_Int.back();
	vect_Int.pop_back();
	stack_Ed.push(vars_mEd[ident](li, co));
}


void do_pushMatEd()
{
	int co = vect_Int.back();
	vect_Int.pop_back();
	int li = vect_Int.back();
	vect_Int.pop_back();
	matrix<seriesEd> eps(li, co);
	stack_mEd.push(eps);
}



void do_kleenemEd()
{
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	last = last.star();
	stack_mEd.push(last);
}

void do_otimesmEd() {
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd>  first = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> res = first * last;
	stack_mEd.push(res);
}

void do_oplusmEd() {
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> first = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> res = first + last;
	stack_mEd.push(res);
}

void do_infmEd() {
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> first = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> res = first.inf(last);
	stack_mEd.push(res);
}

void do_lfracmEd() {
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> first = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> res = first.lfrac(last);
	stack_mEd.push(res);
}

void do_rfracmEd() {
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> first = stack_mEd.top();
	stack_mEd.pop();
	matrix<seriesEd> res = first.rfrac(last);
	stack_mEd.push(res);
}

void do_prcausmEd()
{
	matrix<seriesEd> last = stack_mEd.top();
	stack_mEd.pop();
	for (unsigned i = 0; i < last.GetRow(); i++)
	{
		for (unsigned j = 0; j < last.GetColumn(); j++)
		{
			last(i, j) = seriesEd::toCausal(last(i, j));
		}
	}
	stack_mEd.push(last);
}