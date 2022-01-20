using CatalogService as service from '../../srv/cat-service';

annotate service.SalesOrders with @(
    UI : {
        SelectionFields  : [ //Slection field is to show f4/valuehelp in your UI
            soNumber,
            poNumber,
            customerName
        ],
    
    LineItem : [
        {
            $Type : 'UI.DataField',
            Value : soNumber,
        },
        {
            $Type : 'UI.DataField',
            Value : orderDate,
        },
        {
            $Type : 'UI.DataField',
            Label: 'Customer Name',
            Value : customerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer Number',
            Value : customerNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PO Number',
            Value : poNumber,
        },
    ],

    // To show the details on the header screen 
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Sales Order',
        TypeNamePlural : 'Sales Orders',
        Title: {
                $Type: 'UI.DataField',
                Value: soNumber
        }
    },
    // TO target the details on Header of Object Page
    HeaderFacets  : [
        {
            $Type: 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#HeaderInfo1'

        }
    ],

    //filed group1 --collection of fills that will be shown together on Header
        FieldGroup #HeaderInfo1 : {
            $Type : 'UI.FieldGroupType',
            Data  : [
                {
                    $Type : 'UI.DataField',
                    Value : soNumber
                },
                {
                    $Type : 'UI.DataField',
                    Value : poNumber
                },
                {
                    $Type : 'UI.DataField',
                    Value : customerName
                }
            ]
        },

        Facets                  : [{
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Sales Order Products',
            Target : 'salesOrderProducts/@UI.LineItem#SOLineItems'
        }]
    }
);


annotate service.SalesOrderProducts  with @(
    UI : {
        LineItem #SOLineItems      : [
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier',
                Value : supplier
            },
            {
                $Type : 'UI.DataField',
                Label : 'Available Qunaity',
                Value : availableQty
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order Quantity',
                Value : orderQty
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery Date',
                Value : deliveryDate
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date',
                Value : orderDate
            }
        ]

    }
);

