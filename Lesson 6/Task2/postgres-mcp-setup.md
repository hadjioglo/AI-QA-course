# Step-by-step setup for Postgres DB and MCP server

## 1. Create a `docker-compose.yml` file
- Start a Postgres database with:
  - Database name: `postgres_test_db`
  - User: `root`
  - Password: `root`
  - Port: `5434`
  - Mount your SQL dump as an init script.

## 2. Start the database
Run:
```bash
docker compose up -d
```

## 3. Create or adjust `mcp.json`
Add/update connection string:
```
postgresql://root:root@host.docker.internal:5434/postgres_test_db
```

## 4. Start the MCP server
Run:
```bash
docker run -i --rm mcp/postgres postgresql://root:root@host.docker.internal:5434/postgres_test_db
```

## 5. Check the connection from terminal
Run:
```bash
docker exec -i postgres_test_db psql -U root -d postgres_test_db -c "\dt"
```

## 6. Import SQL dump if not already imported
If your dump is a custom format, use:
```bash
docker exec -i postgres_test_db pg_restore -U root -d postgres_test_db < dump-postgres-202508231122.sql
```
For plain SQL, use:
```bash
docker exec -i postgres_test_db psql -U root -d postgres_test_db < dump-postgres-202508231122.sql
```

---

# stop container
Run:
```bash
docker stop
```

# remove container
Run:
```bash
docker compose down
```

You can copy and reuse this prompt for future projects.
