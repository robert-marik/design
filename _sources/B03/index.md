# Parciální derivace

## Parciální derivace, problematika měření rychlosti funkce více proměnných

  Pokud sledujeme například ve stěně měnící se teplotní profil, zajímá nás, jak se teplota v jednotlivých místech stěny mění v čase a jak se teplota mění v řezu stěnou. Zdá se býti rozumné oddělit obě změny. Buď v daném bodě fixovat polohu a sledovat časový vývoj v tomto bodě, nebo v daném čase udělat něco jako teplotní snímek a srovnávat teplotu ve vybraném bodě s okolními teplotami ve stejném čase. To vede k následujícímu přístupu, kdy u funkce více proměnných sledujeme reakci na změnu jedné jediné veličiny. 

```{prf:definition} parciální derivace
:nonumber:
 Buď $f(x,y)\colon \mathbb R^2\to\mathbb R$ funkce dvou proměnných $x$ a $y$. Výraz $$\frac{\partial f}{\partial x}:=\lim_{h\to 0}\frac{f(x+h,y)-f(x,y)}{h}$$  se nazývá *parciální derivace funkce $f$ podle $x$*. 
Výraz $$\frac{\partial f}{\partial y}:=\lim_{h\to 0}\frac{f(x,y+h)-f(x,y)}{h}$$ se nazývá *parciální derivace funkce $f$ podle $y$*.
```


Podobně můžeme definovat parciální derivaci pro funkce libovolného
konečného počtu proměnných. V těchto parciálních derivacích vlastně
sledujeme, jak reaguje veličina $f$ na změny jenom v jedné
proměnné. Ostatní proměnné, podle kterých se nederivuje, mají vlastně
roli parametru a nijak se nemění.

```{prf:remark} stavební kameny z definice derivace
:nonumber:

>
* Výraz $$f(x+h,y)-f(x,y)$$ z čitatele je změna veličiny $f$ na intervalu $[x,x+h]$ při konstantní veličině $y$. Tento čitatel často označujeme též $\Delta f$.
* Podíl $$\frac{f(x+h,y)-f(x,y)}h$$ je změna veličiny $f$ na intervalu $[x,x+h]$  při konstantní veličině $y$ přepočítaná na jednotku veličiny $x$. Je to tedy průměrná rychlost změny funkce $f$ vzhledem k $x$ na intervalu $[x,x+h]$. Často označujeme též $\frac{\Delta f}{\Delta x}$.
* Limita v definici derivace stahuje délku intervalu pro výpočet průměrné rychlosti k nule. Tím se z průměrné rychlosti stane okamžitá rychlost. Parciální derivace je tedy okamžitá rychlost, s jakou se mění funkce $f$ při změnách jedné proměnné.
```


```{prf:remark} jednotka parciální derivace
:nonumber:
 Jednotka derivace $\frac{\partial f}{\partial x}$ je stejná, jako jednotka podílu $\frac {f}x$. Jednotka derivace $\frac{\partial f}{\partial y}$ je stejná, jako jednotka podílu $\frac {f}y$.
```


```{prf:remark} slovní interpretace parciální derivace
:nonumber:
 Derivace $\frac{\partial f}{\partial x}$ udává, jak se mění veličina $f$ při změnách veličiny $x$ a za předpokladu konstantní veličiny $y$. Interpretace derivace v nematematických disciplínách je proto okamžitá rychlost s jakou veličina $f$ reaguje na změny veličiny $x$.
```


```{prf:remark} derivace teploty podle času a polohy
:nonumber:
 Pokud sledujeme vývoj a rozložení teploty na dvourozměrné tepelně vodivé desce, je teplota (udávaná například ve stupních Celsia) funkcí tří proměnných: jedna proměnná je čas $t$ a dvě proměnné $x$ a $y$ jsou souřadnice v rovině.  Tedy $T=T(t,x,y).$ Parciální derivace $\frac{\partial T}{\partial t}$ udává je rychle (například ve stupních Celsia za hodinu) roste v daném místě teplota. V různých částech desky může být tato veličina jiná a vždy se vztahuje k danému bodu. Může se měnit i v čase, například deska v prostředí s konstantní teplotou postupně dospěje do stavu se stacionárním rozložením teploty, kdy se teplota v žádném místě ani neroste ani neklesá a parciální derivace podle času je nulová. Derivace $\frac{\partial T}{\partial x}$ udává jak prudce (například ve stupních Celsia na centimetr) roste teplota ve směru osy $x$. 
```

## Gradient


```{prf:definition} gradient
:nonumber:
 *Gradient* skalární funkce dvou proměnných $f(x,y)$ je vektorové pole označené a definované následovně.
  $$\nabla f=\left(\frac{\partial f}{\partial
  x}, \frac{\partial f}{\partial y}\right)$$
Podobně je definován gradient skalární funkce tří proměnných $f(x,y,z)$.
  $$\nabla f=\left(\frac{\partial
  f}{\partial x}, \frac{\partial f}{\partial y},
  \frac{\partial f}{\partial z}\right)$$
```


Význam a postavení gardientu ilustruje následující příklad, který je poté zobecněn do poznámky shrnující fyzikální význam gradientu.

**Příklad.** Pokud je teplota v rovině v bodě $(x,y)$ dána předpisem $$T=(x^2-xy^2)^\circ\mathrm C,$$ je gradientem vektor $$\nabla T=\begin{pmatrix}2x-y^2, -2xy\end{pmatrix} {}^\circ\mathrm C \mathrm m^{-1}.$$ V bodě $(1,1)$ je gradient $$\nabla T(1,1)=\begin{pmatrix}1,-2\end{pmatrix}{}^{\circ}\mathrm C \mathrm m^{-1}.$$ To znamená, že v tomto bodě roste teplota ve směru osy $x$ rychlostí jeden stupeň Celsia na každý metr délky a ve směru osy $y$ klesá rychlostí dva stupně Celsia na každý metr délky. Vektor definovaný tímto gradientem má směr doprava dolů (pod úhlem splňujícím podmínku $\tan \varphi = -2$) a délku $\sqrt{(1)^2+(-2)^2}=\sqrt 5\approx 2.2$. To znamená, že maximální nárůst teploty je směrem doprava dolů a tento nárůst je $2.2$ stupně Celsia na každý metr délky.

```{prf:remark} fyzikální význam gradientu
:nonumber:
 Gradient skalární veličiny $f$ je vektorová veličina, která vyjadřuje směr a intenzitu maximálního růstu veličiny $f$. Přesněji, výsledkem gradientu je vektor ve směru maximálního růstu veličiny $f$. Délka tohoto vektoru je nárůst veličiny $f$ na intervalu jednotkové délky. Pro rovnoměrně rozloženou veličinu  v prostoru (konstantní) je gradient nulový. Proto je možné gradient chápat jako míru nerovnoměrného rozložení veličiny v prostoru. Řada fyzikálních dějů probíhá tak, že tato nerovnoměrnost vyvolá proudění, které se snaží tuto nerovnoměrnost vyrovnat. Například vedení tepla vyrovnává nerovnoměrné rozložení teploty a difuze vyrovnává nerovnoměrnosti v koncentraci. Teplota se vyrovnává tak, že teplo teče z místa s vysokou teplotou do místa s malou teplotou. Difuze směřuje  z místa s vyšší koncentrací do místa s nižší koncentrací. V praxi nás proto většinou místo směru maximálního růstu zajímá směr maximálního poklesu, tj. $-\nabla f$.
```

Symbol $\nabla$ je operátor nabla definovaný formálně vztahem $$\nabla=\left(\frac{\partial}{\partial x}, \frac{\partial}{\partial y}, \frac{\partial}{\partial z}\right)$$ nebo $$\nabla=\left(\frac{\partial}{\partial x}, \frac{\partial}{\partial y}\right)$$ (v závislosti na počtu proměnných funkce $f$). "Násobení" $\frac{\partial }{\partial x}$ s funkcí $f$ přitom chápeme jako parciální derivaci $\frac{\partial f}{\partial x}$.

Někdy je vhodné formulovat fyzikální zákony pomocí prostředků lineární algebry, zejména pomocí maticového součinu. V takovém případě gradient zapisujeme jako sloupcový vektor.


## Lineární aproximace funkce více proměnných a vektorové funkce


Z diferenciálního počtu funkcí jedné proměnné víme, že platí přibližný vzorec $$f(x)\approx f(x_0)+f'(x_0)(x-x_0).$$ Tento vzorec rozšíříme do světa funkcí více proměnných a do světa vektorových funkcí.


### Lineární aproximace skalární funkce

Lineární aproximací funkce $z=f(x,y)$ v bodě $(x_0, y_0)$ je
$$      f(x,y)\approx f(x_0, y_0)+\frac{\partial f (x_0,y_0)}{\partial x}(x-x_0)+\frac{\partial f (x_0,y_0)}{\partial y}(y-y_0)$$
nebo (vyjádřeno pomocí skalárního součinu a gradientu)
$$      f(x,y)\approx f(x_0, y_0)+ \nabla f(x_0,y_0)\cdot (x-x_0,y-y_0).$$

### Lineární aproximace vektorové funkce

Lineární aproximací vektorové funkce je lineární aproximace jednotlivých komponent. To jsou skalární funkce a je na ně možné aplikovat postup z předchozího bodu. Tedy pro funkci $\vec F(x,y)=f_1(x,y)\vec \imath + f_2(x,y)\vec\jmath$ máme v bodě $(x_0, y_0)$ lineární aproximace
$$      f_1(x,y)\approx f_1(x_0, y_0)+\frac{\partial f_1 (x_0,y_0)}{\partial x}(x-x_0)+\frac{\partial f_1 (x_0,y_0)}{\partial y}(y-y_0)$$
a
$$      f_2(x,y)\approx f_2(x_0, y_0)+\frac{\partial f_2 (x_0,y_0)}{\partial x}(x-x_0)+\frac{\partial f_2 (x_0,y_0)}{\partial y}(y-y_0).$$
Tyto dva vztahy je možné zapsat jako jeden vektorový vztah ve tvaru
\dm$$\begin{pmatrix}f_1(x,y)\\f_2(x,y)\end{pmatrix} \approx  \begin{pmatrix}f_1(x_0,y_0)\\f_2(x_0,y_0)\end{pmatrix} + \begin{pmatrix} \frac{\partial f_1}{\partial x}(x_0,y_0) \\\frac{\partial f_2}{\partial x}(x_0,y_0) \end{pmatrix} (x-x_0)+ \begin{pmatrix}  \frac{\partial f_1}{\partial y}(x_0,y_0)\\ \frac{\partial f_2}{\partial y}(x_0,y_0)\end{pmatrix} (y-y_0).
$$
Tento vektorový vztah je možné zapsat s použitím maticového součinu místo lineární aproximace. Tím získáváme vztah ve tvaru
$$\begin{pmatrix}f_1(x,y)\\f_2(x,y)\end{pmatrix} \approx  \begin{pmatrix}f_1(x_0,y_0)\\f_2(x_0,y_0)\end{pmatrix} + \begin{pmatrix} \frac{\partial f_1}{\partial x}(x_0,y_0) & \frac{\partial f_1}{\partial y}(x_0,y_0)\\\frac{\partial f_2}{\partial x}(x_0,y_0) & \frac{\partial f_2}{\partial y}(x_0,y_0)\end{pmatrix} \begin{pmatrix}x-x_0\\ y-y_0\end{pmatrix}.
$$
Po přeznačení dostáváme
$$\vec F(x,y)\approx \vec F(x_0,y_0) + J(x_0,y_0)  \begin{pmatrix}x-x_0\\ y-y_0\end{pmatrix},$$
kde
$$J(x,y)=\begin{pmatrix} \frac{\partial f_1}{\partial x}(x ,y ) & \frac{\partial f_1}{\partial y}(x ,y )\\\frac{\partial f_2}{\partial x}(x ,y ) & \frac{\partial f_2}{\partial y}(x ,y )\end{pmatrix}$$
je Jacobiho matice funkce $\vec F$.

V materiálovém inženýrství často provádíme linearizaci v okolí nuly a pro funkci, která je v nule nulová. Tedy máme $x_0=y_0=\vec F(0,0)=0$. Výsledná lineární aproximace se poté redukuje na tvar $$\vec F(x,y)\approx J(0,0) \begin{pmatrix}x\\ y\end{pmatrix}.$$

### Vícerozměrné konstitutivní zákony


Konstitutivní vztahy tvoří z hlediska materiálového inženýrství jednu z nejdůležitějších aplikací gradientu. Tyto vztahy dávají do vzájemné relace gradient stavové veličiny, pomocí níž charakterizujeme stav studovaného objektu, a tok, který se snaží zahladit nerovnoměrnost v rozložení stavové veličiny. Například při nerovnoměrném rozložení koncentrace látky se tato koncentrace vyrovnává difuzním tokem. Při nerovnoměrném rozložení vnitřní energie v systému se tato nerovnoměrnost navenek projevuje rozdílnými teplotami v různých částech tělesa a vyrovnává tokem tepla. Při různých piezometrických hladinách podzemní vody (hladina podzemní vody se započtením případného tlaku a dalších parametrů majících vliv na proudění vody) se tato nerovnoměrnost vyrovnává prouděním podzemní vody.

Zákony uvedené níže byly často odvozeny v jednorozměrném případě. V moderní formulaci používáme obecný vektorový zápis, který zohledňuje i směr. Zpravidla je možné použít pro tento konstitutivní vztah lineární aproximaci a proto se vlastně jedná o násobení vektoru maticí. Tato matice umožní nejenom změnit délku vektoru a jeho jednotku, ale i směr. Matice se navíc při změně báze transformuje speciálním způsobem, tak jako vektory. Takové objekty nazýváme **tenzory**. Níže budeme pojmem tenzor rozumět matici $3\times 3$ nebo $2\times 2$, podle kontextu. (Obecněji je možno považovat skalární veličiny a vektory za tenzory nižších řádů, toto my však dělat
nebudeme.)



## Parciální derivace a vedení tepla  v 1D, rovnice vedení tepla

Studujme vedení tepla v jednorozměrné tyči. Teplota $T$ je funkcí dvou proměnných: polohy $x$ a času $t$. Tedy $T=T(t,x).$ Parciální derivace $\frac{\partial T}{\partial t}$ udává, jak rychle (například ve stupních Celsia za hodinu) roste v daném místě teplota. V různých částech desky může být tato veličina jiná a vždy se vztahuje k danému bodu. Přirozeně se mění i v čase. Například v prostředí s konstantní teplotou postupně systém dospěje do stavu se stacionárním rozložením teploty, kdy se teplota v žádném místě ani neroste ani neklesá a parciální derivace podle času je nulová. Derivace $\frac{\partial T}{\partial x}$ udává jak prudce roste teplota ve směru osy $x$. Tato derivace může být vyjádřena například ve stupních Celsia na centimetr.

  * Je-li parciální derivace $\frac{\partial T}{\partial t}$
    rovna $2^{\circ}\mathrm{C}/\mathrm{min}$, znamená to, že v daném
    místě roste teplota v čase rychlostí dva stupně Celsia za minutu.
  * Pokud je parciální derivace teploty podle času záporná a rovna
    například hodnotě $-2^{\circ}\mathrm{C}/\mathrm{min}$, znamená to,
    že teplota v tomto místě klesá rychlostí dva stupně Celsia za
    minutu.
  * Je-li parciální derivace $\frac{\partial T}{\partial x}$
    rovna $2^{\circ}\mathrm{C}/\mathrm{cm}$, znamená to, že v daném
    místě roste teplota ve směru osy $x$ takovou rychlostí, že na
    centimetru délky tyče naroste o dva stupně Celsia.
  * Pokud je parciální derivace teploty podle polohy záporná a rovna
    například hodnotě $-2^{\circ}\mathrm{C}/\mathrm{cm}$, znamená to,
    že ve směru osy $x$ teplota klesá takovou rychlostí, že na
    centimetru délky tyče klesne o dva stupně Celsia.



### Rovnice vedení tepla  v 1D


Pokusíme se odvodit matematický model vedení teplav jednorozměrné
tyči.  Řešením takového modelu bude teplota $T$ jako funkce času a
polohy. Po vyřešení modelu bychom tedy měli vzorec udávající teplotu v
libovolném bodě tyče a v libovolném čase. Nejprve ovšem musíme
požadovnou rovnici sestavit.

```{prf:remark}
Potřebujeme fyzikální zákony řídící vedení tepla.  Bez nich matematika model vedení tepla nemá jak naformulovat. Tyto zákony je potřeba matematice dodat z aplikované vědy. Tou je v tomto případě fyzika, jindy může být biologie nebo geologie. Jakmile jsou potřebné zákony a případně materiálové vztahy k dispozici, stává se problém čistě matematickým a fyzika přijde ke slovu při závěrečné interpretaci. Použijeme následující fyzikální fakta. 

* Rozdílem teplot je vyvolán tok tepla. Velikost toku tepla je úměrná teplotnímu rozdílu a teplo teče z místa s větší teplotou do místa s menší teplotou.
* Teplota se zvyšuje dodáním tepla. Změna teploty je úměrná dodanému teplu.
```

V dalším už nastupuje matematický popis a ve vhodných chvílích vždy
použijeme výše uvedené fyzikální zákony. Mluvíme o teple, ale jako
mechanický model si můžeme představit proudění tekutiny (pro
jednoduchou představu) nebo proudění vlhkosti (pro odvození rovnice
difuze namísto rovnice vedení tepla). Budeme uvažovat libovolné místo materiálu a budeme matematicky vyjadřovat děje, které přispívají ke změně teploty.

* Rychlost růstu teploty (s časem) je $$\frac{\partial T}{\partial t}.$$ Měříme ji například ve stupních Celsia za minutu. Tato rychlost je úměrná rychlosti s jakou do daného místa dodáváme teplo. Proto v dalším budeme hledat rychlost dodávání tepla a daného místa. Poté se vrátíme do tohoto místa a dáme tuto rychlost do souvislosti s rychlostí růstu teploty.
* Rychlost růstu teploty jako funkce polohy je $$\frac{\partial T}{\partial x}.$$ Měříme ji například ve stupních Celsia na centimetr. 
* Pro přepočet nerovnoměrného rozložení teploty na tok tepla nás zajímá nikoliv jak teplota v prostoru roste, ale jak klesá. Proto musíme vzít derivaci podle prostorové proměnné záporně, abychom dostali pokles teploty. Tento pokles vynásobíme konstantou, která převede spád teploty na tok tepla. Tuto konstantu označíme $k$ (nazývá se součinitel tepelné vodivosti a dodá nám ji fyzika a v ní takzvaný Fourierův zákon). Tok tepla $q$ ve směru osy $x$ je tedy $$q=-k\frac{\partial T}{\partial x}.$$ To je veličina, která udává, kolik joulů tepla proteče průřezem za jednotku času. 
  * Je-li $q$ rovno $7\,\mathrm{J}/\mathrm{min}$ znamená to, že průřezem proteče ve směru osy $x$ sedm joulů za minutu. 
  * Je-li $q$ záporné a rovno $-7\,\mathrm{J}/\mathrm{min}$, znamená to, že sedm joulů za minutu proteče v daném místě proti směru osy $x$.
* Pokud do daného místa přitéká teplo stejnou rychlostí jako odtéká, teplota se nemění a dané místo se ani neohřívá ani neochlazuje. Intenzita ochlazování je dána bilancí mezi přítokem a odtokem. Můžeme si to představit tak, že z tepla, které do daného bodu přiteče, se část "oddělí" a přispěje k navýšení teploty. Zbytek tepla teče dál. Pro zjištění, kolik tepla se z toku "oddělí" a způsobí v daném místě navýšení teploty potřebujeme vědět, jak rychle v daném místě tok klesá jako funkce proměnné $x$. Nárůst určíme derivací podle $x$ a pokles z nárůstu určíme vynásobením koeficientem $-1$. Pokles toku tepla je tedy $$-\frac{\partial q}{\partial x}= -\frac{\partial }{\partial x}\left(-k\frac{\partial T}{\partial x}\right)= \frac{\partial }{\partial x}\left(k\frac{\partial T}{\partial x}\right). $$ 
  * Například pokles $-\frac{\partial q}{\partial x}=2\,\mathrm{J}/(\mathrm{min}\,\mathrm{cm})$ toku $q=10\,\mathrm{J}/\mathrm{min}$ znamená, že o centimetr dál ve směru osy $x$ proteče průřezem směrem doprava už nikoliv deset, ale pouze osm joulů za minutu. 
  * Stejný pokles u toku $q=-10\,\mathrm{J}/\mathrm{min}$ znamená, že v daném místě proteče směrem doleva deset joulů za minutu, ale o centimetr více vpravo je o $2$ méně, tj. $-10-2=-12$ a směrem doleva teče dvanáct joulů za minutu. 
  * V obou případech intenzita toku klesá podél tohoto toku. Tok slábne.
* Pokles toku vypočtený v předchozím bodě je úměrný rychlosti růstu teploty. Příslušné konstanty úměrnosti dodá fyzika. Platí $$\frac{\partial}{\partial x}\left(k\frac{\partial T}{\partial x}\right)=\rho c\frac{\partial T}{\partial t},$$ kde $c$ je měrná tepelná kapacita a $\rho$ je hustota. (V tomto případě jsou hustota i měrná tepelná kapacita vztaženy ne k jednotce objemu, jak jsme zvyklí, ale k jednotce délky. Například $\rho$ je lineární hustota, tj. v gramech na centimetr). 
  * Například pokles $-\frac{\partial q}{\partial x}=2\,\mathrm{J}/(\mathrm{min}\,\mathrm{cm})$ toku $q=10\,\mathrm{J}/\mathrm{min}$ znamená, že o centimetr dál ve směru osy $x$ proteče průřezem směrem doprava už nikoliv deset, ale pouze osm joulů za minutu. Tedy každou minutu se v jednom centimetru délky od toku "odpojí" energie o velikosti dva jouly a ta se "uloží" do materiálu. Navenek se to projeví zvýšením teploty v daném místě. Přičemž hrají roli fyzikální vlastnosti materiálu, které udávají, jaká teplotní změna odpovídá dodanému teplu.
* Rovnice odvozená v předchozím kroku se nazývá **rovnice vedení tepla** a dokáže modelovat například prostup tepla stěnou domu. Tato rovnice zachycuje matematicky to, jak funguje materiál z hlediska předávání tepla mezi místy o různé teplotě. 

**Shrnutí.** V odvození vidíme, že rovnice vedení tepla je vlastně
bilance toku tepla. Zeslabení toku 
udává, kolik tepla se v daném místě spotřebovalo. Tato spotřeba tepla
se projeví zvýšením teploty v místě, kde k zeslabení došlo.


|Část rovnice vedení tepla|Slovní interpretace|
|:---|:---|
|$\color{red}\displaystyle\frac{\partial T}{\partial t}$|Rychlost s jakou roste v daném místě teplota jako funkce času.|
|$\displaystyle\frac{\partial T}{\partial x}$|Rychlost s jakou roste v daném okamžiku teplota podél tyče.|
|$\displaystyle-\frac{\partial T}{\partial x}$|Rychlost s jakou klesá v daném okamžiku teplota podél tyče. Záporně  vzatá rychlost růstu.|
|$\displaystyle-k\frac{\partial T}{\partial x}$|Tok tepla. Podle Fourierova zákona je úměrný rychlosti s jakou klesá teplota.|
|$\displaystyle\frac{\partial}{\partial x}\left(-k\frac{\partial T}{\partial x}\right)$|Rychlost s jakou roste tok tepla podél tyče.|
|$\displaystyle-\frac{\partial}{\partial x}\left(-k\frac{\partial T}{\partial x}\right)$|Rychlost s jakou klesá tok tepla podél tyče. Toto teplo zůstává v daném místě tyče a projeví se nárůstem teploty v tomto místě.|
|$\color{red}\displaystyle\frac{\partial}{\partial x}\left(k\frac{\partial T}{\partial x}\right)$|Upravený výraz z předchozího řádku. Rychlost s jakou klesá tok tepla podél tyče.|
|Rovnice vedení tepla|Červené výrazy jsou si úměrné.|



