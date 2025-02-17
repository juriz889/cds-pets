using CatalogService as service from '../../srv/cat-service';
annotate service.Owner with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'telephone',
                Value : telephone,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'address',
            Value : address,
        },
        {
            $Type : 'UI.DataField',
            Label : 'city',
            Value : city,
        },
        {
            $Type : 'UI.DataField',
            Label : 'telephone',
            Value : telephone,
        },
    ],
);

