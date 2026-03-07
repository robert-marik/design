# Aplikace derivací

* Lineární aproximace funkce jedné proměnné - komplikované funkční předpisy
  nahradíme lineární funkcí, která je jednodušší a přitom nám umožní odhadnout
  hodnotu funkce v okolí zadaného bodu. Mnoho inženýrských úloh se velmi
  zjednoduší, pouze za malou cenu v podobě určité ztráty přesnosti.
* Jednorozměrné konstituční zákony - matematické vztahy, které popisují chování
  materiálů a systémů v závislosti na vnějších faktorech, jako jsou teplota,
  tlak, objem, atd. Tyto zákony jsou klíčové pro pochopení a předpověď chování
  materiálů a systémů v různých podmínkách. Příklady jsou Hookův zákon,
  Fourierův zákon, Darcyho zákon. Formálně mají jednotnou podobu a derivace nám
  umožní pochopit, proč tomu tak je.
* Modely založené na derivacích, diferenciální rovnice. Diferenciální rovnice
  jsou matematické vztahy, které popisují, jak rychlost změny nějaké veličiny
  souvisí s její aktuální hodnotou. Jsou klíčové pro modelování a analýzu
  dynamických systémů v různých oblastech, jako jsou fyzika, biologie, ekonomie,
  inženýrství a další. Hrají roli i ve statice, například při popisu deformace
  nosníků.


## Rovnice ochlazování

Uvažujme kávu o teplotě $T$ v prostředí o teplotě $T_0$. 

```{prf:remark} Newtonův zákon ochlazování
:nonumber:
Rychlost s jakou se mění teplota tělesa v kontaktu s okolím je přímo úměrná rozdílu teploty tělesa a teploty okolí.
```

<div class='obtekat'>

```{figure} https://raw.githubusercontent.com/robert-marik/desing-images/f96df3eaad2e59973523d9204c0f18f76adc2f0c/coffee.png
Newtonův zákon ochlazování popisuje, jak se teplota kávy mění v závislosti na rozdílu mezi teplotou kávy a teplotou okolí.
```
</div>

Matematickým modelem tohoto zákona je počáteční úloha
$$\frac{\mathrm dT}{\mathrm dt} =  -k(T-T_\infty),\quad T(0)=T_0.$$

Jedná se o přirozený překlad slovního popisu do matematického jazyka. Obsahuje
rychlost zmeny teploty kávy (derivaci), přímou úměrnost (násobení konstantou
$k$) a rozdíl teploty kávy a teploty okolí ($T-T_\infty$).

* Tato rovnice nám umožní pochopit, jak se teplota kávy mění v čase a jak rychle se ochlazuje.
* V rovnici je obsaženo, že dynamika ochlazování s časem klesá, protože jak se
  káva ochlazuje, rozdíl teplot mezi kávou a okolím se zmenšuje.
* Rovnice umožňuje modelovat různé scénáře a měnit vlastnosti hrnku i okolí a
  sledovat, jak se to projeví na celkovém průběhu děje. 

## Diferenciální rovnice

Diferenciální rovnice jsou matematické vztahy, které popisují, jak rychlost změny nějaké veličiny souvisí s její aktuální hodnotou. Jsou klíčové pro modelování a analýzu dynamických systémů v různých oblastech, jako jsou fyzika, biologie, ekonomie, inženýrství a další. Hrají roli i ve statice, například při popisu deformace nosníků.

## Aproximace derivací

Derivace je definována pomocí limitního přechodu

$$\frac{\mathrm df}{\mathrm dx} = \lim_{h \to 0} \frac{f(x+h)-f(x)}{h},$$

což může být v praxi obtížné použít. Proto se často používají různé aproximace
derivací, které umožňují odhadnout hodnotu derivace na základě hodnot funkce v
několika bodech.

* Dopředná poměrná diference $\frac{\mathrm df}{\mathrm dx}\approx \frac{f(x+h)-f(x)}{h}$
* Centrální diference $\frac{\mathrm df}{\mathrm dx}\approx \frac{f(x+h)-f(x-h)}{2h}$
* Zpětná poměrná diference $\frac{\mathrm df}{\mathrm dx}\approx \frac{f(x)-f(x-h)}{h}$

## Převod rovnice ochlazování na tvar s konečnými diferencemi

Rovnici ochlazování můžeme přepsat do tvaru s konečnými diferencemi, což nám umožní tuto rovnici numericky řešit.

$$\frac{T(t+h)-T(t)}{h} = -k(T(t)-T_\infty)$$

$$T(t+h) = T(t) - kh(T(t)-T_\infty)$$

Pseudokód pro numerické řešení rovnice ochlazování:

```
T = T0
for t in range(0, max_time, h):
    T = T - k * h * (T - T_inf)
```

Python kód pro numerické řešení rovnice ochlazování:

```python
import numpy as np
import matplotlib.pyplot as plt
# Parametry
T0 = 100  # Počáteční teplota kávy
T_inf = 20  # Teplota okolí
k = 0.1  # Koeficient ochlazování
h = 0.1  # Krok časového intervalu
max_time = 60  # Maximální čas pro simulaci
# Inicializace
times = np.arange(0, max_time, h)
T = np.zeros_like(times)
T[0] = T0
# Numerické řešení
for i in range(1, len(times)):
    T[i] = T[i-1] - k * h * (T[i-1] - T_inf)
# Graf
plt.plot(times, T)
plt.xlabel('Čas (min)')
plt.ylabel('Teplota kávy (°C)')
plt.title('Ochladzování kávy podle Newtonova zákona')
plt.grid()
plt.show()
``` 

## Lineární aproximace funkce jedné proměnné


V následujících pasážích se budeme věnovat lineární aproximaci funkce. To je nahrazení funkce s jakkoli složitým funkčním předpisem funkcí s tím nejjednodušším možným předpisem: lineární funkcí. Tím se pochopitelně dopouštíme jisté nepřesnosti a je to něco za něco: k popisu úlohy máme poté k dispozici jednodušší funkce, ale výpočty jsou zatíženy chybou. Někdy tato chyba může být tak velká, že je idea lineární aproximace naprosto nepoužitelná. Ale jindy se jedná o nástroj, který prakticky neřešitelnou úlohu převede na úlohu snadno zvládnutelnou. Linearizace nelineárních úloh je jedním ze základních inženýrských postupů. V mnoha případech dává samotná dobré výsledky a řeší zadaný problém, v jiných případech slouží jako odrazový můstek ke zvládnutí nelineárního problému.

### Lineární aproximace v 1D

<div class='obtekat'>

```{figure} https://robert-marik.github.io/matematika/_images/linapprox.svg
Lineární aproximace funkce. Při dostatečném zvětšení se graf funkce zdá být přibližně lineární.
```

</div>



Pokud se funkce mění, můžeme odhad změny z předchozího odstavce přičíst k
funkční hodnotě a tím máme odhad funkční hodnoty po změně. Toto je
principem lineární aproximace, neuvěřitelně jednoduché a přitom velice
mocné techniky používané inženýry k tomu, aby se popis problémů a
řešení úloh vůbec daly efektivně zvládnout.

```{prf:theorem} Lineární aproximace
:nonumber:

Buď $f:\mathbb R\to\mathbb R$ funkce, která má derivaci. V okolí bodu $x_0$ platí přibližný vzorec $$f(x)\approx f(x_0)+ f'(x_0)(x-x_0)$$ neboli
$$f(x)\approx f(x_0)+ \frac{\mathrm df(x_0)}{\mathrm dx}(x-x_0).$$
```

```{prf:remark} Slovní interpretace vzorce pro lineární aproximaci
:nonumber:
 Výše uvedený vzorec není těžké rozšifrovat.

* Veličina $f(x)$ je funkční hodnota v bodě $x$, tu chceme odhadnout.
* Veličina $f(x_0)$ je známá funkční hodnota v bodě $x_0$, to je
ýchozí bod pro odhad.
* Veličina $f'(x_0)$ je odhad změny veličiny $f$ způsobený jednotkovou změnou vstupních dat (zvýšení hodnoty $x_0$ o jednotku). Tento faktor ještě v dalším kroku musíme přizpůsobit tomu, že změna vstupních dat není jednotková, což uděláme s využitím přímé úměrnosti.
* Veličina $f'(x_0)(x-x_0)$ je odhad změny veličiny $f$ vyvolané
změnou veličiny $x$ z $x_0$ o $\Delta x=x-x_0$ tak, jak jsme jej
používali v minulé přednášce.
```

```{prf:remark} Alternativní vzorec pro lineární aproximaci
:nonumber:
 Vzorec pro lineární aproximaci se často píše v ekvivalentním tvaru
$$f(x+h)\approx f(x)+f'(x)h,$$
což získáme dosazením $x+h$ za $x$ a $x$ za $x_0$.
```

```{prf:remark} Význam vzorce pro lineární aproximaci
:nonumber:

* Vzorec umožňuje složitý funkční předpis předpisem jednodušším (lineární funkce jsou jedny z nejtrivilálnějších). 
* K použití vzorce stačí znát jeden bod grafu a funkční hodnotu a hodnotu derivace v tomto bodě.
* Aproximace je pouze lokální, použitelná pouze v určitém okolí uvažovaného bodu. Jak velké toto okolí může být a jaké chyby se dopouštíme při lineární aproximaci je různé pro různé funkce. Obecně platí, že čím blíže jsme k bodu $x_0$, tím je tato aproximace přesnější.
```

manim:Linearni_aproximace|aOvVJzeWy3o|Lineární aproximace může pomoci zjednodušit komplikované funkční vztahy v případě, kdy vstupní data nejsou příliš variabilní.

**Příklady lineární aproximace** 
V okolí bodu $x=0$ platí následující lineární aproximace

1. $\sqrt{1+x}\approx 1+\frac{1}{2}x$
2. $\frac{1}{\sqrt{1-x}}\approx 1+\frac{1}{2}x$
3. $\sin x\approx x$
4. $\cos x\approx 1$
5. $\begin{pmatrix} \cos(x) & -\sin(x)\\ \sin(x) & \cos(x)\end{pmatrix}\approx \begin{pmatrix} 1 & -x\\ x & 1\end{pmatrix}$


## Jednorozměrné konstituční zákony

Konstituční zákony jsou matematické vztahy, které popisují chování materiálů a systémů v závislosti na vnějších faktorech, jako jsou teplota, tlak, objem, atd. Tyto zákony jsou klíčové pro pochopení a předpověď chování materiálů a systémů v různých podmínkách.

```{prf:remark} Příklady konstitučních zákonů:
:nonumber:

1. **Hookův zákon**: Popisuje vztah mezi silou $F$ působící na pružinu a její deformací $x$. Matematicky je vyjádřen jako $$F = kx,$$ kde $k$ je tuhost pružiny.
3. **Fourierův zákon**: Popisuje vztah mezi rychlostí poklesu teploty a tepelným tokem v materiálu. Matematicky je vyjádřen vztahem $$q = -k \frac{dT}{dx},$$ kde $q$ je tepelný tok, $k$ je tepelná vodivost a $T$ je teplota.
1. **Fickův zákon**: Popisuje vztah mezi difuzním tokem a gradientem koncentrace v porézním médiu. Matematicky je vyjádřen vztahem $$j = -D \frac{dc}{dx},$$ kde $j$ je difuzní tok, $D$ je difuzní koeficient a $c$ je koncentrace.
```

