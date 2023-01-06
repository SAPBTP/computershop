namespace computershop;

entity Computer
{
    key ID : UUID
        @Core.Computed;
    model : String not null;
    stock : Integer;
    criticality:Integer;
}

annotate Computer with {
    ID@title : 'ID';
    model@title : 'Model';
    stock@title : 'Stock';
    criticality@title : 'Criticality';
};

