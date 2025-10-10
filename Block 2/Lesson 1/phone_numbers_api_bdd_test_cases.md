# Phone Numbers API - BDD Test Cases

## API Endpoint Information
- **Endpoint**: `GET /phone_numbers`
- **Base URL**: `https://partners-api.999.md`
- **Authentication**: HTTP Basic Auth (API key as username)
- **Content-Type**: `application/json`

## Test Scenarios

### Feature: Retrieve User's Phone Numbers
As an API user
I want to retrieve my verified phone numbers
So that I can use them for creating and managing advertisements

---

### Scenario 1: Successfully retrieve phone numbers with default language
**Given** a valid API key is available
**And** verified phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should have a 200 status code
**And** the response should contain "phone_numbers" array
**And** each phone number should have:
  - "phone_number" field with international format
  - "country_code" field as number
  - "national_number" field as string
  - "region" field with country name
**And** the response should use Russian language by default

### Scenario 2: Successfully retrieve phone numbers with Romanian language
**Given** a valid API key is available
**And** verified phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers?lang=ro"
**And** Basic Auth is included with the API key
**Then** the response should have a 200 status code
**And** the response should contain "phone_numbers" array
**And** the region field should be in Romanian language

### Scenario 3: Successfully retrieve phone numbers with Russian language
**Given** a valid API key is available
**And** verified phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers?lang=ru"
**And** Basic Auth is included with the API key
**Then** the response should have a 200 status code
**And** the response should contain "phone_numbers" array
**And** the region field should be in Russian language

### Scenario 4: Retrieve empty phone numbers list
**Given** a valid API key is available
**And** no verified phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should have a 200 status code
**And** the response should contain an empty "phone_numbers" array

### Scenario 5: Retrieve multiple phone numbers
**Given** a valid API key is available
**And** multiple verified phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should have a 200 status code
**And** the response should contain "phone_numbers" array with multiple entries
**And** each phone number should be unique
**And** all required fields should be present for each phone number

---

## Authentication Test Scenarios

### Scenario 6: Request without authentication
**Given** no authentication is provided
**When** a GET request is sent to "/phone_numbers"
**Then** the response should have a 401 status code
**And** the response should indicate authentication is required

### Scenario 7: Request with invalid API key
**Given** an invalid API key "invalid_key_123" is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the invalid API key
**Then** the response should have a 401 status code
**And** the response should indicate invalid credentials

### Scenario 8: Request with expired API key
**Given** an expired API key is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the expired API key
**Then** the response should have a 401 status code
**And** the response should indicate authentication failure

### Scenario 9: Request with malformed authentication header
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers"
**And** a malformed Basic Auth header is included
**Then** the response should have a 401 status code

---

## Parameter Validation Test Scenarios

### Scenario 10: Request with invalid language parameter
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers?lang=invalid"
**And** Basic Auth is included with the API key
**Then** the response should have a 400 status code
**And** the response should indicate invalid language parameter

### Scenario 11: Request with empty language parameter
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers?lang="
**And** Basic Auth is included with the API key
**Then** the response should have a 400 status code
**And** the response should indicate invalid language parameter

### Scenario 12: Request with unsupported language parameter
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers?lang=en"
**And** Basic Auth is included with the API key
**Then** the response should have a 400 status code
**And** the response should indicate unsupported language

---

## Data Format Validation Test Scenarios

### Scenario 13: Verify phone number format validation
**Given** a valid API key is available
**And** phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** each phone number in the response should:
  - Have "phone_number" in international format (starting with country code)
  - Have "country_code" as a valid numeric country code
  - Have "national_number" as a string without country code
  - Have "region" as a non-empty string

### Scenario 14: Verify Moldova phone number format
**Given** a valid API key is available
**And** a Moldova phone number "37378888888" exists in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the Moldova phone number should be formatted as:
  - "phone_number": "37378888888"
  - "country_code": 373
  - "national_number": "78888888"
  - "region": "Молдова" (for Russian) or "Moldova" (for Romanian)

### Scenario 15: Verify required fields are always present
**Given** a valid API key is available
**And** phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** every phone number object must contain:
  - "phone_number" field (cannot be null or empty)
  - "country_code" field (cannot be null)
  - "national_number" field (cannot be null or empty)
  - "region" field (cannot be null or empty)

---

## Edge Cases and Error Handling

### Scenario 16: Request with very long API key
**Given** an extremely long API key (over 1000 characters) is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the long API key
**Then** the response should have a 401 status code
**And** the response should handle the request gracefully

### Scenario 17: Request with special characters in parameters
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers?lang=<script>alert('xss')</script>"
**And** Basic Auth is included with the API key
**Then** the response should have a 400 status code
**And** the response should not execute any script content

### Scenario 18: Concurrent requests to phone numbers endpoint
**Given** a valid API key is available
**When** multiple concurrent GET requests are sent to "/phone_numbers"
**And** Basic Auth is included with the API key for each request
**Then** all requests should return consistent results
**And** all requests should receive 200 status code
**And** the phone numbers data should be identical across all responses

---

## Performance Test Scenarios

### Scenario 19: Response time validation
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should be received within 2 seconds
**And** the response should be in JSON format

### Scenario 20: Rate limiting behavior
**Given** a valid API key is available
**When** multiple rapid requests are sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the API should handle rate limiting appropriately
**And** if rate limited, the response should have a 429 status code

---

## Security Test Scenarios

### Scenario 21: HTTPS enforcement
**Given** a valid API key is available
**When** a GET request is sent to "http://partners-api.999.md/phone_numbers" (HTTP instead of HTTPS)
**Then** the request should fail or be redirected to HTTPS
**And** sensitive data should not be transmitted over HTTP

### Scenario 22: API key exposure in logs
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the API key should not be exposed in any error messages
**And** the API key should not be logged in plain text

### Scenario 23: Response header security
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should include appropriate security headers
**And** the Content-Type should be "application/json"

---

## JSON Schema Validation Test Scenarios

### Scenario 24: Response schema compliance
**Given** a valid API key is available
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should conform to the documented JSON schema:
```json
{
  "type": "object",
  "properties": {
    "phone_numbers": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "phone_number": {"type": "string"},
          "country_code": {"type": "number"},
          "national_number": {"type": "string"},
          "region": {"type": "string"}
        },
        "required": ["phone_number", "country_code", "national_number", "region"]
      }
    }
  },
  "required": ["phone_numbers"]
}
```

### Scenario 25: Empty response schema validation
**Given** a valid API key is available
**And** no verified phone numbers exist in the account
**When** a GET request is sent to "/phone_numbers"
**And** Basic Auth is included with the API key
**Then** the response should still conform to the schema
**And** "phone_numbers" should be an empty array

---

## Cross-Origin and CORS Test Scenarios

### Scenario 26: CORS headers validation
**Given** a valid API key is available
**When** a preflight OPTIONS request is sent to "/phone_numbers"
**Then** appropriate CORS headers should be returned
**And** the API should handle cross-origin requests properly

---

## Data Consistency Test Scenarios

### Scenario 27: Phone number data consistency
**Given** a valid API key is available
**And** phone numbers exist in the account
**When** multiple requests are sent to "/phone_numbers" within a short time
**And** Basic Auth is included with the API key
**Then** the phone numbers returned should be consistent
**And** the order of phone numbers should be stable

### Scenario 28: Language consistency
**Given** a valid API key is available
**And** phone numbers exist in the account
**When** a request is sent to "/phone_numbers?lang=ru"
**And** then a request is sent to "/phone_numbers?lang=ro"
**Then** the phone numbers should be the same
**And** only the "region" field should change language
**And** all other fields should remain identical

---

## Test Data Requirements

### Prerequisites for Test Execution:
1. **Valid API Key**: A working API key with appropriate permissions
2. **Test Account**: An account with various phone number scenarios:
   - Account with no verified phone numbers
   - Account with single verified phone number
   - Account with multiple verified phone numbers
   - Account with phone numbers from different countries
3. **Invalid Credentials**: Expired or invalid API keys for negative testing
4. **Test Environment**: Access to both staging and production-like environments

### Test Data Examples:
- Valid Moldova phone number: "37378888888"
- Valid Romania phone number: "40712345678"
- Invalid phone number formats for validation testing
- Various country codes for international testing

### Expected Response Format:
```json
{
  "phone_numbers": [
    {
      "phone_number": "37378888888",
      "country_code": 373,
      "national_number": "78888888",
      "region": "Молдова"
    }
  ]
}
```