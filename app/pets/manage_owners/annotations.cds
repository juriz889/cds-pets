using PetService as service from '../../../srv/cat-service';

annotate service.Owner with @(
    UI.Identification          : [{
        $Type : 'UI.DataFieldForAction',
        Action: 'PetService.add',
        Label : '{i18n>DeductDiscount}'
    }],
    UI.FieldGroup #HeaderGroup : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Owner_FirstName}',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Owner_LastName}',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Owner_Telephone}',
                Value: telephone,
            },
        ],
    },
    UI.FieldGroup #AddressGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Owner_FirstName}',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Owner_LastName}',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Owner_Telephone}',
                Value: telephone,
            },
        ],
    },
    UI.Facets                  : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#HeaderGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Pets}',
            Target: 'pets/@UI.LineItem'
        },
    ],
    UI.LineItem                : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Owner_FirstName}',
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Owner_LastName}',
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Owner_Telephone}',
            Value: telephone,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action: 'PetService.add',
            Label : '{i18n>DeductDiscount}'
        }
    ],
) actions {
    add                     @(Core.OperationAvailable: true);
}

annotate service.Pet with @(UI: {
    Identification : [{Value: name}],
    SelectionFields: [name],
    LineItem       : [{
        Value: name,
        Label: '{i18n>Pet_Name}'
    }, ]
});

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


annotate service.Owner with @Capabilities.InsertRestrictions: {Insertable: true};
annotate service.Owner with @Capabilities.UpdateRestrictions: {Updatable: true};
