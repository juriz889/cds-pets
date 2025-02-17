namespace de.zjz.pets;

entity Owner {
  key ID        : Integer;
      address   : String;
      city      : String;
      telephone : String;
      pets      : Association to many Pet
                    on pets.owner = $self;
}

entity Pet {
  key ID        : Integer;
      owner     : Association to Owner;
      birthDate : Date;
      name      : String;
      type      : Association to PetType;
      visits    : Association to many Visit;
}
 
entity PetType {
  key ID   : Integer;
      type : localized String;
}

entity Visit {
  key ID          : Integer;
      visitDate   : Date;
      description : String;
}
