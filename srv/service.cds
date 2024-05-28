using {db} from '../db/schema';

service Service {
    entity Items as projection on db.Item;
}
