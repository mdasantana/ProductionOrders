namespace ProductionOrders;

using {managed} from '@sap/cds/common';

entity Orders : managed {
    key aufnr      : String(12); //Order
        auart      : String(4); //Order Type
        autyp      : String(2); //Order Category
        rsnum      : String(10); //Number of Reservation/Dependent Requirement
        aufpl      : String(10); //Routing number of operations in the order
        ktext      : String(40); //Description
        maufnr     : String(12); //Master Production Order
        bukrs      : String(4); //Company Code
        werks      : String(4); //Plant
        lgort      : String(4); //Stor. Location
        plnbez     : String(18); //Material Number
        plntxt     : String(40); //Material Description
        sbmng      : Double; //Base quantity
        sbmeh      : String(3); //Base Unit of Measure
        components : Association to many Components
                         on components.rsnum = $self.rsnum; //Components
        operations : Association to many Operations
                         on operations.aufpl = $self.aufpl; //Operations
        ernam      : String(12); //Created by
        erdat      : Date; //Created on
}

entity Components : managed {
    key rsnum : String(10); //Number of Reservation/Dependent Requirement
    key rspos : String(4); //Item Number of Reservation/Dependent Requirement
        aufnr : String(12); //Order
        kdpos : String(4); //Item Number in Production Order
        matnr : String(18); //Material
        matxt : String(40); //Material Description
        aplzl : String(8); //Operation
        werks : String(4); //Plant
        lgort : String(4); //Stor. Location
        bdmng : Double; //Base Quantity Packed in the Handling Unit Item
        meins : String(3); //Base Unit
        shkzg : String(1); //Debit/Credit
        fmeng : Boolean; //Quantity is Fixed
        order : Association to one Orders
                    on order.rsnum = $self.rsnum; //Association to order
}

entity Operations : managed {
    key aufpl : String(10); //Routing number of operations in the order
    key aplzl : String(8); //General counter for order
        aufnr : String(12); //Order
        vornr : String(4); //Oper./Act.
        ltxa  : String(40); //Oper. Description
        steus : String(4); //Activity control key
        werks : String(4); //Plant
        sumnr : String(8); //Node number of the superior operation
        order : Association to one Orders
                    on order.aufpl = $self.aufpl; //Association to order
}
