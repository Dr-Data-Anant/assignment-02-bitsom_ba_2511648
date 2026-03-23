## Anomaly Analysis

### Insert Anomaly
In the flat dataset, we cannot insert a new product unless an order exists. For example, if a new product is launched but not yet ordered, it cannot be stored.

### Update Anomaly
If a customer’s city changes, it must be updated in multiple rows where the customer appears. This can lead to inconsistency if some rows are not updated.

### Delete Anomaly
If the only order of a customer is deleted, all customer information is lost.

## Normalization Justification

Keeping all data in a single table leads to redundancy and anomalies. For instance, customer details like city and name are repeated for every order. This increases storage and causes update issues.

By normalizing into multiple tables (Customers, Orders, Products, Order_Items), we remove redundancy. Each table stores only relevant attributes, and relationships are maintained using foreign keys.

For example, customer information is stored once in the Customers table. Orders reference customers using customer_id, avoiding duplication.

Normalization ensures:
- Data consistency
- Reduced redundancy
- Easier maintenance
- Better query performance

Thus, normalization is necessary and not over-engineering.