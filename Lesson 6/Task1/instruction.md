# MCP Postgres Connection Fix Instructions

## Problem
Error: `MPC -32603: password authentication failed for user "user"`

This error occurs when the MCP (Model Context Protocol) postgres server fails to authenticate with the PostgreSQL database, often due to incorrect user credentials or connection configuration issues.

## Root Cause Analysis
1. **Image corruption**: The existing `mcp/postgres` Docker image may have been corrupted or outdated
2. **Connection configuration**: The MCP configuration was using input variables that may not have been properly resolved
3. **Network connectivity**: Using `host.docker.internal` on Windows can sometimes cause connection issues
4. **User mismatch**: The MCP server was trying to connect with user "user" instead of the configured "postgres" user

## Solution Steps

### Step 1: Remove the Corrupted MCP Image
```powershell
# Remove the existing mcp/postgres image
docker rmi mcp/postgres:latest

# Verify removal
docker images | Select-String mcp
```

### Step 2: Rebuild the MCP Postgres Image from Source
```powershell
# Navigate to the servers-archived directory
cd "c:\Users\alexandr.hadjioglo\IdeaProjects\AI-QA-course\servers-archived"

# Build the fresh image from source
docker build -f src/postgres/Dockerfile -t mcp/postgres .

# Verify the new image was created
docker images | Select-String mcp
```

### Step 3: Update MCP Configuration
Edit the `.vscode/mcp.json` file to use direct connection strings instead of input variables:

**Before:**
```json
{
  "inputs": [
    {
      "type": "promptString",
      "id": "pg_url",
      "description": "postgresql://postgres:postgres@host.docker.internal:5432/dvdrental"
    }
  ],
  "servers": {
    "postgres": {
      "command": "docker",
      "args": [
        "run",
        "-i",
        "--rm",
        "--network",
        "host",
        "mcp/postgres",
        "${input:pg_url}"
      ]
    }
  }
}
```

**After:**
```json
{
  "servers": {
    "postgres": {
      "command": "docker",
      "args": [
        "run",
        "-i",
        "--rm",
        "--network",
        "host",
        "mcp/postgres",
        "postgresql://postgres:postgres@127.0.0.1:5432/dvdrental"
      ]
    }
  }
}
```

### Step 4: Key Configuration Changes
1. **Removed input variables**: Eliminated the `inputs` section and hardcoded the connection string
2. **Changed host address**: Switched from `host.docker.internal` to `127.0.0.1` for better Windows compatibility
3. **Direct connection string**: Used explicit credentials `postgresql://postgres:postgres@127.0.0.1:5432/dvdrental`

### Step 5: Verify Database Container is Running
```powershell
# Check if the dvdrental container is running
docker ps

# Test direct database connection
docker exec -it dvdrental psql -U postgres -d dvdrental -c "SELECT current_user, current_database();"
```

### Step 6: Test the MCP Connection
After restarting VS Code or reloading the MCP extension, test the connection:

```sql
-- Test query through MCP
SELECT COUNT(*) FROM customer;

-- Full customer data retrieval
SELECT * FROM customer LIMIT 5;
```

## Expected Results
- **599 customers** should be returned from the dvdrental database
- All customer data including: customer_id, store_id, first_name, last_name, email, address_id, etc.
- No authentication errors

## Verification Steps
1. ✅ Docker image `mcp/postgres` successfully built from source
2. ✅ MCP configuration updated with direct connection string
3. ✅ Database container `dvdrental` is running on port 5432
4. ✅ MCP postgres queries execute successfully
5. ✅ Customer data retrieval works without authentication errors

## Common Troubleshooting
- **Port conflicts**: Ensure port 5432 is not used by other services
- **Docker network**: Verify Docker Desktop is running and containers can communicate
- **Credentials**: Double-check username/password match the Docker Compose configuration
- **VS Code restart**: May need to restart VS Code after configuration changes

## File Locations
- MCP Configuration: `.vscode/mcp.json`
- Docker Compose: `docker-compose2.yml` (in Lesson 6/Task1)
- Source Code: `servers-archived/src/postgres/`

## Success Criteria
When working correctly, you should be able to:
- Execute SQL queries through the MCP postgres tool
- Retrieve customer data without authentication errors
- Connect to the dvdrental database seamlessly
- Use all MCP postgres functions (query, get-databases, get-tables)

---
*Last updated: August 31, 2025*
*Tested on: Windows with Docker Desktop*
