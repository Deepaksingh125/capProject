using { mydemodb as db } from '../db/data-model';

service CatalogService@(path: '/DemoService'){

    entity SalesOrders as projection on db.SalesOrders{
        *,
        salesOrderProducts: redirected to SalesOrderProducts
    }
    entity SalesOrderProducts as projection on db.SalesOrderProducts;

}
