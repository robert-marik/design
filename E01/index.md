# Základní numerické metody

[Výpočty zde](https://gist.github.com/robert-marik/07e509d2cfc2c7992d18e716ace795a8)

## Numerický odhad derivace

* Konečné diference, numerické derivování, [prezentace](https://user.mendelu.cz/marik/manim/Diference/)

## Newtonova metoda řešení rovnic

Newtonova metoda je metoda pro numerické řešení rovnice $$f(x)=0$$ na
základě postupného zpřesňování počátečního odhadu řešení
$x_0$. Využívá iterační schema $$x_{n+1}=x_n -
\frac{f(x_n)}{f'(x_n)}.$$ Metoda velmi ochotně konverguje (podmnky
konvergence je možno najít v literatuře) a tato konvergence je velmi
rychlá: s každým krokem se zdvojnásobuje počet desetinných míst, která
jsou správně.

Derivaci $f'(x)$ je možno vypočítat analyticky (preferováno, pokud je
dostupné) nebo pomocí centrální diference.

## Diskretizace obyčené diferenciální rovnice

Diferencální rovnice prvního řádu $$\frac {\mathrm dx}{\mathrm dt}=f(t,x)$$ se
zpravidla diskretizuje pomocí dopředné diference. Tj.
$$ \frac{x(t+h)-x(t)}{h} \approx f(t,x) $$
a odsud
$$x(t+h) \approx x(t) + h f(t,x).$$

## Diskretizace parciální diferenciální rovnice

Diskretizaci parciální diferenciální rovnice uvedeme přímo na příkladu.


Rovnice vedení tepla v 1D má v nejjednodušším tvaru (homogenní tyč, lineární materiálové vlastnosti) podobu
$$\rho c \frac{\partial T}{\partial t} = \lambda \frac{\partial^2 T}{\partial x^2}.$$
Zpravidla diskretizujeme čas pomocí dopředné derivace a dostáváme pro $T_i^j$ (dolní index pro polohu, horní index pro čas)
$$\frac{T_i^{j+1}-T_i^j}{\Delta t}\approx \frac{\lambda}{\rho c\Delta x^2}[T_{i-1}^j - 2T_i^j  + T_{i+1}^j]. $$
Odsud 
$$T_i^{j+1}\approx T_i^j +  \frac{\lambda \Delta t}{\rho c\Delta x^2}[T_{i-1}^j - 2T_i^j  + T_{i+1}^j]. $$

Je-li $T^j$ sloupcový vektor teplot, je možné psát
$$T^{j+1}=T^j + \alpha A T^j,$$
kde $\alpha =  \frac{\lambda \Delta t}{\rho c\Delta x^2}$ a
$$A=$$

Další možnosti diskretizace (viz [Wikipedie](https://en.wikipedia.org/wiki/Finite_difference_method)) mají výhodu větší stability, ale jsou náročnější na výpočet, protože je nutné řešit soustavu rovnic.