using {ProductionOrders as PO} from '../db/schema';

@Path: 'ProductionOrders'
service ProductionOrdersService {
    entity ProdctOrders           as projection on PO.Orders;
    entity PrdOrdComponents as projection on PO.Components;
    entity PrdOrdOperations as projection on PO.Operations;
}
