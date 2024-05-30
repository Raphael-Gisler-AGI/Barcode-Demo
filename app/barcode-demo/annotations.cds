using Service as service from '../../srv/service';

annotate service.Items with
@(
    UI : {
        LineItem : [
            { Value: VBELN },
            { Value: POSNR },
            { Value: UECHA },
            { Value: name },
        ],
    }
);
