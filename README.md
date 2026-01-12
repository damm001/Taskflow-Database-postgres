
# PostgreSQL Task Management Database

This repository contains a PostgreSQL relational database project for a Task Management Web Application.

## Features
- User and task relational design
- Auto-generated sample data
- Optimized indexes
- Practical SQL queries for analytics

## Setup Instructions

1. Create database:
```sql
CREATE DATABASE task_manager_db;
```

2. Connect:
```bash
psql -d task_manager_db
```

3. Run schema:
```sql
\i schema.sql
```

4. Seed data:
```sql
\i seed.sql
```

5. Run queries:
```sql
\i queries.sql
```

## Author
James Stephen

## License
MIT
