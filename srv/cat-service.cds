using de.zjz.pets as my from '../db/data-model';

@path: 'v1/petservice'
service PetService {
    entity Pet     as projection on my.Pet;
    entity Owner   as projection on my.Owner;
    entity Visit   as projection on my.Visit;
    entity PetType as projection on my.PetType;
}

annotate PetService.Owner with @odata.draft.enabled;
annotate PetService.Pet with @odata.draft.enabled;
