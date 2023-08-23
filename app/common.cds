using ProductionOrders as PO from '../db/schema';

annotate PO.Orders with {
    aufnr  @(title: 'Ordem de Produção');
    auart  @(title: 'Tipo');
    autyp  @(title: 'Categoria');
    rsnum  @(title: 'Nº da Reserva');
    aufpl  @(title: 'Nº da Roteiro');
    ktext  @(title: 'Descrição');
    maufnr @(title: 'Ordem Mestre');
    bukrs  @(title: 'Empresa');
    werks  @(title: 'Centro');
    lgort  @(title: 'Depósito');
    plnbez @(title: 'Material');
    plntxt @(title: 'Descrição do Material');
    sbmng  @(
        title        : 'Quantidade Base',
        Measures.Unit: sbmeh,
    );
    sbmeh  @(
        title        : 'Und. Medida Quantidade Base',
        Common.IsUnit: true,
    );
};

annotate PO.Components with {
    rsnum @(title: 'Nº da Reserva');
    rspos @(title: 'Item da Reserva');
    aufnr @(title: 'Ordem de Produção');
    kdpos @(title: 'Componente');
    matnr @(title: 'Material');
    matxt @(title: 'Descrição do Material');
    aplzl @(title: 'Operação');
    werks @(title: 'Centro');
    lgort @(title: 'Depósito');
    bdmng @(
        title        : 'Quantidade',
        Measures.Unit: meins,
    );
    meins @(
        title        : 'Und. de Medida',
        Common.IsUnit: true,
    );
    shkzg @(title: 'Débito/Crédito');
    fmeng @(title: 'Quantidade Fixa');
};

annotate PO.Operations with {
    aufpl @(title: 'Nº da Roteiro');
    aplzl @(title: 'Contador');
    aufnr @(title: 'Ordem de Produção');
    vornr @(title: 'Operação');
    ltxa  @(title: 'Descrição');
    steus @(title: 'Chave de Controle');
    werks @(title: 'Centro');
    sumnr @(title: 'Operação Superior');
};