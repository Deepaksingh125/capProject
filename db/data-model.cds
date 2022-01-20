namespace mydemodb;

entity SalesOrders {
        @title : 'Sales Order Number'
    key soNumber: Integer;
        @title : 'Order date'
        orderDate: Date;
        @title : 'Customer Name'
        customerName: String;
        @title : 'Customer Number'
        customerNumber: Integer;
        @title : 'PO Number'
        poNumber: Integer;
        @title : 'Inquiry Number'
        inquiryNumber: Integer;
        @title : 'Total Order Items'
        totalOrderItems: Integer;
        salesOrderProducts: Association to many SalesOrderProducts on salesOrderProducts.salesOrder = $self;
}

entity SalesOrderProducts {
        @title : 'Sales Order Number'
        key salesOrder: Association to SalesOrders;
        @title : 'Supplier'
        key supplier: String;
         @title : 'Order Qty'
        orderQty: Integer;
         @title : 'Available Qty'
        availableQty: Integer;
         @title : 'Delivery date'
        deliveryDate: Date;
         @title : 'Status'
        Status: String;
         @title : 'Order date'
        orderDate: Date;
         @title : 'Location'
        location: String;
}

