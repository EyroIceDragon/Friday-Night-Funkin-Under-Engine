function Get_Accuracy_Rank(acc) {
	if (acc == NaN) return "[c_aqua]None[/c]";
    if (acc >= 100) return "[c_aqua]S+[/c]";
    if (acc >= 95)  return "[c_aqua]S[/c]";
    if (acc >= 90)  return "[c_lime]A[/c]";
    if (acc >= 80)  return "[c_yellow]B[/c]";
    if (acc >= 70)  return "[c_orange]C[/c]";
    if (acc >= 60)  return "[c_orange]D[/c]";
    return "[c_red]F[/c]";
}