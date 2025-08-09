# Registration Form Test Cases

| # | Scenario | Username | Email | Password | Phone | Date of Birth | Country | Expected Result |
|---|----------|----------|--------|----------|-------|---------------|---------|-----------------|
| 1 | Valid Input - Standard Case | john.doe | john.doe@example.com | Password123! | +1234567890 | 1990-01-01 | United States | Registration successful |
| 2 | All Fields Invalid | a | invalid.email | pass | +1 | 2026-01-01 | Select | Multiple validation errors: Username too short (min 3 chars), Invalid email format, Password too weak, Invalid phone format, Future date not allowed |
| 3 | International Format - UK | user#123_test | user.test@domain.co.uk | StrongPass99# | +44 20 7123 4567 | 1980-12-31 | United Kingdom | Registration successful |
| 4 | Unicode Characters | 太郎yamada | taro@日本.jp | P@ssw0rd123 | +81 3-1234-5678 | 2000-06-15 | Japan | Registration successful |
| 5 | Boundary Test - Max Length | verylongusernameexceeding30characters | test@test.com | Pass123! | +1234567890 | 1995-07-26 | Canada | Username exceeds maximum length (30 characters) |
| 6 | Duplicate Check | jane_doe | existing.user@example.com | GoodPass123! | +61 2 1234 5678 | 1985-03-15 | Australia | Email already registered |
| 7 | Email Format Validation | valid.user | spaces in@email.com | Valid123! | +49 123 456789 | 1970-01-01 | Germany | Invalid email format |
| 8 | Required Field - Username |   | test@example.com | Pass123! | +1234567890 | 2000-01-01 | France | Username is required |
| 9 | Required Field - Phone | test.user | test@example.com | Pass123! |   | 1999-12-31 | Spain | Phone number is required |
| 10 | Special Characters | maría.garcía | maria@example.es | Contraseña123! | +34 612 345 678 | 1988-08-18 | España | Registration successful |

## Test Coverage Areas

### Validation Rules
- Username length (min 3 characters, max 30 characters)
- Email format validation
- Password complexity requirements
- Phone number format validation
- Date of birth validation (no future dates)
- Required fields validation

### Internationalization
- Unicode character support (Japanese)
- Special characters (Spanish)
- Different country formats
- International phone numbers

### Data Types
- Text fields (username, email)
- Password field
- Date field
- Phone number field
- Dropdown selection (country)

### Edge Cases
- Boundary testing for field lengths
- Empty required fields
- Invalid formats
- Duplicate data
- Special characters
- Multiple validation errors
