using computershop as my from '../db/data-model';

service mainservice {
    @readonly entity Computer as projection on my.Computer;
}