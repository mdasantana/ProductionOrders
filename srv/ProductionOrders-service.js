const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
    // const { ProdctOrders, PrdOrdComponents, PrdOrdOperations } = this.entities;

    // this.before("READ", ProdctOrders, (data) => {
    //     const aOrders = Array.from(data);
    //     console.log('-------DATA BEFORE-------');
    //     console.log(aOrders);
    //     console.log('-------DATA BEFORE-------');
    // });

    // this.on("READ", ProdctOrders, async (oODataReq) => {
    //     oODataReq.query.where("aufnr = '000002000253'");
    //     return await cds.transaction(oODataReq).send({ query: oODataReq.query });
    // });

    // this.after("READ", ProdctOrders, (data) => {
    //     const aOrders = Array.from(data);
    //     console.log('-------DATA AFTER-------');
    //     console.log(aOrders);
    //     console.log('-------DATA AFTER-------');
    // });
});