using {ProductionOrders as PO} from '../db/schema';

@Path: 'ProductionOrders'
service ProductionOrdersService {
    entity ProdctOrders           as projection on PO.Orders;
    entity ProdctOrdersComponents as projection on PO.Components;
    entity ProdctOrdersOperations as projection on PO.Operations;
}
