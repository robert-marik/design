# Integrál



## Neurčitý integrál

Představíme nástroj, který nám umožní z rychlosti, s jakou se mění veličina $f$, určit rovnici
udávající závislost veličiny $f$ na čase.

```{prf:definition} Neurčitý integrál
:nonumber:
 Řekneme, že funkce $F$ je *primitivní funkcí* k funkci $f$ na intervalu $I$, jestliže platí $$F'(x)=f(x)$$ na intervalu $I$. Množina všech primitivních funkcí k funkci $f$ se nazývá *neurčitý integrál* funkce $f$ a značí $$\int f(x)\,\mathrm dx.$$
```

Otázku (ne-)jednoznačnosti řeší následující věta.

```{prf:theorem} Jednoznačnost primitivní funkce
:nonumber:
 Primitivní funkce je dána jednoznačně, až na aditivní konstantu.

* Je-li $F$ primitivní funkcí k funkci $f$ na intervalu $I$,
platí totéž i pro funkci $G(x)=F(x)+c$, kde $c\in\mathbb R$.
* Jsou-li $F$ a $G$ primitivní funkce k téže funkci $f$ na
intervalu $I$, existuje $c\in\mathbb R$ takové, že
$$     F(x)=G(x)+c $$ na $I$.
```


**Příklad.** Funkce $x^2$ má primitivní funkce například $\frac 13 x^3$, nebo $\frac 13 x^3+7$,  nebo $\frac 13 x^3+\pi$, protože derivace všech těchto tří funkcí je $x^2$. Platí $$\int x^2 \,\mathrm dx=\frac 13 x^3+c,\qquad c\in\mathbb R.$$


```{prf:remark} Vzorce pro výpočet integrálu

1. $\displaystyle\int c\,\mathrm dx=cx+C$
1. $\displaystyle\int  x^n\,\mathrm dx= \frac{x^{n+1}}{n+1}+C$
1. $\displaystyle\int e^{ax}\,\mathrm dx=\frac 1a e^{ax}+C$

```

### Funkční předpis z rychlosti změny a výchozího stavu

*Uvažujme těleso, jehož teplota klesá známou rychlostí. Derivace teploty podle času je $\frac{\mathrm dT}{\mathrm dt}=-0.1 e^{-0.01
t} \,{}^\circ \mathrm C/\mathrm{min}.$ Cílem je najít teplotu jako
funkci času. Dodatečná informace je, že počáteční teplota je $28
^\circ \mathrm{C}$.*

Použijeme skutečnost, že integrál konstantního násobku je konstantní násobek integrálu a vzorec $$\int e^{ax}\,\mathrm{d}x=\frac 1a e^{ax}+c.$$
Teplota jako
funkce času je dána integrálem
\dm $$T=\int - 0.1 e^{-0.01t} \,\mathrm dt=\frac{-0.1}{-0.01} e^{-0.01t}+C = 10 e^{-0.01t}+C.$$
Hodnota $C$ souvisí s počáteční teplotou. Protože počáteční teplota je $28 ^\circ \mathrm{C}$, dosadíme do vztahu
pro $T$ hodnoty $T=28 ^\circ \mathrm{C}$ a $t=0$ a ze vzniklé rovnice
určíme $C$. Dostáváme takto podmínku $$28=10 e^0 +C,$$ která implikuje
$C=18 ^\circ \mathrm C$. Funkce udávající závislost
teploty místnosti na čase je $$T=\left(18+10 e^{-0.01
t}\right)\,{}^\circ \mathrm C.$$


**Poznámka (vlhkost dřeva elektrickou metodou).** Podobný výpočet se využívá u měření elektrického odporu dřeva pro stanovení vlhkosti. Protože elektrický odpor dřeva je velký, není vhodné pro určení elektrického odporu použít Ohmův zákon a změřený proud a napětí. Jedna z možností je měření času nutného k nabití nebo vybití kondenzátoru přes odpor. V případě nabíjení proud exponenciálně klesá (zdůvodníme později v přednášce věnované diferenciálním rovnicím) a proto (díky elektrickým vlastnostem kondenzátoru) exponenciálně klesá i rychlost, s jakou roste napětí na kondenzátoru. Toto napětí je nutné pro výpočet odporu. Pokud známe rychlost, s jakou se napětí mění, určíme napětí integrováním a znalostí napětí na začátku nabíjení.

```{prf:remark} Veličina vypočtená z rychlosti své změny
:nonumber:
 Pokud se veličina $f(t)$ mění v čase rychlostí $r(t)$, platí $$f(t)=\int r(t)\,\mathrm dt,$$ přičemž pravá strana je dána jednoznačně až na aditivní konstantu. To koresponduje s pozorováním, že rychlost změn k jednoznačné identifikaci časového průběhu měnící se veličiny nestačí. Je potřeba mít zadán ještě výchozí stav.
```



## Určitý integrál (Newtonův)

Představíme si mírnou modifikaci neurčitého integrálu. Rychlost změny
nebudeme používat k hledání předpisu funkce, ale budeme hledat změnu
funkce na zadaném intervalu.

```{prf:definition} Newtonův určitý integrál
:nonumber:
 Buď $f$ funkce a $F$ její
primitivní funkce na intervalu $I$. Buď $[a,b]\subset I$ podinterval v
$I$. *Určitým integrálem funkce $f$ na intervalu $[a,b]$* rozumíme
veličinu označenou a definovanou vztahem $$\int_a^b f(x)\mathrm
dx:=F(b)-F(a).$$
```

```{prf:remark} Změna veličiny vypočtená pomocí rychlosti
:nonumber:
 Pokud se veličina $f(t)$ mění v časovém intervalu od $t=a$ do $t=b$ rychlostí $r(t)$, je změna veličiny $f$ za tento časový okamžik rovna $$\Delta f=f(b)-f(a)=\int_a^b r(t)\,\mathrm dt.$$
```


**Označení.** Výraz $F(b)-F(a)$, tj. změnu funkce $F(x)$ na intervalu
$[a,b]$, označujeme také $[F(x)]_a^b$. Tento zápis se často používá
jako mezivýpočet při výpočtu určitého integrálu.
$$\int_0^1 x^2 \,\mathrm dx=\left[\frac 13 x^3\right]_0^1=\frac 13 (1)^3 -\frac 13 (0)^3=\frac 13$$


### Změna funkce z rychlosti změny (časová změna teploty)

*Uvažujme těleso, jehož teplota klesá známou rychlostí. Derivace teploty podle času je 
$\frac{\mathrm dT}{\mathrm dt}=-0.1 e^{-0.01 t} \,{}^\circ \mathrm
C/\mathrm{min}.$ Chceme určit pokles teploty za první hodinu a pokles teploty za druhou hodinu.*

Neurčitý integrál
$$\int - 0.1 e^{-0.01t} \,\mathrm dt=10 e^{-0.01t}+C$$
jsme vypočítali v podkapitole s neurčitým integrálem. Potřebovali jsme
ještě znát počáteční hodnotu teploty a našli jsme teplotu jako funkci
času.

Nyní zapojíme určitý integrál. Nepotřebujeme informaci o počáteční
teplotě, ale zato jsme schopni určit jenom změnu teploty za daný
časový interval. Za první hodinu bude změna teploty
\dm$$\int_0^{60} - 0.1 e^{-0.01t} \,\mathrm dt=\left[10 e^{-0.01t}\right]_0^{60}= 10 e^{-0.01\cdot 60} - 10 e^{-0.01\cdot 0}\approx  -4.5 ^\circ \mathrm C.$$
Za druhou hodinu bude změna teploty
\dm$$\int_{60}^{120} - 0.1 e^{-0.01t} \,\mathrm dt=\left[10 e^{-0.01t}\right]_{60}^{120}= 10 e^{-0.01\cdot 120} - 10 e^{-0.01\cdot 60}\approx  -2.5 ^\circ \mathrm C. $$



### Další motivace

Ze středoškolské fyziky dobře známe vzorce pro dráhu, práci a tlakovou
sílu. Ovšem jenom v extrémně pěkných případech, kdy se tyto veličiny určují součinem. 

* Dráha rovnoměrného pohybu je určena vzorcem 
 
  $$s=vt.$$ (1) 
  
  Tento
  vzorec není použitelný pro pohyb proměnnou rychlostí. Z kapitoly o
  neurčitém integrálu víme, že obecný vzorec je 
  
  $$s=\int v\,\mathrm dt.$$ (2)
  
  Pokud je $v$ konstantní, vzorec {eq}`1` je důsledkem vzorce
  {eq}`2`.
* Hydrostatická tlaková síla $F$ působící ve vodě v hloubce $h$ na
  plochu o velikosti $S$ se určí podle vztahu $$F=Sh\rho g,$$ kde
  $\rho$ je hustota vody a $g$ tíhové zrychlení. Tento vzorec však
  není možné použít, pokud různé části plochy jsou v různých
  hloubkách. Například není možné pomocí tohoto vzorce určit celkovou
  sílu na svislou stěnu reprezentující hráz přehrady, protože různé části stěny jsou v různých hloubkách.
* Práce vykonaná konstantní silou $F$ po dráze $s$ je 

  $$W=Fs.$$ (3)

  Co když se ale síla nebo dráha mění? Pokud nás zajímá práce nutná k
  navinutí visícího řetězu na rumpál, síla se během namotávání plynule
  zmenšuje, protože visící kus řetězu se při namotávání
  zkracuje. Pokud nás zajímá práce nutná k vyčerpání vodní nádrže,
  musíme každý litr vody, který je na dně, "tahat" po delší dráze než
  každý litr vody, který je na hladině a proto se mění dráha. Vzorec {eq}`3` selhává v obou případech. Jednou kvůli nekonstantní síle,
  podruhé kvůli dráze.

\iffalse

<div class='obtekat'>

```{figure} 1.png
Obsah pod konstantní funkcí.
```

</div>

\fi

* Obsah obrazce mezi konstantní funkcí $f$ a osou $x$ nad intervalem
  $[a,b]$ se vypočte snadno, protože se jedná o obdélník se stranami
  $f$ a $\Delta x=b-a$. Proto $$S=f\cdot \Delta x.$$ Tento přístup
  však není možné použít, pokud se funkce $f$ na intervalu $[a,b]$
  mění. Formálně je tato úloha stejná jako ostatní úlohy výše, má však
  snadnou geometrickou interpretaci. Právě tuto interpretaci využijeme
  v následujícím k definici druhého typu určitého integrálu
  (Riemannova).

## Určitý integrál (Riemannův)

manimp:UrcityIntegral|Určitý integrál dokáže nahradit součin v případě, že koeficeint násobící měnící se veličinu není konstantní.

<div class='obtekat'>

```{figure} 1.png
Obsah pod konstantní funkcí.
```

```{figure} 2.png
Obsah pod funkcí po částech konstantní.
```

```{figure} 3.png
Obsah pod obecnou funkcí je $\int_a^b f(x)\,\mathrm dx$.
```

</div>

**Úloha 1.** Snadným důsledkem vzorce pro obsah obdélníka je obsah
obrazce mezi grafem konstantní funkce a osou $x$. $$S=f\Delta x$$

**Úloha 2.** Obsah pod funkcí složené ze dvou konstantních funkcí
napojených na sebe se vypočte jako součet obsahů dvou
obdélníků. $$S=f_1\Delta x_1+f_2\Delta x_2$$ Toto se dá snadno
zobecnit na libovolný počet intervalů a pro libovolnou po částech
konstantní funkci.

Prostředky matematické analýzy je možné "zjemňovat dělení do
nekonečna", přesněji, můžeme použít limitní přechod podobný limitnímu
přechodu, který v definici derivace převedl podíl (průměrnou
rychlost) na derivaci (okamžitou rychlost). Díky tomu není nutné se
omezovat na po částech konstantní funkce, ale postup bude fungovat i
pro velmi obecné funkce. Výsledným produktem je Riemannův
integrál.

Riemannův integrál je velmi názorný, ale poměrně obtížně se
počítá, pokud postupujeme přímo podle definice. Pokud však je funkce v
určitém smyslu pěkná (má primitivní funkci na intervalu, který uvnitř
obsahuje interval $[a,b]$) jsou Riemannův a Newtonův integrál
stejné. Proto mezi nimi nerozlišujeme, používáme jeden pojem **určitý
integrál** a počítáme jej pomocí definice Newtonova integrálu. Obsah
obrazce pod křivkou $f(x)$ je roven $$S=\int_a^b f(x)\,\mathrm dx.$$

V teorii Riemannova integrálu má vzorec
$$\int_a^b f(x)\mathrm dx=\left[F(x)\right]_a^b=F(b)-F(a)$$
postavení věty nazývané **Newtonova–Leibnizova věta** a je to věta
udávající, jak vypočteme určitý integrál pomocí neurčitého. Zajímavé
je, že v některých případech je vhodné postupovat naopak a určit
neurčitý integrál pomocí integrálu určitého, což si ukážeme v
následující přednášce.

````{prf:algorithm} Nasčítání příspěvků k celkové dráze
:class: dropdown


\iffalse

<div class='obtekat'>

```{figure} parasutista.jpg
Při pohybu proměnnou rychlostí je dráha integrálem rychlosti. Zdroj: pixabay.com
```

</div>

\fi

1. Těleso pohybující se po dobu $\Delta t$ konstantní rychlostí $v$ po
   přímce urazí dráhu $$s=v\Delta t.$$
1. Těleso pohybující se po dobu $\Delta t_1$ konstantní rychlostí
   $v_1$ po přímce a poté po dobu $\Delta t_2$ rychlostí $v_2$ urazí
   celkovou dráhu $$s=v_1\Delta t_1+v_2\Delta t_2.$$ Toto je možné
   zobecnit na libovolný pohyb skládající se z konečného počtu úseků,
   kdy se těleso pohybuje konstantní rychlostí.  $$s=v_1\Delta
   t_1+v_2\Delta t_2+\cdots +v_k \Delta t_k=\sum_{i=1}^k v_i\Delta t_i$$
   Příspěvek za každou část pohybu, kdy je rychlost konstantní, je
   $$\Delta s=v\Delta t, $$ kde $v$ a $\Delta t$ jsou příslušná
   rychlost a doba pohybu, po kterou je rychlost konstantní.
1. Pokud se rychlost mění spojitě a $a$ a $b$ jsou počáteční a koncový
   okamžik pohybu, platí $$s=\int_a^b v(t)\,\mathrm dt.$$

````


\iffalse

<div class='obtekat'>

```{figure} bohdanka.jpg
Při posuzování stability rozhledny hraje moment setrvačnosti ústřední roli. Moment setrvačnosti rozhledny je možné získat součtem momentů setrvačnosti jednotlivých trámů. Rozhledna Bohdanka. Zdroj: http://tvstav.cz
```

```{figure} 4.png
Tyč rotující okolo kolmé osy.
```

```{figure} wallenda.jpg
Provazochodec při přechodu přes Grand Canyon. Zdroj:  cbsnews.com
```

</div>

\fi

* Kinetická energie tělesa o hmotnosti $m$ pohybujícího se posuvným
  pohybem rychlostí $v$ je dána vztahem $E=\frac 12 mv^2$. Kinetická energie
  tělesa o momentu setrvačnosti $J$ pohybujícího se otáčivým pohybem
  úhlovou rychlostí $\omega$ je dána vztahem $E=\frac 12 J\omega
  ^2$. Odsud vidíme, že energie potřebná k vyvolání rotačního pohybu
  je úměrná momentu setrvačnosti. Moment setrvačnosti je tedy jakousi
  mírou odolnosti tělesa vůči silám, které se jej snaží uvést do
  rotačního pohybu. Zjednodušeně, větší moment setrvačnosti znamená,
  že těleso je stabilnější.
* Moment setrvačnosti hmotného bodu o hmotnosti $m$ vzhledem k ose
  otáčení vzdálené $r$ od tohoto bodu je $J=mr^2$. Pro soustavu
  hmotných bodů stačí příspěvky sečíst. Pro případ tělesa se spojitě
  rozloženou hmotností bychom museli "sečíst nekonečně mnoho nekonečně
  malých příspěvků" a proto sčítáme integrálem.

Budeme studovat rotaci tyče o hmotnosti $m$ a délce $L$ okolo osy
kolmé k tyči. Nechť je tyč položena podél osy $x$ a rotuje okolo osy
$y$. Kousek tyče o délce $\Delta x$ má hmotnost $\frac{\Delta x}{L}m$
a pokud je jeho vzdálenost od osy $y$ rovna $x$, příspěvek k celkovému
momentu setrvačnosti je $$\Delta J= \frac{\Delta x}{L}m x^2 =\frac{m}{L} x^2\Delta x.$$ Celkový moment setrvačnosti je dán
integrálem, ale závisí na poloze tyče vzhledem k ose otáčení.

1. Pro tyč umístěnou levým koncem v počátku dostáváme moment vzhledem
   k ose procházející koncem tyče ve tvaru $$J=\int_0^L \frac{m}{L}
   x^2\,\mathrm dx=\frac mL \left[\frac 13 x^3\right]_0^L= \frac mL
   \frac 13 L^3=\frac 13 mL^2.  $$
1. Pro tyč umístěnou středem v počátku dostáváme moment vzhledem k ose
   procházející středem ve tvaru
   \dm$$J=\int_{-\frac L2}^{\frac L2} \frac{m}{L} x^2\,\mathrm dx=\frac mL \left[\frac 13 x^3\right]_{-\frac L2} ^{\frac L2} = \frac mL \left[\frac 13 \frac {L^3}8 - \frac 13 (-1)^3 \frac {L^3}8\right] = \frac 1{12} mL^2. $$

**Závěr.**

* Na roztočení tyče okolo konce je potřeba více energie, než na
  roztočení okolo středu. Čtyřikrát více. (Z praxe víme, že s dlouhým
  žebřem se manipuluje nejlépe, pokud jej držíme uprostřed.)
* Tyč o konstantní délkové hustotě $\tau$ (dané použitým průřezem a
  materiálem) má hmotnost $m=\tau L$ a moment setrvačnosti vzhledem ke
  středu $$J=\frac1{12}\tau L^3.$$ Vidíme, že moment setrvačnosti
  roste dramaticky při zvětšování délky, s třetí mocninou. Proto
  provazochodci nosí na laně dlouhou tyč a proto při extrémních
  výkonech, jako je přechod Grand Canyon, bývá použita extrémně dlouhá
  tyč (pro Grand Canyon 9.1 metrů a 20 kilogramů, viz [Nik
  Wallenda](https://en.wikipedia.org/wiki/Nik_Wallenda#Canyon_walk)).

````

