namespace de.zjz.pets;

entity Owner {
  key ID        : UUID;
      address   : String;
      city      : String;
      telephone : String;
      pets      : Association to many Pet
                    on pets.owner = $self;
}

entity Pet {
  key ID        : UUID;
      owner     : Association to Owner;
      birthDate : Date;
      name      : String;
      type      : Association to PetType;
      visits    : Association to many Visit;
}
 
entity PetType {
  key ID   : UUID;
      type : localized String;
}

entity Visit {
  key ID          : UUID;
      visitDate   : Date;
      description : String;
}
