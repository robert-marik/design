# Derivace

Naučíme se sledovat rychlosti změn veličin a pracovat s těmito rychlostmi. Poté budeme umět přirozeně pracovat s modely, které tuto rychlost používají. Tato 

## Motivace, problematika měření rychlosti

Uvažujme teplotu jako funkci času. Budeme se zajímat o rychlost růstu teploty v čase. 

### A) Teplota daná tabulkou 

Nejjednoduším případem je situace, kdy je teplota dána tabulkou 

|$t$|8:00|8:30|
|-|-|-|
|$T/^\circ{\mathrm C}$|9|12|

Z tabulky je zřejmé, o kolik se teplota zvýšila za půl hodiny a vydělením délkou časového intervalu se růst přepočítá na jednotku času. Rychlost růstu teploty je tedy dána následujícím vzorcem. 

$$\frac{(12-9)^\circ \mathrm C}{0.5\,\mathrm{hod}}=6^\circ \mathrm C/\mathrm{hod}$$

Tento vzorec určuje průměrnou rychlost růstu teploty mezi osmou hodinou a půl devátou. 

### B) Teplota jako funkce času, průměrná rychlost

Obecnější případ je, když známe teplotu jako funkci času. Poté průměrnou rychlost mezi okamžikem $t$ a následujícím okamžikem $t+h$ určíme následovně. 

$$\frac{T(t+h)-T(t)}{h}$$


### C) Teplota jako funkce času, okamžitá rychlost

V praxi je nutné znát okamžitou rychlost. Příroda reaguje na okamžitého hodnoty veličin. Formálně není možné do předchozího vzorce dosadit $h=0$. Ja však možné toto udělat trikem založeným na limitním přechodu (viz [prezentace](https://user.mendelu.cz/marik/manim/Spojitost/)).

$$\frac {\mathrm dT}{\mathrm dt}=\lim_{h\to 0}\frac{T(t+h)-T(t)}{h}$$


## Definice derivace

```{prf:definition}
:nonumber:
Derivace funkce $x(t)$ je veličina $\frac{\mathrm dx}{\mathrm dt}$ definovaná vzorcem 
$$\frac {\mathrm dx}{\mathrm dt}=\lim_{h\to 0}\frac{x(t+h)-x(t)}{h}.$$ 
```


```{prf:remark} Slovní interpretace definice derivace
:nonumber:
* Výraz z čitatele, tj. $x(t+h)-x(t)$, je změna veličiny $f$ na intervalu $[t,t+h]$. Často označujeme též $\Delta x$.
* Podíl, tj. $\frac{x(t+h)-x(t)}h$ je změna veličiny $x$ na intervalu $[t,t+h]$ přepočítaná na jednotku veličiny $t$, tj. v jistém smyslu průměrná rychlost na tomto intervalu. Často označujeme též $\frac{\Delta x}{\Delta t}$.
* Limita v definici derivace stahuje délku intervalu, na kterém počítáme průměrnou rychlost, k nule. Tím se z průměrné rychlosti stane okamžitá rychlost.
```

|Část definičního vztahu|Slovní interpretace|
|:---|:---|
|$x(t)$|funkční hodnota v bodě|
|$x(t+h)$|funkční hodnota ve vedlejším bodě|
|$x(t+h)-x(t)$|změna funkce na intervalu $[t,t+h]$|
|$\displaystyle\frac{x(t+h)-x(t)}{h}$|průměrná rychlost změny funkce na intervalu $[t,t+h]$, též změna funkce po přepočtu na interval jednotkové délky|
|$\displaystyle\lim_{h\to 0}\cdots$|limita pro redukci průměrné rychlosti na okamžitou|
|$\displaystyle\lim_{h\to 0}\frac{x(t+h)-x(t)}{h}$|okamžitá rychlost změny funkce v bodě $x$, derivace|


## Fyzikální význam derivace

Fyzikálně derivace udává okamžitou rychlost závislé proměnné, tj. změnu této proměnné vyvolanou jednotkovou změnou nezávislé proměnné. Nezávislou proměnnou bývá nejčastěji čas nebo poloha. Potom derivací získáme informaci, jak rychle se hodnoty sledované veličiny mění v čase nebo v prostoru.

* Derivace je okamžitá rychlost růstu, viz [derivace a průběh funkce](https://user.mendelu.cz/marik/manim/PrubehFunkce/)  
* Okamžitá rychlost pohybu je derivace polohy podle času. Ve vícedimenzionálním případě pracujeme s polohovým vektorem a derivujeme každou komponentu samostatně.
* Rychlost s jakou se mění rychlost pohybu je zrychlení. Zrychlení je podle Newtonova pohybového zákona úměrné působící síle. Ta může či nemusí záviset na poloze. Například při pohybu v tíhovém poli Země je síla konstantní, protože v každém místě je stejná tíhová síla. Při kmitání (například na pružině) okolo rovnovážné polohy síla není konstantní, protože ve větší vzdálenosti je síla, která vrací těleso zpět, zpravidla větší. (Na malé natažení pružiny stačí menší síla než na velké natažení.)
* Rychlost změny teploty chladnoucí kávy je derivace teploty podle času. Tato rychlost souvisí s teplotním rozdílem kávy a okolí. Protože teplota horké kávy s časem klesá, je derivace teploty podle času záporná.
* Rychlost růstu teploty v daném směru je derivace teploty podle polohy. Je možné ji udávat například ve stupních Celsia na centimetr. Tato hodnota je důležitá pro posouzení tepelných ztrát.
* Rychlost, s jakou se mění svislá deformace zatíženého nosníku, je rovna úhlu pootočení svislých průřezů od svislé polohy.



