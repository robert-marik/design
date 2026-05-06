# Základní numerické metody

[Výpočty zde](https://gist.github.com/robert-marik/07e509d2cfc2c7992d18e716ace795a8)

## Numerický odhad derivace


Základním přístupem při numerickém odhadu derivace je vynechání limitního přechodu v definici derivace. Pro funkci jedné proměnné a její derivaci $$\frac{\mathrm df}{\mathrm dx}=\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$$ tedy dostáváme $$\frac{\mathrm df}{\mathrm dx}\approx\frac{f(x+h)-f(x)}{h}.$$ Okamžitá rychlost je nahrazena průměrnou rychlostí na intervalu $(x,x+h).$ Tento podíl se nazývá *dopředná poměrná diference* nebo zkráceně *dopředná diference*. Pokud  použijeme tento postup pro parciální derivace, dostáváme $$\frac{\partial f}{\partial x}\approx\frac{f(x+\Delta x,y)-f(x,y)}{\Delta x}$$ a $$\frac{\partial f}{\partial y}\approx\frac{f(x,y+\Delta y)-f(x,y)}{\Delta y}.$$

Přesnější odhady založené na detailnější analýze poskytnou přesnější formule pro aproximace první a druhé derivace ve tvaru $$f'(x)=\frac{\mathrm d f}{\mathrm dx}\approx  \frac{f(x+h)-f(x-h)}{2h}  $$ a $$f''(x)=\frac{\mathrm d^2f}{\mathrm dx^2}\approx  \frac{f(x-h)-2f(x)+f(x+h)}{h^2}.  $$
Analogicky pro parciální derivaci podle $x$
$$\frac{\partial f}{\partial x}\approx  \frac{f(x+h,y)-f(x-h,y)}{2h}  $$
a
$$\frac{\partial^2f}{\partial x^2}\approx  \frac{f(x-h,y)-2f(x,y)+f(x+h,y)}{h^2}.$$
Tato aproximace první derivace používá *centrální diferenci* a je přesnější než aproximace založená na dopředné diferenci, protože je založena na přesnější aproximaci funkce $f$. 

Analogicky je možno nalézt aproximace parciálních derivací. V následujícím jsou vypsány i s odhadem chyby.

$$\begin{aligned}\frac{\partial f}{\partial x}&=  \frac{f(x+h,y)-f(x,y)}{h}+O(h) \cr \frac{\partial f}{\partial x}&=  \frac{f(x+h,y)-f(x-h,y)}{2h}+O(h^2)\cr\frac{\partial^2 f}{\partial x^2}&=  \frac{f(x-h,y)-2f(x,y)+f(x+h,y)}{h^2}+O(h^2)\end{aligned}$$
$$\begin{aligned} \frac{\partial f}{\partial y}&=  \frac{f(x,y+h)-f(x,y)}{h}+O(h) \cr \frac{\partial f}{\partial y}&=  \frac{f(x,y+h)-f(x,y-h)}{2h}+O(h^2)\cr\frac{\partial^2 f}{\partial y^2}&=  \frac{f(x,y-h)-2f(x,y)+f(x,y+h)}{h^2}+O(h^2)\end{aligned}$$	


Konečné diference, numerické derivování, [prezentace](https://user.mendelu.cz/marik/manim/Diference/)



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
$A$ je matice která má v hlavní diagonále číslo $-2$, ve dvou vedlejších diagonálách číslo $1$ a první a druhý řádek jsou uzpůsobeny podle okrajových podmínek. 

Další možnosti diskretizace (viz [Wikipedie](https://en.wikipedia.org/wiki/Finite_difference_method)) mají výhodu větší stability, ale jsou náročnější na výpočet, protože je nutné řešit soustavu rovnic.
