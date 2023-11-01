using { my.bookshop as my } from '../db/data-model';
service AdminService @(requires: 'authenticated-user') {
  entity Books @(restrict : [
            {
                grant : [ 'WRITE' ],
                to : [ 'user1' ]
            }
        ]) as projection on my.Books;
  entity Authors as projection on my.Authors;
}