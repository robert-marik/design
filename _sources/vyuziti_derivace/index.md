# Využití derivace

Derivace je rychlost růstu, záporně vzatá derivace je rychlost poklesu. S derivacemi pracujeme všude tam, kde je nutné pracovat s rychlostí růstu nebo poklesu a děj není rovnoměrný, tj. není možné rychlost určovat podílem. Například při ochlazování kávy rychlost ochlazování souvisí s teplotním rozdílem mezi kávou a okolím a během ochlazování se tento teplotní rozdíl mění a mění se tedy i rychlost. 

Příklad: Model ochlazování kávy.

Káva se ochlazuje z výchozí teploty na teplotu místnosti. Rychlost ochlazování je úměrná teplotnímu rozdílu.

Formální zápis: Teplotu kávy $T$ je funkce času a souvisí s teplotou okolí $T_\intfy$. Výchozí teplota, tj. teplota v čase $t=0$ je $T_0$.

$$\frac{\mathrm dT}{\mathrm dt}=-k(T-T_0)$$


Další modely viz [Mateamtika](https://robert-marik.github.io/matematika/cviceni/cviceni02.html), příklady 2.4 až 2.10.


Diferenciální rovnice a jejich diskretizace

Lineární aproximace, [prezentace](https://user.mendelu.cz/marik/manim/Linearni_aproximace/)
$$f(x+h)\approx f(x) + \frac{\mathrm df}{\mathrm dx}(x)h$$
$$f(x)\approx f(x_0) + \frac{\mathrm df}{\mathrm dx}(x_0)(x-x_0)$$
Lineární aproximace v nule pro funkci procházející počátkem se vždy redukuje na přímou úměrnost. Konstutuční zákony jsou formulávány pomocí přímé úměrnosti ([Darcyho zákon](https://en.wikipedia.org/wiki/Darcy%27s_law), [Fickův zákon](https://en.wikipedia.org/wiki/Fick%27s_laws_of_diffusion), [Fourierův zákon](https://en.wikipedia.org/wiki/Thermal_conduction#Fourier's_law), [Hookův zákon](https://en.wikipedia.org/wiki/Hooke%27s_law))


