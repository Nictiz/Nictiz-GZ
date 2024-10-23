# Wiki pagina genereren voor BgZ kwalificatie

De zib instances worden bijgehouden in ADA:
[ADA zib2017 project](https://decor.nictiz.nl/art-decor/ada-data/projects/zib2017/views/health_and_care_information_models_hcim_2017_index.xhtml)
Let op dat alle te gebruiken instances een titel hebben die begint met: 'bgz-pat'. Het XSLT script gebruikt dit om te bepalen wat de input voor de wiki is. 

Na aanpassen kunnen deze bestanden gedownload worden via de searchset:
```html
https://decor.nictiz.nl/ada/projects/zib2017/?raw=true
```
Deze is ook te vinden via de [ADA Admin pagina](https://decor.nictiz.nl/ada/modules/index-admin.xquery?app=zib2017&language=nl-NL)
Let wel op het toeveogen van de `raw=true` parameter, deze zorgt ervoor dat alleen echte data meekomen.

Sla het resultaat op in `/ada_instance`, b.v. als `searchset.xml`.
Voer 'ADA2test-wiki-table-bgz.xsl' op dit bestand uit.
Sla de uitvoer op als `/wiki_instance/wiki-bgz.txt`. 
Deze ruwe wiki inhoud kan opgeslagen worden als [BgZ Addenda](https://informatiestandaarden.nictiz.nl/wiki/BgZ:V1.2_AddendaInhoudelijkeGegevensBgZ2017). (Maak wel een nieuwe versie.)  
