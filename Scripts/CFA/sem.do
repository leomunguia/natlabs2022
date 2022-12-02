cd "C:\Users\Leonardo\Desktop\datos\analisis\AFC"
use "generalscores"

*model
*sem (aut -> q1 q6 q9 q13 q14 q15 q17 q18 q21 q23 q29 q32 q39 q41), latent(aut) standardized
*coeficiente de confiabilidad alpha
*alpha q1 q6 q9 q13 q14 q15 q17 q18 q21 q23 q29 q32 q39 q41
*coeficientes de comparación
*estat gof, stats(all)

*sem (pat -> q2 q5 q11 q16 q19 q25 q31 q33 q37 q40), latent (pat) standardized
*alpha q2 q5 q11 q16 q19 q25 q31 q33 q37 q40
*estat gof, stats(all)

*sem (tec -> q3 q7 q8 q26 q28 q30 q34 q38), latent (tec) standardized
*alpha q3 q7 q8 q26 q28 q30 q34 q38
*estat gof, stats(all)

*sem (dem -> q4 q10 q12 q20 q22 q24 q27 q35 q36), latent(dem) standardized
*alpha q4 q10 q12 q20 q22 q24 q27 q35 q36
*estat gof, stats(all)

*new model
*lambda =<.50 and p-value~~0

sem (aut -> q6 q9 q17 q23 q32), latent (aut) standardized
alpha q6 q9 q17 q23 q32
estat gof, stats(all)

sem (pat -> q2 q5 q11 q16 q31), latent(pat) standardized
alpha q2 q5 q11 q16 q31
estat gof, stats(all)

sem (tec -> q3 q7 q28), latent(tec) standardized
alpha q3 q7 q28
estat gof, stats(all)

sem (dem -> q4 q10 q12 q20 q22), latent(dem) standardized
alpha q4 q10 q12 q20 q22
estat gof, stats(all)

