using Service as service from '../../srv/service';

annotate service.Items with
@(
    UI: {LineItem: [
        {Value: VBELN},
        {Value: POSNR},
        {Value: UECHA},
        {Value: name},
    ]},
    UI: {
        HeaderInfo               : {
            Title         : {
                $Type: 'UI.DataField',
                Value: name,
            },
            TypeName      : 'Item',
            TypeNamePlural: 'Items',
        },
        HeaderFacets             : [{
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#HeaderContent',
        }],
        FieldGroup #HeaderContent: {Data: [
            {
                $Type: 'UI.DataField',
                Value: VBELN,
            },
            {
                $Type: 'UI.DataField',
                Value: POSNR,
            },
            {
                $Type: 'UI.DataField',
                Value: UECHA,
            },
        ]},
        Facets                   : [{
            $Type : 'UI.ReferenceFacet',
            ID    : 'Batches',
            Target: 'to_batches/@UI.LineItem'
        }]
    }
) {
    name  @(title: '{i18n>name}');
    VBELN @(title: '{i18n>VBELN}');
    POSNR @(title: '{i18n>POSNR}');
    UECHA @(title: '{i18n>UECHA}');
};
