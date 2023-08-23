sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'br/com/production/productionorders/test/integration/FirstJourney',
		'br/com/production/productionorders/test/integration/pages/ProdctOrdersList',
		'br/com/production/productionorders/test/integration/pages/ProdctOrdersObjectPage',
		'br/com/production/productionorders/test/integration/pages/ProdctOrdersOperationsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProdctOrdersList, ProdctOrdersObjectPage, ProdctOrdersOperationsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('br/com/production/productionorders') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProdctOrdersList: ProdctOrdersList,
					onTheProdctOrdersObjectPage: ProdctOrdersObjectPage,
					onTheProdctOrdersOperationsObjectPage: ProdctOrdersOperationsObjectPage
                }
            },
            opaJourney.run
        );
    }
);