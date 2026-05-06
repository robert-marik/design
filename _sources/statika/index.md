# Základy teorie elasticity

## První a druhá impulsová věta.

### Popis posuvného a rotačního pohybu tělesa

Fyzikální parametry pro popis posuvného pohybu tělesa:
  * hmotnost tělesa $m$
  * rychlost tělesa $\vec v$
  * hybnost tělesa $\vec p = m \vec v$

Fyzikální parametry pro popis rotačního pohybu tělesa:
  * moment setrvačnosti tělesa $J$
  * úhlová rychlost tělesa $\vec \omega$
  * moment hybnosti tělesa $\vec L = J \vec \omega$

### Impulsové věty

```{prf:theorem} První impulsová věta
:nonumber:

Časová změna celkové hybnosti tělesa (soustavy) je rovna součtu vnějších sil působících na těleso (soustavu).

$$ \frac{d\vec p}{dt} = \sum \vec F $$
```

```{prf:theorem} Druhá impulsová věta
:nonumber:

Časová změna celkového momentu hybnosti tělesa (soustavy) je rovna celkovému momentu vnějších sil působících na těleso.

$$ \frac{d\vec L}{dt} = \sum \vec M $$
```

### Podmínky rovnováhy

```{prf:theorem} Podmínka statické rovnováhy
:nonumber:

$$\sum \vec F = \sum \vec M = 0$$
```

## Teorie elasticity

### Deformace, namáhání a Hookův zákon v 1D

* **Normálové napětí** $\varsigma = \frac FS$, síla působící na jednotku plochy.
* **Normálová deformace** $\varepsilon = \frac{\Delta l}{l_0}$, relativní prodloužení, udává, o kolik procent se materiál prodlouží (kladná hodnota) nebo zkrátí (záporná hodnota).
* **Hookův zákon:** normálové napětí $\sigma$ a normálová deformace $\varepsilon$ jsou si úměrné. Platí $$\varepsilon = \frac 1E \sigma.$$ Konstanta $E$ je modul pružnosti v tahu, který charakterizuje tuhost materiálu. Čím větší je modul pružnosti, tím méně se materiál deformuje při působení daného napětí.
 
###  Deformace, namáhání a Hookův zákon ve 2D
  * [obecná deformace a její linearizace](https://gist.github.com/robert-marik/dd01d023c30454183196d9c7b967aa00)
  * <a href="../notebooks/matice_symetrizace.html">symetrizace</a>

###  Deformace, namáhání a Hookův zákon ve 3D

#### Tenzor napětí

* Napětí je podílem velikosti působící síly a velikosti plochy, na kterou tato síla působí. Pro sílu kolmou k ploše mluvíme o normálovém napětí, pro sílu ve směru plochy o smykovém napětí. 
* Znaménková konvence - viz obrázek. Napětí v obrázku jsou kladná, opačná napětí jsou záporná. Kladné normálové napětí tedy značí tah, záporné tlak. 
* V obrázku jsou napěí pouze na třech stěnách, na zbylých šesti jsou odpovídající napětí tak, aby element byl ve statické rovnováze, tj. aby výsledná síla a výsledný moment byly nulové.

$$
\sigma = \begin{pmatrix}
\sigma_x & \sigma_{xy} & \sigma_{xz}\cr
\sigma_{xy} & \sigma_y & \sigma_{yz}\cr
\sigma_{xz} & \sigma_{xy} & \sigma_{z}
\end{pmatrix}
$$

![](../images/stress.svg)

Tenzor napětí je bilineární forma, umožňuje výpočet síly na libovolně orientované ploše

#### Praktická ukázka tenzoru napětí v tříbodovém ohybu

##### Tříbodový ohyb, tah v podélném směru

![](../statika/nosnik_3bodovy.png)

Tah na spodní straně, tlak na horní straně a před podpěrami. Zeleně neutrální oblast, kde je napětí nulové.

##### Tříbodový ohyb, tah v podélném směru pro čtvrtinu nosníku

![](../statika/nosnik_ctvrtina.png)

Numerická simulace pro část nosníku šetří strojový čas a nároky na paměť. V tomto případě je možné použít symetrii a počítat pouze čtvrtinu nosníku.

##### Tříbodový ohyb, smykové napětí

![](../statika/beam_smyk.png)

Smykové napětí v levé a pravé polovině nosníku se liší znaménkem, je antisymetrické. 

#### Linearizace vektoru posunutí, tenzor deformace

* linearizace, [nelineární transfromace a její linearizace](https://gist.github.com/robert-marik/dd01d023c30454183196d9c7b967aa00)
* separace rotační, posuvné a deformační složky 
* tenzor deformace $\varepsilon$

$$
\varepsilon = (\varepsilon_{ij}) = \left(\frac 12\left(\frac{\partial u_i}{\partial x_j} + \frac{\partial u_j}{\partial x_i} \right)\right)
$$

* Komponenty $\varepsilon_{ii}$ jsou normálové deformace, $\varepsilon_{ij}$ pro
  $i\neq j$ jsou smykové deformace.
* Normálová deformace udává, o kolik procent se materiál v daném směru prodlouží
  (kladná hodnota) nebo zkrátí (záporná hodnota). Smyková deformace udává, jak
  se změní pravé úhly (polovina změny velikosti úhlu v obloukové míře). 

 
