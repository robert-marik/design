# Aplikace derivací

* Lineární aproximace funkce jedné proměnné
* Jednorozměrné konstituční zákony
* Modely založené na derivacích, diferenciální rovnice


## Rovnice ochlazování

Uvažujme kávu o teplotě $T$ v prostředí o teplotě $T_0$. 

Newtonův zákon ochlazování: rychlost chladnutí kávy je přímo úměrná teplotnímu rozdílu mezi teplotou kávy a teplotou okolí.

Matematickým modelem tohoto zákona je počáteční úloha
$$\frac{\mathrm dT}{\mathrm dt} =  -k(T-T_\infty),\quad T(0)=T_0.$$

## Diferenciální rovnice

Diferenciální rovnice jsou matematické vztahy, které popisují, jak rychlost změny nějaké veličiny souvisí s její aktuální hodnotou. Jsou klíčové pro modelování a analýzu dynamických systémů v různých oblastech, jako jsou fyzika, biologie, ekonomie, inženýrství a další. Hrají roli i ve statice, například při popisu deformace nosníků.

## Aproximace derivací

Derivace je definována pomocí limitního přechodu, což může být v praxi obtížné použít. Proto se často používají různé aproximace derivací, které umožňují odhadnout hodnotu derivace na základě hodnot funkce v několika bodech.

* Dopředná poměrná diference $f'(x)\approx \frac{f(x+h)-f(x)}{h}$
* Centrální diference $f'(x)\approx \frac{f(x+h)-f(x-h)}{2h}$
* Zpětná poměrná diference $f'(x)\approx \frac{f(x)-f(x-h)}{h}$


## Lineární aproximace funkce jedné proměnné


V následujících pasážích se budeme věnovat lineární aproximaci funkce. To je nahrazení funkce s jakkoli složitým funkčním předpisem funkcí s tím nejjednodušším možným předpisem: lineární funkcí. Tím se pochopitelně dopouštíme jisté nepřesnosti a je to něco za něco: k popisu úlohy máme poté k dispozici jednodušší funkce, ale výpočty jsou zatíženy chybou. Někdy tato chyba může být tak velká, že je idea lineární aproximace naprosto nepoužitelná. Ale jindy se jedná o nástroj, který prakticky neřešitelnou úlohu převede na úlohu snadno zvládnutelnou. Linearizace nelineárních úloh je jedním ze základních inženýrských postupů. V mnoha případech dává samotná dobré výsledky a řeší zadaný problém, v jiných případech slouží jako odrazový můstek ke zvládnutí nelineárního problému.

### Lineární aproximace v 1D

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

Příklady lineární aproximace:

V okolí bodu $x=0$ platí následující lineární aproximace:

1. $\sqrt{1+x}\approx 1+\frac{1}{2}x$,
2. $\frac{1}{\sqrt{1-x}}\approx 1+\frac{1}{2}x$,
3. $\sin x\approx x$,
4. $\cos x\approx 1$, 
5. $\begin{pmatrix} \cos(x) & -\sin(x)\\ \sin(x) & \cos(x)\end{pmatrix}\approx \begin{pmatrix} 1 & -x\\ x & 1\end{pmatrix}$.

## Jednorozměrné konstituční zákony

Konstituční zákony jsou matematické vztahy, které popisují chování materiálů a systémů v závislosti na vnějších faktorech, jako jsou teplota, tlak, objem, atd. Tyto zákony jsou klíčové pro pochopení a předpověď chování materiálů a systémů v různých podmínkách.

Příklady jednorozměrných konstitučních zákonů:
1. **Hookův zákon**: Popisuje vztah mezi silou $F$ působící na pružinu a její deformací $x$. Matematicky je vyjádřen jako $F = kx$, kde $k$ je tuhost pružiny.
3. **Fourierův zákon**: Popisuje vztah mezi teplotním gradientem a tepelným tokem v materiálu. Matematicky je vyjádřen jako $q = -k \nabla T$, kde $q$ je tepelný tok, $k$ je tepelná vodivost a $T$ je teplota.
1. **Darcyho zákon**: Popisuje vztah mezi difuzním tokem a gradientem koncentrace v porézním médiu. Matematicky je vyjádřen jako $j = -D \nabla c$, kde $J$ je difuzní tok, $D$ je difuzní koeficient a $c$ je koncentrace.

