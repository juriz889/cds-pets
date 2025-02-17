using de.zjz.pets as my from '../db/data-model';

service CatalogService {
    entity Pet     as projection on my.Pet;
    entity Owner   as projection on my.Owner;
    entity Visit   as projection on my.Visit;
    entity PetType as projection on my.PetType;
}
annotate CatalogService.Pet with @odata.draft.enabled ;
