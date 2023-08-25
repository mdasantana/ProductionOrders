using {ProductionOrders as PO} from '../db/schema';

@Path: 'ProductionOrders'
service ProductionOrdersService {
    entity ProdctOrders @(restrict: [
        {
            grant: ['READ'],
            to   : ['UserView'],
        },
        {
            grant: ['*'],
            to   : ['UserManager'],
        }
    ]) as projection on PO.Orders;

    entity PrdOrdComponents @(restrict: [
        {
            grant: ['READ'],
            to   : ['UserView'],
        },
        {
            grant: ['*'],
            to   : ['UserManager']
        }
    ]) as projection on PO.Components;

    entity PrdOrdOperations @(restrict: [
        {
            grant: ['READ'],
            to   : ['UserView']
        },
        {
            grant: ['*'],
            to   : ['UserManager']
        }
    ]) as projection on PO.Operations;
}
