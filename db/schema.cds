using {cuid} from '@sap/cds/common';

namespace db;

entity Item : cuid {
    key id   : String;
        name : String;
}
