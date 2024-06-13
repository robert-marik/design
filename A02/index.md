# Lineární algebra II


## Konstituční zákony

* Matice jako trenzor a materiálová vlastnost
    * Například spád teploty se zobrazí na tok tepla (Fourierův zákon), spád koncentrace se zobrazí na difuzní tok (Fickův zákon).
	* Vzor a obraz nemusí být rovnoběžné
	* Matice souvisí se souřadnicemi, materiálová vlastnost ne. Proto se ve fyzice pracuje častěji s pojmem tenzor. V souřadnicích můžeme brát tenzor jako matici, která se ještě chová speciálním způsobem při změnách souřadnic.
* Ortotropní materiály
    * Mají několik rovin souměrnosti
    * Podnět ve význačných směrech má díky symetrii stejný směr jako je odezva na tento podnět.

## Vlastní směry a hodnoty

**Definice** Buďte $A$ matice, $\lambda$ číslo a $\vec v$ vektor, splňující $$A\vec v = \lambda \vec v.$$ Potom se vektor $\vec v$ nazývá *vlastním vektorem matice $A$* a číslo $\lambda$ *vlastním číslem matice $A$ příslušným vlastnímu vektoru $\vec v$*.

**Neformální definice.** Vlastní směr matice je směr, který se zobrazuje na směr rovnoběžný. Délka obrazu jednotkového vektoru mířícího vlastním směrem je vlastní číslo.

* Pro aplikace to znamená, že podnět (například spád teploty) ve vlastním směru vyvolá odezvu (například tok tepla) ve stejném směru.
* Vlastní směry symetrických materiálů souvisí s rovinami symetrie. 
* Synonymum pro vlastní směr a vlastní hodnotu jsou vlastní vektor a vlastní číslo.


## Diagonalizace

Konstituční zákony v ortotropních materiálech jsou jednoduché, pokud
volíme souřadnou soustavu ve vlastních směrech tenzoru popisujícího
daný zákon. V takových případech je matice popisující danou vlastnost
diagonální. Například tok tepla vyvolaný spadem teploty v podélném
směru dřeva je také v tomto směru. Totéž platí i pro další anatomické
směry.
 
## Transformace souřadnic, inverzní matice

* Vztah mezi souřadnicemi v různých souřadnicových systémech, [animace](https://user.mendelu.cz/marik/manim/MatrixMultiplication/)
* Inverzní matice je náhrada za absenci dělení matic.
* Transformace tenzoru do jiných souřadnic, [animace](https://user.mendelu.cz/marik/manim/Deformation/)
* Tyč je namáhána tahovým napětím $10\,\mathrm{MPa}$ ($100\,\mathrm{kg}/\mathrm{cm}^2$). Uprostřed je rovný lepený spoj skloněný o $30^\circ$ od kolmice na podélnou osu. Jaké je normálové a smykové namáhání spoje? [Výpočet](https://sagecell.sagemath.org/?z=eJxVTrsKwzAM3A3-B49ycIJLt0I-IYtXk8E0LjE0ivED0r-v8yhNNIg73Z0kN_k5JIZ58h9mIkNPCSV5tO8WfRPM4AxGuEu-jgf7YgrSaJPhD0pYqWBTDlhizWRScAtoXfBzjodN1IVGhwfthb5wcTH3_Xama8_rblLIElv7LvvgMEHHf0hBvf7Lq65SsKGT9Fd2E_8C_79KaA==&lang=python&interacts=eJyLjgUAARUAuQ==)
* Využití inverzní matice k řešení soustav lineárních rovnic

Další informace: viz [Matematika](https://robert-marik.github.io/matematika/intro.html)
