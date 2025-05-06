# Funkce


Při hlubším než povrchním studiu libovolného systému nás zajímají veličiny spojené se studovaným problémem a vztahy mezi těmito veličinami. Tyto vztahy jsou zprostředkovávány funkcemi. Jako příklad si představme nosník vetknutý do země a na konci zatížený vodorovnou silou $F$. Deformace nosníku $\delta$ na konci (skalární veličina) souvisí s velikostí zatěžující síly (skalární veličina). Pro studium problému je vhodné mít převodní pravidlo, které pro každé zatížení udává deformaci. Toto pravidlo bude z matematického úhlu pohledu funkce (funkce jedné proměnné). Může mít například formu
$$\delta=\frac 1k F,$$
kde $k$ je konstanta pro daný nosník (tuhost).

Na řadu použití stačí intuitivní chápání funkce i jejích vlastností. Někdy je však potřeba si myšlenky zpřesnit a plně formalizovat. V následujícím představíme definici funkce, rozdělíme funkce na rostoucí, klesající a ostatní a ukážeme si využití těchto vlastností. 

## Funkce jedné proměnné

```{prf:definition} Funkce jedné proměnné
:nonumber:
Buďte $A$ a $B$ neprázdné podmnožiny množiny reálných čísel.  Pravidlo
$f$, které každému prvku množiny $A$ přiřadí jediný prvek množiny $B$
se nazývá *funkce* (přesněji: *reálná funkce jedné reálné proměnné*).
Zapisujeme $f:A\to B$.  Skutečnost, že prvku $a\in A$ je přiřazen
prvek $b\in B$ zapisujeme $f(a)=b$. Přitom říkáme, že $b$ je *obrazem
prvku* $a$ při zobrazení $f$, resp. že $a$ je *vzorem prvku* $b$ při
zobrazení $f$.
```

```{prf:remark} Terminologie
:nonumber: 
Množina $A$ z definice funkce se nazývá *definiční obor funkce $f$*.
Označujeme $\mathrm D(f)$ (resp.  $\mathrm{Dom}(f)$). Je-li $M$
podmnožina definičního oboru, definujeme množinu $f(M)$ jako množinu
všech obrazů bodů množiny $M$. Množina $f(\mathrm{Dom}(f))=b$ se
nazývá *obor hodnot funkce $f$*.  Označujeme $\mathrm H(f)$ (resp.
$\mathrm{Im}(f)$).

Je-li $y=f(x)$ nazýváme proměnnou $x$ též *nezávislou proměnnou* a
proměnnou $y$ *závislou proměnnou*.  *Grafem* funkce rozumíme množinu
všech uspořádaných dvojic $[x,y]\in\mathbb R^2$ s vlastností $y=f(x)$.
```

## Přímá a nepřímá úměrnost

Je to až k nevíře, ale k popisu obrovského množství dějů stačí čtyři základní operace: sčítání, odčítání, násobení a dělení. Vzhledem k požadavku na konzistenci fyzikálních jednotek se nejčastěji setkáváme s násobením a dělením a proto funkce pracující s těmito operacemi mají výsadní postavení. Takový, že si vysloužily pojmenování běžně užívané i mezi nematematiky: přímá a nepřímá úměrnost. Je to formální popis situace, kdy souvislost mezi dvěma veličinami je zprostředkována násobením konstantou (přímá úměrnost), nebo kdy je násobením konstantou zprostředkována souvislost mezi jednou veličinou a převrácenou hodnotou druhé veličiny.

```{prf:definition} Přímá a nepřímá úměrnost
:nonumber:
Veličina $y$ je *přímo úměrná* veličině $x$ jestliže existuje konstanta $k$ taková, že platí $$y=kx.$$ 
Veličina $y$ je *nepřímo úměrná* veličině $x$ jestliže existuje konstanta $k$ taková, že platí $$y=\frac kx.$$
```

```{prf:remark}
:nonumber:
Je-li veličina $y$ úměrná veličině $x$, píšeme $$y\sim x\text{ nebo }y\propto x.$$ Je-li navíc konstanta úměrnosti blízká jedničce, tj. $x$ a $y$ jsou blízké, píšeme $$y\approx x.$$ Pro nepřímou úměrnost píšeme podobně $y\sim \frac 1x$, $y\propto \frac 1x$ a $y\approx \frac 1x$ s využitím toho, že nepřímá úměrnost je vlastně přímá úměrnost pro převrácenou hodnotu.
```


## Příklady přímé a nepřímé úměrnosti

### Dráha pohybu konstantní rychlostí

Při pohybu konstantní rychlostí je dráha $s$ úměrná času $t$. Příslušnou konstantou úměrnosti je rychlost $v$, tj. $s=vt$. Pro $t=1$ je dráha $s$ přímo rovna konstantě úměrnosti $v$. Proto můžeme konstantu úměrnosti reprezentovat jako dráhu za jednotku času. Takto rychlost i chápeme a v tomto smyslu čteme i její jednotku. Nečteme "kilometrů lomeno hodin" ale "kilometrů za hodinu".

### Čas pro projetí předem stanovené dráhy

Při pohybu po předem stanovené dráze $s$ je čas nepřímo úměrný rychlosti $v$. Platí $t=\frac sv$. Konstantou úměrnosti je dráha $s$. Pro $v=1$ je čas přímo roven dráze. Proto je možno konstantu úměrnosti slovně vyjádřit tak, že udává čas, který je nutný pro projetí příslušné dráhy jednotkovou rychlostí.

### Dynamická odezva stromů

Dynamická odezva stromů ve větru je častým námětem mnoha vědeckých prací.
  Souhrnná studie [Jackson, T. et al (2021) The motion of trees in the wind: a
  data synthesis.
  Biogeosciences.](https://bg.copernicus.org/preprints/bg-2020-427/) tvrdí, že v
  některých případech (zpravidla listnáče v lese) je základní frekvence
  vlastních kmitů stromů nepřímo úměrná odmocnině výšky, což je vztah známý pro
  kyvadlo. $$f\sim \frac 1{\sqrt H}$$ U jiných stromů (zpravidla
  jehličnaté stromy) je základní frekvence přímo úměrná průměru $d$ a nepřímo
  úměrná druhé mocnině výšky $H$, tj. $$f\sim \frac{d}{H^2}.$$ Tento
  vztah je znám pro nosníky. Existence dvou různých vztahů ukazuje, že pro některé stromy je pro
  dynamické vlastnosti dominantní hmota v koruně, pro jiné stromy hmota podél
  kmene.

### Další příklady přímé a nepřímé úměrnosti 


* Při periodickém pohybu je frekvence $f$ nepřímo úměrná periodě $T$. Příslušnou konstantou úměrnosti je jednička, tj. $f=\frac 1T$.
* Objem $V$ koule o poloměru $r$ je přímo úměrný třetí mocnině poloměru. Existuje tedy konstanta $k$ taková, že platí $V=k r^3$. Pro $r=1$ je objem $V$ přímo roven konstantě $k$. Konstanta proto $k$ vyjadřuje objem koule jednotkového poloměru. Protože objem koule jednotkového poloměru je $\frac 43 \pi$ učí se žáci v matematice rovnou vzorec $V=\frac 43 \pi r^3$.
* Síla působící na těleso ve vzdálenosti $r$ od planety je dána vztahem $F=\frac{k}{r^2}$, kde $k$ je konstanta úměrnosti (závislá na hmotnosti planety i tělesa). Toto můžeme slovně vyjádřit tak, že síla je nepřímo úměrná druhé mocnině vzdálenosti. Pro $r$ rovno jedné je síla $F$ přímo rovna konstantě $k$. Konstanta úměrnosti $k$ proto udává sílu působící na těleso v jednotkové vzdálenosti od planety.

