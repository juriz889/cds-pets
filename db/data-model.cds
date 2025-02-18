namespace de.zjz.pets;

entity Owner {
  key ID        : UUID;
      firstName : String;
      lastName  : String;
      address   : Association to Address;
      telephone : String;
      pets      : Association to many Pet
                    on pets.owner = $self;
}

entity Address {
  key ID         : UUID;
      street     : String;
      city       : String;
      postalCode : String;
      country    : String;
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

entity Veterinarian {
  key ID        : UUID;
      firstName : String;
      lastName  : String;
      address   : Association to Address;
}
