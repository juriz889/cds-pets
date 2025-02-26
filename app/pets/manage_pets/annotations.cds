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


annotate service.Pet with @Capabilities.InsertRestrictions: {
    Insertable: true
};