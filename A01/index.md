---
jupytext:
  cell_metadata_filter: -all
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---


# Lineární algebra I

Lineární algebra se zabývá vícerozměrnými veličinami (vektory) a vztahy mezi nimi. Dvourozměrné a trojrozměrné vektory se používají k práci s fyzikálními veličinami, u kterých si všímáme směru. Vícerozměrné vektory se používají u jakékoliv sady dat, kterou uspořádáme do sloupce nebo řádku. Může se například jednat o silové působení a posunutí v předem zvolených bodech namáhané konstrukce. Poté má smysl pracovat s vektory libovolné dimenze. 

## Matice tuhosti a poddajnosti, zatížení nosníku

Na praktické ukázce deformace nosníku si ukážeme zavedení čtyřrozměrných vektorů, matice a součinu matice s vektorem.

Sledujeme nosník ve vybraných čtyřech uzlových bodech. V těchto bodech je nosník zatížen silami $f_1$, ..., $f_4$ a vlivem těchto sil je deformován nosník o $u_1$, ..., $u_4$. 

Předpokládejme, že stejně jako na pružině je deformace úměrná síle. Předpokládejme, že deformace od různých sil se sčítají. Poté máme následující vztahy. 

$$
\begin{aligned}
u_1 = k_{11}f_1 + k_{12} f_2 + k_{13}f_3 + k_{14}f_4\cr
u_2 = k_{21}f_1 + k_{22} f_2 + k_{23}f_3 + k_{24}f_4\cr
u_3 = k_{31}f_1 + k_{32} f_2 + k_{33}f_3 + k_{34}f_4\cr
u_4 = k_{41}f_1 + k_{42} f_2 + k_{43}f_3 + k_{44}f_4\cr
\end{aligned}
$$

Toto jsou celkem čtyři vztahy obsahující jako data čtyři veličiny. V reálu jsou sledovaných bodů tisíce místo čtyř a proto se jedná o nepraktický zápis pro práci (tisíce rovnic a tisíce neznámých).

### Řádkový a sloupcový index

Soustavu je možné zapsat kratším způsobem ve tvaru 

$$
u_i= k_{i1}f_1 + k_{i2} f_2 + k_{i3}f_3 + k_{i4}f_4
$$

pro $i\in\{1,2,3,4\}$ nebo dokonce 

$$
u_i= \sum_{j=1}^4 k_{ij}f_j.
$$


Poslední výraz bývá okvyklejší zapsat pomocí Einsteinovy notace, kdy se vynechává znaménko pro sumu a přes opakovaný index se sčítá. Tedy soustava se zjednoduší na $$u_i=k_{ij}f_j.$$

Tento zápis je již krátký i pro tisíce rovnic, ale jedná se vlastně jenom o jiný zápis obrovské soustavy rovnic. V následujících odstavcích si ukážeme jiný přístup.

### Vektorový a maticový zápis

Jinou variantou je použití sloupcových vektorů, kde soustavu přepíšeme do tvaru

$$
\begin{pmatrix}u_1\cr u_2\cr u_3\cr u_4\end{pmatrix}=
\begin{pmatrix}k_{11}\cr k_{21}\cr k_{31}\cr k_{41}\end{pmatrix} f_1 +
\begin{pmatrix}k_{12}\cr k_{22}\cr k_{32}\cr k_{42}\end{pmatrix} f_2 +
\begin{pmatrix}k_{13}\cr k_{23}\cr k_{33}\cr k_{43}\end{pmatrix} f_3 +
\begin{pmatrix}k_{14}\cr k_{24}\cr k_{34}\cr k_{44}\end{pmatrix} f_4.
$$

Tento tvar představuje jedinou rovnici mezi čtyřrozměrnými vektory. Naznačená operace se provádí po složkách. Aby síly byly takév ve formě vektoru, zapisujeme rovnici zpravidla ve tvaru 

$$
\begin{pmatrix}u_1\cr u_2\cr u_3\cr u_4
\end{pmatrix}=
\begin{pmatrix}
k_{11} & k_{12} & k_{13}& k_{14} \cr
k_{21} & k_{22} & k_{23}& k_{24} \cr
k_{31} & k_{32} & k_{33}& k_{34} \cr
k_{41} & k_{42} & k_{43}& k_{44} \cr
\end{pmatrix} 
\begin{pmatrix}f_1\cr f_2\cr f_3\cr f_4
\end{pmatrix}.
$$

Po přeznačení dostáváme 

$$
U = K F,
$$

kde $U$ je vektor deformací, $F$ je vektor působících sil a $K$ je matice poddajnosti. Toto je již relativně jednoduchý vztah, reprezentuje totiž jednu rovnici, která vyjadřuje, že jedna veličina je součinem dvou jiných veličin.

Podobně je možné postupovat i naopak a vyjářit síly pomocí deformací vztahem $$F=CU,$$ kde $C$ je matice tuhosti.

Uvedená operace mezi maticí a vektorem se nazývá maticový součin. 

## Geometrické transformace

* Deformace nosníku: mesh tělesa
  ![](mesh.png)
  ![](deformace.png)  
* Kartézská soustava souřadnic
  
  Jsou zvoleny počátek a navzájem kolmé osy (v rovině dvě, v prostoru tři) a bod ztotožníme s uspořádanou dvojicí nebo trojicí čísel udávajících vzdálenost od počátku měřenou ve směru jednotlivých os.  
* Geometrická interpretace vektoru

  Vektor je veličina daná směrem a velikostí, například síla, rychlost, moment síly, posunutí bodu, difuzní tok, tok tepla. Znázorňujeme jej orientovanou úsečkou, jejíž směr odpovídá směru vektoru a délka souvisí s velikostí vektor. Pro početní operace používáme souřadnice vektoru. Jedná se o souřadnice koncového bodu, pokud počáteční bod přesuneme do počátku. Také se jedná o souřadnice koncového bodu v soustavě, která má nulový bod posunutý do počátečního bodu vektoru.
* Matice jako zobrazení vektoru na vektor
* Sloupce matice jako obrazy vektorů ve směru os
* Jednotková matice
* Matice rotace
* Součet a rozdíl matic

## Homogenní souřadnice, posunutí a projekce

* Homogenní souřadnice
* Posunutí pomocí maticového součinu
* Perspektiva pomocí maticového součinu

## Maticový součin dvou matic

* Složené zobrazení
* Nekomutativita 
* Asociativita

## Markovovy řetězce (druhové složení lesa)

Markovův řetězec je jeden z nejjednodušších modelů popisujících systém, který se
může nacházet v různých stavech a mezi těmito stavy se náhodně přepíná podle
předem daných pravděpodobností. Pro jeho popis je vhodný matematický aparát
založený na teorii matic. Následující ukázka aplikace při studiu populací je z
knihy Ekologie: jedinci, populace a společenstva autorů Begon, M. and Townsend, C.R. and Harper, J.L.

Americký vědec H. S. Horn studoval druhovou skladbu lesa a vycházel z
předpokladů, že existuje konstantní pravděpodobnost, že určitý druh je nahrazen
jiným druhem. Tabulka pravděpodobností je níže. Pro každý současný druh jsou v
řádku pravděpodobnosti, že tento druh bude za 50 let nahrazen druhem ze záhlaví
příslušného sloupce. Například pravděpodobnost toho, že na stanovišti, kde nyní
roste bříza topololistá poroste za 50 let červený javor je 50% (první řádek,
třetí sloupec). Pravděpodobnost toho, že na stanovišti, kde nyní roste javor za
50 let poroste bříza je nulová (třetí řádek, první sloupec). Model předpokládá,
že i když se dřevina v lokalitě nevyskytuje, existuje zdroj semen a dřevina se
na této lokalitě může objevit.

<style>
  .tabulka table {
    table-layout:fixed 
  }
</style>  

<div class="tabulka">

||Bříza topololistá|Tupela lesní|Javor červený|Buk|
|---------|--:|--:|--:|--:|
|Bříza topololistá|0.05|0.36|0.50|0.09|
|Tupela lesní|0.01|0.57|0.25|0.17|
|Javor červený|0.00|0.14|0.55|0.31|
|Buk | 0.00|0.01|0.03|0.96|

</div>

Procentuální zastoupení jednotlivých druhů budeme charakterizovat vektorem, kde
hodnoty pro stromy budou ve stejném pořadí, jako jsou stromy seřazeny v naší
tabulce. Pokud například je zastoupena napůl bříza a buk, odpovídá to vektoru
$v(0) = (50,0,0,50)^T.$ 

Procentuální zastoupení každého druhu se bude měnit z období na období.
Například procentuální zastoupení  javoru v dalším období bude dáno
procentuálním zastoupením javoru v současnosti a pravděpodobností, že se na
stanovišti udrží a dále procentuálním
zastoupením ostatních dřevin a pravděpodobností, že tato dřevina bude nahrazena
javorem. Tedy pro javor a vektor procentuálního zastoupení $v = (v_1,v_2,v_3,v_4)^T$ to
bude 
$$
  0.50 v_1 + 0.25v_2 + 0.55 v_3 + 0.03 v_4
$$
Při použití maticového součinu vektoru rozložení zastoupení s maticí
pravděpodobností
$$M=\begin{pmatrix}
0.05 & 0.01 & 0 & 0\cr
0.36& 0.57& 0.14&0.01\cr
0.50&0.25&0.55&0.03\cr
0.09&0.17&0.31&0.96
\end{pmatrix}$$
je zastoupení dřevin v následujícím období dáno vzorcem
$$v(k+1)=Mv(k).$$

```{code-cell} ipython
:tags: ["hide-input"]
M = np.matrix([0.05, 0.36, 0.50, 0.09,
              0.01, 0.57, 0.25, 0.17,
              0.0,0.14,0.55,0.31,
              0.0,0.01,0.03,0.96]).reshape(4,4).T
M
```

Zkusíme si namodelovat 20 období, tj. tisíc let vývoje. K tomu si připravíme
pole do kterého budeme ukládat data. Výchozím stavem bude rovnoměrné zastoupení
všech druhů. Vývoj jednotlivých dřevin zachytíme graficky.

```{code-cell} ipython
:tags: ["hide-input"]
N = 20
X_init = [25, 25, 25, 25]

X = np.zeros((4, N))
X[:, 0] = X_init
for i in range(N - 1):
    X[:, i + 1] = M @ X[:, i]

fig, ax = plt.subplots()
t = np.array(range(N))*50
plt.plot(t,X.T)
plt.legend(["Bříza topololistá", "Tupela lesní", "Javor červený", "Buk"])
ax.set(
    title="Vývoj zastoupení jednotlivých druhů",
    ylim=(0,None),
    ylabel="Procentuální podíl", 
    xlabel="Čas/rok");
```

Ze simulace se zdá, že poměr dřevin se postupně stabilizuje. 
Z matematického hlediska se procentuální zastoupení dřevin nemění, pokud je
vektor zastoupení dřevin vlastním vektorem matice příslušným vlastní hodnotě
$1$. Ověříme, že to tak opravdu je.

```{code-cell} ipython
:tags: ["hide-input"]
X_final = X[:, [-1]]
print(X_final.ravel())  # array se převede na 1D pomocí ravel
print((M @ X_final).ravel())
```

Pokud bychom chtěli simulaci ne po 50 letech, ale po 100 letech, můžeme maticí
vynásobit dvakrát. To je v konečném důsledku stejné, jako bychom násobili druhou
mocninou. Pokud bychom chtěli delší časový interval, použijeme vyšší mocninu.
Následující výpočet ukazuje, že pro dostatečně velkou mocninu vychází všechny
sloupce matice stejné a jsou rovny výslednému poměru mezi jednotlivými
dřevinami.

```{code-cell} ipython
:tags: ["hide-input"]
M**50
```

Další uplatnění Markovových řetězců je například při předpovědi počasí a jejím
zpřesněním na lokální úroveň. Používá informace o tom, s jakou pravděpodobností
je jeden druh počasí zachován či vystřídán druhým. 

