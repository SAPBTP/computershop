using mainservice from '../../srv/cat-service';

 // Risk List Report Page
 annotate mainservice.Computer with @(UI : {
    HeaderInfo : {
       TypeName : 'Computer',
       TypeNamePlural : 'Computers',
       Title : {
          $Type : 'UI.DataField',
          Value : model 
}, 
Description : {
 $Type : 'UI.DataField',
 Value : stock
 }
 },
 SelectionFields : [model],
 Identification : [{Value : model}],
 // Define the table columns
     LineItem : [
        {Value : ID},
        {Value : model},
        { 
            Value : stock,
            Criticality : criticality
        }
    ],
 });