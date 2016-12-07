%List of all aminoacids of the form: letter, long name, short name

aminoname(g,'Glycine','Gly').
aminoname(p,'Proline','Pro').
aminoname(a,'Alanine','Ala').
aminoname(v,'Valine','Val').
aminoname(l,'Leucine','Leu').
aminoname(i,'Isoleucine','Ile').
aminoname(m,'Methionine','Met').
aminoname(c,'Cysteine','Cys').
aminoname(f,'Phenylalanine','Phe').
aminoname(y,'Tyrosine','Tyr').
aminoname(w,'Tryptophan','Trp').
aminoname(h,'Histidine','His').
aminoname(k,'Lysine','Lys').
aminoname(r,'Arginine','Arg').
aminoname(q,'Glutamine','Gln').
aminoname(n,'Asparagine','Asn').
aminoname(e,'Glutamic Acid','Glu').
aminoname(d,'Aspartic Acid','Asp').
aminoname(s,'Serine','Ser').
aminoname(t,'Threonine','Thr').


%Aminoacid dna sequence of the form: aminoacid letter, list of dna

aminotodna(a,[g,c,a]).
aminotodna(a,[g,c,c]).
aminotodna(a,[g,c,g]).
aminotodna(a,[g,c,t]).
aminotodna(c,[t,g,c]).
aminotodna(c,[t,g,t]).
aminotodna(d,[g,a,c]).
aminotodna(d,[g,a,t]).
aminotodna(e,[g,a,a]).
aminotodna(e,[g,a,g]).
aminotodna(f,[t,t,c]).
aminotodna(f,[t,t,t]).
aminotodna(g,[g,g,a]).
aminotodna(g,[g,g,c]).
aminotodna(g,[g,g,g]).
aminotodna(g,[g,g,t]).
aminotodna(h,[c,a,c]).
aminotodna(h,[c,a,t]).
aminotodna(i,[a,t,a]).
aminotodna(i,[a,t,c]).
aminotodna(i,[a,t,t]).
aminotodna(k,[a,a,a]).
aminotodna(k,[a,a,g]).
aminotodna(l,[c,t,a]).
aminotodna(l,[c,t,c]).
aminotodna(l,[c,t,g]).
aminotodna(l,[c,t,t]).
aminotodna(l,[t,t,a]).
aminotodna(l,[t,t,g]).
aminotodna(m,[a,t,g]).
aminotodna(n,[a,a,c]).
aminotodna(n,[a,a,t]).
aminotodna(p,[c,c,a]).
aminotodna(p,[c,c,c]).
aminotodna(p,[c,c,g]).
aminotodna(p,[c,c,t]).
aminotodna(q,[c,a,a]).
aminotodna(q,[c,a,g]).
aminotodna(r,[a,g,a]).
aminotodna(r,[a,g,g]).
aminotodna(r,[c,g,a]).
aminotodna(r,[c,g,c]).
aminotodna(r,[c,g,g]).
aminotodna(r,[c,g,t]).
aminotodna(s,[a,g,c]).
aminotodna(s,[a,g,t]).
aminotodna(s,[t,c,a]).
aminotodna(s,[t,c,c]).
aminotodna(s,[t,c,g]).
aminotodna(s,[t,c,t]).
aminotodna(t,[a,c,a]).
aminotodna(t,[a,c,c]).
aminotodna(t,[a,c,g]).
aminotodna(t,[a,c,t]).
aminotodna(v,[g,t,a]).
aminotodna(v,[g,t,c]).
aminotodna(v,[g,t,g]).
aminotodna(v,[g,t,t]).
aminotodna(w,[t,g,g]).
aminotodna(y,[t,a,c]).
aminotodna(y,[t,a,t]).


% Aminoacid classifications of the form:
% aminoacid short name, class type, class value

aminoclass('Ala','Hydropathy','hydrophobic').
aminoclass('Arg','Hydropathy','hydrophilic').
aminoclass('Asn','Hydropathy','hydrophilic').
aminoclass('Asp','Hydropathy','hydrophilic').
aminoclass('Cys','Hydropathy','hydrophobic').
aminoclass('Gln','Hydropathy','hydrophilic').
aminoclass('Glu','Hydropathy','hydrophilic').
aminoclass('Gly','Hydropathy','neutral').
aminoclass('His','Hydropathy','neutral').
aminoclass('Ile','Hydropathy','hydrophobic').
aminoclass('Leu','Hydropathy','hydrophobic').
aminoclass('Lys','Hydropathy','hydrophilic').
aminoclass('Met','Hydropathy','hydrophobic').
aminoclass('Phe','Hydropathy','hydrophobic').
aminoclass('Pro','Hydropathy','neutral').
aminoclass('Ser','Hydropathy','neutral').
aminoclass('Thr','Hydropathy','neutral').
aminoclass('Trp','Hydropathy','hydrophobic').
aminoclass('Tyr','Hydropathy','neutral').
aminoclass('Val','Hydropathy','hydrophobic').

aminoclass('Ala','Volume','very small').
aminoclass('Arg','Volume','large').
aminoclass('Asn','Volume','small').
aminoclass('Asp','Volume','small').
aminoclass('Cys','Volume','small').
aminoclass('Gln','Volume','medium').
aminoclass('Glu','Volume','medium').
aminoclass('Gly','Volume','very small').
aminoclass('His','Volume','medium').
aminoclass('Ile','Volume','large').
aminoclass('Leu','Volume','large').
aminoclass('Lys','Volume','large').
aminoclass('Met','Volume','large').
aminoclass('Phe','Volume','very large').
aminoclass('Pro','Volume','small').
aminoclass('Ser','Volume','very small').
aminoclass('Thr','Volume','small').
aminoclass('Trp','Volume','very large').
aminoclass('Tyr','Volume','very large').
aminoclass('Val','Volume','medium').

aminoclass('Ala','Chemical','aliphatic').
aminoclass('Arg','Chemical','basic').
aminoclass('Asn','Chemical','amide').
aminoclass('Asp','Chemical','acidic').
aminoclass('Cys','Chemical','sulfur').
aminoclass('Gln','Chemical','amide').
aminoclass('Glu','Chemical','acidic').
aminoclass('Gly','Chemical','aliphatic').
aminoclass('His','Chemical','basic').
aminoclass('Ile','Chemical','aliphatic').
aminoclass('Leu','Chemical','aliphatic').
aminoclass('Lys','Chemical','basic').
aminoclass('Met','Chemical','sulfur').
aminoclass('Phe','Chemical','aromatic').
aminoclass('Pro','Chemical','aliphatic').
aminoclass('Ser','Chemical','hydroxyl').
aminoclass('Thr','Chemical','hydroxyl').
aminoclass('Trp','Chemical','aromatic').
aminoclass('Tyr','Chemical','aromatic').
aminoclass('Val','Chemical','aliphatic').

aminoclass('Ala','Charge','uncharged').
aminoclass('Arg','Charge','positive charged').
aminoclass('Asn','Charge','uncharged').
aminoclass('Asp','Charge','negative charged').
aminoclass('Cys','Charge','uncharged').
aminoclass('Gln','Charge','uncharged').
aminoclass('Glu','Charge','negative charged').
aminoclass('Gly','Charge','uncharged').
aminoclass('His','Charge','positive charged').
aminoclass('Ile','Charge','uncharged').
aminoclass('Leu','Charge','uncharged').
aminoclass('Lys','Charge','positive charged').
aminoclass('Met','Charge','uncharged').
aminoclass('Phe','Charge','uncharged').
aminoclass('Pro','Charge','uncharged').
aminoclass('Ser','Charge','uncharged').
aminoclass('Thr','Charge','uncharged').
aminoclass('Trp','Charge','uncharged').
aminoclass('Tyr','Charge','uncharged').
aminoclass('Val','Charge','uncharged').

aminoclass('Ala','Polarity','nonpolar').
aminoclass('Arg','Polarity','polar').
aminoclass('Asn','Polarity','polar').
aminoclass('Asp','Polarity','polar').
aminoclass('Cys','Polarity','nonpolar').
aminoclass('Gln','Polarity','polar').
aminoclass('Glu','Polarity','polar').
aminoclass('Gly','Polarity','nonpolar').
aminoclass('His','Polarity','polar').
aminoclass('Ile','Polarity','nonpolar').
aminoclass('Leu','Polarity','nonpolar').
aminoclass('Lys','Polarity','polar').
aminoclass('Met','Polarity','nonpolar').
aminoclass('Phe','Polarity','nonpolar').
aminoclass('Pro','Polarity','nonpolar').
aminoclass('Ser','Polarity','polar').
aminoclass('Thr','Polarity','polar').
aminoclass('Trp','Polarity','nonpolar').
aminoclass('Tyr','Polarity','polar').
aminoclass('Val','Polarity','nonpolar').














