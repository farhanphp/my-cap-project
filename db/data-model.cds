namespace my.bookshop;
using { Country, Currency, managed } from '@sap/cds/common';

entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}

type Amount {
  value: Decimal(2,1);
  currency: Currency;
}

entity AuthorView as select from Authors {
  name || ' ' as name : String
};

entity Orders : managed {
  key ID  : UUID;
  book    : Association to Books;
  country : Country;
  amount  : Integer;
}
