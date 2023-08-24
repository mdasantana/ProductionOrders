using {ProductionOrders as PO} from '../db/schema';

@Path: 'ProductionOrders'
service ProductionOrdersService {
    @readonly
    entity ProdctOrders     as projection on PO.Orders;

    @readonly
    entity PrdOrdComponents as projection on PO.Components;

    @readonly
    entity PrdOrdOperations as projection on PO.Operations;
}
