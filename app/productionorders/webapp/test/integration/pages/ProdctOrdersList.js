sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'br.com.production.productionorders',
            componentId: 'ProdctOrdersList',
            entitySet: 'ProdctOrders'
        },
        CustomPageDefinitions
    );
});