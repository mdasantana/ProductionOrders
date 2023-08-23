using ProductionOrdersService as POSrv from '../../srv/ProductionOrders-service';

annotate POSrv.ProdctOrders with @(UI: {
    //List Report
    HeaderInfo           : {
        TypeName      : 'Ordem de Produção',
        TypeNamePlural: 'Ordens de Produção',
        Title         : {
            $Type: 'UI.DataField',
            Value: aufnr
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: ktext
        }
    },
    SelectionFields      : [
        aufnr,
        maufnr,
        werks
    ],
    Identification       : [{
        Value: aufnr,
        Label: 'Ordem de Produção'
    }],
    LineItem             : [
        {Value: aufnr},
        {Value: maufnr},
        {Value: auart},
        {Value: autyp},
        {Value: ktext},
        {Value: rsnum},
        {Value: aufpl},
        {Value: bukrs},
        {Value: werks},
        {Value: lgort},
        {
            Value: plnbez,
            ![@UI.Hidden],
        },
        {Value: plntxt},
        {Value: sbmng},
        {
            Value: sbmeh,
            ![@UI.Hidden],
        },
        {
            Value: erdat,
            ![@UI.Hidden],
        },
        {
            Value: ernam,
            ![@UI.Hidden],
        },
    ],

    //Object Page
    Facets               : [
        {
            ID    : 'OrdemProdFacet',
            Label : 'Ordem',
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#OrdemProd',
        },
        {
            ID    : 'OperationsFacet',
            Label : 'Operações',
            $Type : 'UI.ReferenceFacet',
            Target: 'operations/@UI.LineItem',
        },
        {
            ID    : 'ComponentsFacet',
            Label : 'Componentes',
            $Type : 'UI.ReferenceFacet',
            Target: 'components/@UI.LineItem',
        }
    ],
    FieldGroup #OrdemProd: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: aufnr},
            {Value: maufnr},
            {Value: auart},
            {Value: autyp},
            {Value: ktext},
            {Value: rsnum},
            {Value: aufpl},
            {Value: bukrs},
            {Value: werks},
            {Value: lgort},
        ],
    },
});

annotate POSrv.PrdOrdComponents with @(UI: {
    //List Report
    HeaderInfo           : {
        TypeName      : 'Componente da Ordem de Produção',
        TypeNamePlural: 'Componentes da Ordem de Produção',
        Title         : {
            $Type: 'UI.DataField',
            Value: kdpos
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: matxt
        }
    },
    SelectionFields      : [
        kdpos,
        matnr
    ],
    LineItem             : [
        {Value: rsnum},
        {Value: rspos},
        {Value: aufnr},
        {Value: kdpos},
        {Value: matnr},
        {Value: matxt},
        {Value: aplzl},
        {Value: werks},
        {Value: lgort},
        {Value: bdmng},
        {Value: meins},
        {Value: shkzg},
        {Value: fmeng},
    ],

    //Object Page
    Facets               : [{
        ID    : 'ComponentFacet',
        Label : 'Componentes',
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#Component',
    }],
    FieldGroup #Component: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: rsnum},
            {Value: rspos},
            {Value: aufnr},
            {Value: kdpos},
            {Value: matnr},
            {Value: matxt},
            {Value: aplzl},
            {Value: werks},
            {Value: lgort},
            {Value: bdmng},
            {Value: meins},
            {Value: shkzg},
            {Value: fmeng},
        ],
    },
});

annotate POSrv.PrdOrdOperations with @(UI: {
    //List Report
    HeaderInfo           : {
        TypeName      : 'Operação da Ordem de Produção',
        TypeNamePlural: 'Operações da Ordem de Produção',
        Title         : {
            $Type: 'UI.DataField',
            Value: vornr
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: ltxa
        }
    },
    SelectionFields      : [
        vornr,
        steus
    ],
    LineItem             : [
        {Value: aufpl},
        {Value: aplzl},
        {Value: aufnr},
        {Value: vornr},
        {Value: ltxa},
        {Value: sumnr},
        {Value: steus},
        {Value: werks},
    ],

    //Object Page
    Facets               : [
        {
            ID    : 'OperationFacet',
            Label : 'Operação',
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Operation',
        },
        {
            ID    : 'ComponentsFacet',
            Label : 'Componentes da Operação',
            $Type : 'UI.ReferenceFacet',
            Target: 'components/@UI.LineItem',
        }
    ],
    FieldGroup #Operation: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: aufpl},
            {Value: aplzl},
            {Value: aufnr},
            {Value: vornr},
            {Value: ltxa},
            {Value: sumnr},
            {Value: steus},
            {Value: werks},
        ],
    },
});