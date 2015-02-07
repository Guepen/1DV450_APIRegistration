README
======


### Om du vill forka/ladda ner det här repot och köra applikationen lokalt i din egna maskin bör du se till att gå igenom nedanstående steg för att du skall kunna komma igång så fort som möjligt

    * Ruby version: 2.1.5p273

    * Rails version: 4.1.8

    * System beroenden: Se till att att alla GEMs är installerade genom att köra bundle install.
      Om du gör detta från en windows maskin kan du komma att behöva byta ut sourcen https://rubygems.org
      till http://rubygems.org för att alla GEMs skall kunna installeras

    * Konfiguration: För Admin-delen av applikationen används GEMet Active Admin. Om Något inte skulle
      fungera här hänvisar jag till den mycket enkla
      installationsguiden på http://activeadmin.info/docs/documentation.html

    * För att generera upp databasen kör du kommandot: rake db:setup

    * På modellsidan finns automatiska tester. Se till att samtliga tester går igenom.
      Du kör testerna genom att köra kommandot rake test
