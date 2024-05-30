using {cuid} from '@sap/cds/common';

namespace db;

entity Items : cuid {
    key VBELN      : String;
    key POSNR      : String;
        UECHA      : String;
        name       : String;
        to_batches : Association to Items
                         on to_batches.UECHA = $self.POSNR;
}
