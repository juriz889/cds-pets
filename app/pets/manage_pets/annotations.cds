using PetService as service from '../../../srv/cat-service';
annotate service.Pet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'birthDate',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
                        {
                $Type : 'UI.DataField',
                Label : 'Owner',
                Value : owner_ID,
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
    ]
);

annotate service.Pet with {
    owner @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Owner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : owner_ID,
                ValueListProperty : 'ID',
            },
        ],
    }
};

annotate service.Pet with {
    type @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PetType',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : type_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'type',
            },
        ],
    }
};

