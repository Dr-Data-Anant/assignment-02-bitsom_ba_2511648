## Database Recommendation

For a healthcare system, MySQL (RDBMS) is more suitable due to strong ACID properties. Healthcare data requires consistency and accuracy, which relational databases guarantee.

MongoDB offers flexibility and scalability, but it follows BASE properties, which may lead to eventual consistency issues. In healthcare, inconsistent data can be dangerous.

RDBMS ensures:
- Strong data integrity
- Structured schema
- Reliable transactions

However, if fraud detection is added, MongoDB or hybrid architecture can help due to handling large unstructured data.

Thus:
- Core system → MySQL
- Analytics/fraud → NoSQL

This hybrid approach is optimal.