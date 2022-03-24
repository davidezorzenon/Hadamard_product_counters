void do_pushIdentmMM()
{
	stack_identmMM.push("S" + strIdent);
	strIdent.clear();
}

void do_printVarmMM()
{
	string strmMM = "S" + strIdent;
	strIdent.clear();

	symtab_mmm::iterator it = vars_mMM.find(strmMM);
	if (it == vars_mMM.end())
	{
		string str = "undefined name " + strmMM;
		cerr << str << endl;
	}
	else
	{
		//cout << vars_mMM[strmMM];
		matrix<series> mat = vars_mMM[strmMM];
		for (unsigned l = 0; l < mat.GetRow(); l++)
		{
			for (unsigned c = 0; c < mat.GetColumn(); c++)
			{
				if (!mat(l, c).isEpsilon())
					cout << strmMM << "(" << l << "," << c << ")=" << mat(l, c) << endl;
			}
		}
	}
}

void do_pushVarmMM()
{
	string strmMM = "S" + strIdent;
	strIdent.clear();

	symtab_mmm::iterator it = vars_mMM.find(strmMM);
	if (it == vars_mMM.end())
	{
		string str = "undefined name " + strmMM;
		cerr << str << endl;
		stack_mMM.push(matrix<series>(1, 1));
	}
	else
	{
		stack_mMM.push(vars_mMM[strmMM]);
	}
}

void do_assignmMM()
{
	string ident = stack_identmMM.top();
	stack_identmMM.pop();
	matrix<series> last = stack_mMM.top();
	vars_mMM[ident] = last;
	stack_mMM.pop();
	//cout << last;
	matrix<series> mat = last;
	for (unsigned l = 0; l < mat.GetRow(); l++)
	{
		for (unsigned c = 0; c < mat.GetColumn(); c++)
		{
			if (!mat(l, c).isEpsilon())
				cout << ident << "(" << l << "," << c << ")=" << mat(l, c) << endl;
		}
	}
}

void do_assignEntrymMM()
{
	string ident = stack_identmMM.top();
	stack_identmMM.pop();
	unsigned  co = vect_Uint.back();
	vect_Uint.pop_back();
	unsigned  li = vect_Uint.back();
	vect_Uint.pop_back();
	vars_mMM[ident](li, co) = stack_MM.top();
	stack_MM.pop();
}

void do_pushEntrymMM()
{
	string ident = stack_identmMM.top();
	stack_identmMM.pop();
	unsigned  co = vect_Uint.back();
	vect_Uint.pop_back();
	unsigned  li = vect_Uint.back();
	vect_Uint.pop_back();
	stack_MM.push(vars_mMM[ident](li, co));
}

void do_pushMatMM()
{
	int co = vect_Int.back();
	vect_Int.pop_back();
	int li = vect_Int.back();
	vect_Int.pop_back();
	matrix<series> eps(li, co);
	stack_mMM.push(eps);
}

void do_kleenemMM()
{
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	last = last.star();
	stack_mMM.push(last);
}

void do_otimesmMM() {
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	matrix<series>  first = stack_mMM.top();
	stack_mMM.pop();
	matrix<series> res = first * last;
	stack_mMM.push(res);
}

void do_oplusmMM() {
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	matrix<series>  first = stack_mMM.top();
	stack_mMM.pop();
	matrix<series> res = first + last;
	stack_mMM.push(res);
}

void do_infmMM() {
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	matrix<series>  first = stack_mMM.top();
	stack_mMM.pop();
	matrix<series> res = first.inf(last);
	stack_mMM.push(res);
}

void do_lfracmMM() {
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	matrix<series>  first = stack_mMM.top();
	stack_mMM.pop();
	matrix<series> res = first.lfrac(last);
	stack_mMM.push(res);
}

void do_rfracmMM() {
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	matrix<series>  first = stack_mMM.top();
	stack_mMM.pop();
	matrix<series> res = first.rfrac(last);
	stack_mMM.push(res);
}

void do_prcausmMM()
{
	matrix<series> last = stack_mMM.top();
	stack_mMM.pop();
	for (unsigned i = 0; i < last.GetRow(); i++)
	{
		for (unsigned j = 0; j < last.GetColumn(); j++)
		{
			last(i, j) = last(i, j).prcaus();
		}
	}
	stack_mMM.push(last);
}
