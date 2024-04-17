# Konstituční vztahy, difuzní rovnice

[Vedení tepla v 1D](https://user.mendelu.cz/marik/manim/Heat/)

[Transport ve 2D](https://user.mendelu.cz/marik/manim/Divergence/)

## Tok tepla, difuzní tok, transportní děje

Pochopení a modelování transportních dějů je důležité pro většinu
technických oborů. Podstata těchto dějů je často odlišná, přesto mají
navenek podobné chování a tím je umožněn jednotný přístup při
matematickém modelování.

Příklady veličin podléhajících transportním dějům

* povrchová voda
* podzemní voda
* teplo
* voda ve dřevě

Obecná bilance veličiny, která má zdroje a spotřebiče a je přenášena tokem vypadá následovně.

* Existuje veličina, spojitě rozložená v prostoru, charakterizující stav systému. Tuto veličinu budeme nazývat
    *stavovou veličinou* a její hustotu označíme $u$.
* Stavová veličina se může v prostoru přemisťovat *tokem* $\vec
    \jmath$.
* Stavová veličina může vznikat a zanikat.
    *Zdroje* i *spotřebiče* budeme
    uvažovat společně a jejich vydatnost rozlišíme
    znaménkem: spotřebiče budou zdroje se zápornou vydatností. Celkovou vydatnost zdrojů a spotřebičů v daném místě, tj.
    množství veličiny vygenerované na jednotku objemu (nebo plochy,
    nebo délky, podle počtu dimenzí v úloze) za jednotku času,
    označíme $\sigma$.

Zákon zachování (se zohledněním toku a zdrojů) je vlastně celková
bilance stavové veličiny. Přirozeným jazykem je možno tuto bilanci
formulovat následovně.  

> Přírůstek množství veličiny je součtem přírůstku ze zdrojů a přírůstku způsobeného tokem.

Toto je jednoduchý, ale přitom neuvěřitelně silný nástroj, který
umožní popsat řadu zcela odlišných dějů. Pro použití v matematickém
modelu ale musíme jednotlivé pojmy kvantifikovat. Měřit rychlost, s
jakou se mění množství veličiny v daném místě umíme pomocí derivace
podle času. Měřit změny v toku přenášejícím sledovanou veličinu jsme
se naučili jako jednu z aplikací parciálních derivací: jedná se o
záporně vzatou derivaci podle prostorové proměnné vynásobenou
fyzikální materiálovou konstantou. Ještě se musíme naučit měřit intenzitu toku a její změny ve dvou nebo třech dimenzích.

## Divergence toku

```{prf:definition} Divergence
:nonumber:
 *Divergence* vektorového pole $\vec F$ v daném bodě je převis toku vektorového pole z tohoto místa nad tokem do tohoto místa. Tento tok se počítá přes hranici infinitezimálně malého referenčního tělesa a je vztažený na jednotku objemu. Divergenci vektorového pole $\vec F$ označujeme $\nabla\cdot\vec F$ nebo $\mathop{\mathrm{div}} \vec F$.
```


```{prf:theorem} Výpočet divergence
:nonumber:

Pro vektorovou funkci $$\vec F=(P,Q,R)=P\vec i + Q\vec j + R\vec k,$$ kde $P$, $Q$ a $R$ jsou funkce tří proměnných $x$, $y$ a $z$ vypočteme divergenci vztahem 	  $$\nabla\cdot\vec F=\mathop{\mathrm{div}}\vec F=\frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}+\frac{\partial R}{\partial z}.$$
Pro vektorovou funkci dvou proměnných vypočteme divergenci analogicky, pouze chybí třetí člen. 
```


```{prf:remark} Fyzikální interpretace divergence
:nonumber:
 Vektorové pole používáme k modelování toku veličin, které nás zajímají (teplo v materiálu, tekutina nebo chemická látka v materiálu, voda nebo plyn v půdě a podobně). Divergence vektorového pole udává tok z jednotkového objemu látky v daném místě. Udává, jestli se v daném místě a čase tok nabývá na intenzitě (kladná divergence) nebo ustává (záporná divergence). Tento efekt může být způsoben tím, že veličina přenášená tímto polem se v daném místě buď kumuluje, nebo ubývá a také tím, že daná veličina v bodě může vznikat nebo zanikat.
```

[2D svět versus 3D svět](https://user.mendelu.cz/marik/am/slovni_ulohy/#parci%C3%A1ln%C3%AD-derivace-vektorov%C3%A9ho-pole)

## Rovnice kontinuity

* Přírůstek stavové veličiny za jednotku času v jednotkovém objemu
  (nebo ploše, nebo délce, podle dimenzionality úlohy) je derivace
  hustoty $u$ podle času.
  $$\text{Přírůstek}=\frac{\partial u}{\partial t}$$
*  Přírůstek veličiny v jednotkovém objemu (nebo ploše, nebo délce) za
  jednotku času způsobený tokem $\vec \jmath$ je záporně vzatá divergence
  vektorového pole $\vec \jmath$. Tento přírůstek je způsobený snížením
  toku, proto má předřazeno záporné znaménko.
$$    \text{
        Přírůstek způsobený tokem
}=-\nabla\cdot \vec \jmath$$

Matematickou formulací celkové bilance  je **rovnice kontinuity**.
$$
      {\frac{\partial u}{\partial t}=\sigma -\nabla\cdot \vec \jmath}   $$

>Poznámka (fyzikální interpretace členů rovnice kontinuity).
>
>* Člen $\frac{\partial u}{\partial t}$ udává, jak rychle se roste hustota stavové veličiny $u$ v daném místě a čase.
>* Člen $\sigma$ udává vydatnost zdrojů stavové veličiny, přičemž spotřebiče jsou uvažovány jako zdroje záporné vydatnosti. Tento člen tedy udává, kolik stavové veličiny v tomto místě vzniká v jednotkovém objemu za jednotku času.
>* Člen $\nabla\cdot \vec j$ udává v daném bodě změnu ve velikosti proudění přenášejícím stavovou veličinu. Přesněji, udává, o kolik více veličiny z daného místa vyteče ve srovnání s množstvím veličiny, které do tohoto místa vteče. Jinak řečeno, udává, o kolik zesílí v daném místě tok $\vec \jmath$. My potřebujeme mít zachyceno zeslabení (množství které chybí v toku se "použije" na akumulaci veličiny v daném místě) a proto uvažujeme záporně vzatou divergenci, tj. $-\nabla\cdot \vec j$.
>* Pokud zdroje stavové veličiny neexistují, jedná se o *bezzdrojovou rovnici* a klademe $\sigma=0$.
>* Pokud studujeme systém v ustáleném stavu, kdy se stavová veličina nemění v čase, je člen $\frac{\partial u}{\partial t}$ na levé straně nulový. V tomto případě mluvíme o *stacionárním stavu* a *stacionární rovnici kontinuity*. Stacionární rovnice kontinuity typicky popisuje systémy, které byly dostatečně dlouhou dobu ve stabilních podmínkách a dosáhly rovnovážného stavu.
>* Viděli jsme, že za určitých podmínek mohou některé členy v rovnici kontinuty chybět. Naopak člen $\nabla\cdot \vec j$ charakterizující změny v toku je v rovnici kontinuity přítomen vždy. Bez něj by rovnice kontinuity ztratila smysl (resp. redukovala by se na triviální případ, kdy veličina v daném místě vzniká danou rychlostí a zůstává zde, tj. problém řešitelný čistě integrováním).


## Difuzní rovnice

Difuzní rovnice je rovnice kontiuity s dosazeným konstitučním vztahem
pro tok.  Použijeme-li pro kvantifikaci souvislosti toku a gradientu
lineární aproximaci, je možné psát
$$      \vec \jmath=-D\nabla u,$$
kde $D$ konstanta
úměrnosti. Pokud tok $\vec \jmath$ a gradient $\nabla u$ leží v jedné přímce,
je $D$ reálné číslo, jinak je $D$ matice. Například při
studiu pohybu vody ve dřevě se voda řídí nejen směrem maximálního
poklesu vlhkosti, ale stáčí se současně do podélného směru, ve kterém dřevo
vede vlhkost nejlépe. V takovém případě je $D$ matice. 
Spojením rovnice kontinuity
$$
      {\frac{\partial u}{\partial t}=\sigma -\nabla\cdot \vec \jmath}   $$
a vztahu  pro tok stavové veličiny dostáváme rovnici
$$
      {\frac{\partial u}{\partial t}=\sigma - \nabla\cdot \bigl(-D\nabla u\bigr)}.$$
      Tuto rovici je možno upravit na tvar
$$
      {\frac{\partial u}{\partial t}=\sigma + \nabla\cdot \bigl(D\nabla u\bigr)},$$
který se nazývá *difuzní rovnice*.

```{prf:remark} Fyzikální interpretace rovnice difuzní rovnice
:nonumber:

* Člen $\frac{\partial u}{\partial t}$ udává, jak rychle se mění hustota stavové veličiny $u$. Je stejný jako v rovnici kontinuity.
* Člen $\sigma$ udává vydatnost zdrojů stavové veličiny. Je stejný jako v rovnici kontinuity.
* Člen $\nabla u$ udává nerovnoměrnost v prostorovém rozložení stavové veličiny. Pomocí difuzní matice $D$ a konstitutivního zákona tuto nerovnoměrnost přepočítáme na tok, který se snaží uvažovanou nerovnoměrnost vyrovnat. Tento tok je reprezentován výrazem $-D\nabla u$.
* Záporně vzatá divergence toku udává, jak tok v daném místě ztrácí na intenzitě. Vzhledem k zápornému znaménku v konstitutivním zákoně má záporně vzatá divergence tvar $$\nabla\cdot \bigl(D\nabla u\bigr).$$ Představuje přírůstek hustoty stavové veličiny v daném místě za jednotku času, způsobený zeslábnutím toku.
* Rovnice jako celek vyjadřuje, že navýšení hustoty stavové veličiny (tj. množství stavové veličiny v jednotkovém objemu) je součtem navýšení díky zdrojům a navýšení díky zeslabení toku v daném místě.
```

## Rovnice vedení tepla

Důležitým speciálním případem difuzní rovnice je rovnice vedení tepla.
Stavovou veličinou, která se zachovává v úlohách s vedením tepla, je vnitřní energie ve
formě tepla. Zpravidla nemá smysl uvažovat členy vyjadřující
zdroje, tj. $\sigma =0$. Protože teplo neměříme přímo, je vhodnější
model formulovat pro teplotu $T$. Jsou-li $\varrho$ a $c$ po řadě hustota a měrná tepelná kapacita materiálu, má člen vyjadřující změnu hustoty
energie v daném místě tvar
$\varrho c\frac{\partial T}{\partial t}.$ Úměrnost mezi gradientem
teploty a tokem tepla zprostředkovává
*Fourierův zákon*. Difuzní rovnice má v tomto případě tvar
$${\varrho c\frac{\partial T}{\partial t}=  \nabla\cdot\bigl(D\nabla T\bigr)}$$

```{prf:remark} Fyzikální interpretace rovnice vedení tepla
:nonumber:

* Veličina $\frac{\partial T}{\partial t}$ udává rychlost růstu teploty tělesa a koeficient $\rho c$ tuto hodnotu přepočítává na údaj, jak rychle roste vnitřní energie tělesa (kinetická energie molekul.)
* Výraz $D\nabla T$ udává (až na znaménko), jak se nerovnoměrnost v rozložení teploty vyrovnává tokem tepla. Přesněji, tok tepla je $-D\nabla T$.
* Člen $\nabla\cdot(D\nabla T)$ udává, kolik tepla z celkového toku v daném místě zůstává a podílí se na zvýšení teploty. Vzhledem k absenci zdrojů je to také jediný mechanismus, jak v daném místě může vnitřní energie přibývat či ubývat.
* Rovnice jako celek vyjadřuje to, že pokud z daného místa více energie odtéká, než kolik do místa proudí, dojde v tomto místě k odpovídajícímu snížení teploty. V tomto bodě je totiž divegrence toku $\nabla\cdot (-D\nabla T)$ kladná a výraz z rovnice $\nabla\cdot (D\nabla T)$ je proto záporný.
```

## Sorretův jev 
