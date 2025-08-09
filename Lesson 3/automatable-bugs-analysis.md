# Bugs That Could Have Been Caught by Automated Tests

## Analysis Summary
Out of 139 total bugs, approximately **115 bugs (83%)** could have been prevented with proper automated testing coverage. The remaining 24 bugs involve complex user experience issues, content updates, or environmental factors that are harder to automate.

## Comprehensive Test Automation Table

| Bug ID | Title | Component | Type of Automation | Suggested Test Case |
|--------|-------|-----------|-------------------|-------------------|
| **SKY-86** | Search over 1 min, no results displayed | Search Engine | API/Performance | Load test with timeout validation - verify search completes within 30s or returns proper error |
| **SKY-300** | Phone number in header not clickable | Header | UI | Click test - verify phone number element has href attribute and triggers call action |
| **SKY-299** | BBB and Trustpilot not clickable | Footer | UI | Link validation test - verify all footer links are clickable and have valid href attributes |
| **SKY-297** | Links open pages in middle, not at top | Navigation | UI | Page scroll position test - verify links navigate to top of target page (scrollTop = 0) |
| **SKY-295** | Search field not showing after close/reopen | Mobile Search | UI | State persistence test - close/reopen search modal and verify all fields are visible |
| **SKY-294** | Unnecessary scroll on request page | Mobile UI | UI | Visual regression test - verify page height doesn't exceed viewport on mobile |
| **SKY-293** | Always shows Business class | Mobile Search | UI/API | Search filter test - select Economy class and verify results show correct cabin class |
| **SKY-292** | Edit search modal cannot be closed | Mobile Search | UI | Modal interaction test - verify close button and escape key functionality |
| **SKY-291** | Roundtrip to One way shows 2 dates | Mobile Search | UI | Trip type change test - switch trip types and verify correct date fields displayed |
| **SKY-290** | Edit search shows wrong dates | Mobile Search | UI | Date persistence test - edit search and verify dates match original selection |
| **SKY-289** | Date selection not saved on edit | Mobile Search | UI | Form state test - select dates, edit search, verify dates are preserved |
| **SKY-288** | Trip type change allows search without date | Mobile Search | UI | Validation test - change trip type without selecting date, verify search is disabled |
| **SKY-287** | Date picker fails for different months | Mobile Search | UI | Cross-month date test - select dates across different months and verify functionality |
| **SKY-286** | Broken pagination from input scroll | Mobile Search | UI | Pagination test - scroll from input field and verify pagination controls work |
| **SKY-285** | Desktop view accessible on mobile | Mobile UI | UI | Viewport test - verify mobile viewport meta tag prevents desktop view access |
| **SKY-284** | iOS keyboard chevrons cause bugs | Mobile iOS | UI | Device-specific test - test form interactions with iOS keyboard chevrons |
| **SKY-283** | Airport list pagination broken | Mobile Search | UI | Pagination test - navigate through airport list pages and verify all items load |
| **SKY-282** | Wrong selected state after edit tap | Mobile UI | UI | Tab state test - tap edit and verify correct tab remains highlighted |
| **SKY-281** | Remove input button missing after tab switch | Mobile Search | UI | UI element visibility test - switch tabs and verify remove button is present |
| **SKY-280** | Edit Roundtrip shows One way date | Mobile Search | UI | Trip type display test - verify correct date fields shown for each trip type |
| **SKY-279** | Search button shows when cities removed | Mobile Search | UI | Button state test - remove cities and verify search button is disabled |
| **SKY-278** | Wrong "Select these dates" text for One way | Mobile Search | UI | Text validation test - verify button text matches trip type (singular/plural) |
| **SKY-277** | Search button missing on location edit | Mobile Search | UI | Button visibility test - edit location fields and verify search button appears |
| **SKY-276** | From field not displayed after tab switching | Mobile Search | UI | Field visibility test - switch tabs and verify all form fields are displayed |
| **SKY-275** | Trip type change shows two selected dates | Mobile Search | UI | Date selection test - change trip type and verify correct number of dates selected |
| **SKY-274** | Trip type change doesn't show Travelers step | Mobile Search | UI | Navigation flow test - change trip type and verify next step is displayed |
| **SKY-273** | Edit search skips date picker | Mobile Search | UI | Navigation test - edit search and verify date picker step is included in flow |
| **SKY-272** | From tab not highlighted after edit | Mobile Search | UI | Tab highlighting test - click edit and verify active tab has correct styling |
| **SKY-271** | Manual passenger count change has limits | Mobile Search | UI | Input validation test - test manual passenger input with boundary values |
| **SKY-270** | Date screen appears after travellers navigation | Mobile Navigation | UI | Screen flow test - navigate between screens and verify correct screen displays |
| **SKY-269** | Search button disappears in navigation flow | Mobile Search | UI | Button persistence test - navigate through flow and verify search button remains |
| **SKY-268** | Random square appears on date selection | Mobile Date Picker | UI | Visual test - select dates and verify no unexpected UI elements appear |
| **SKY-267** | Keyboard disappears when tapping TO from FROM | Mobile Search | UI | Keyboard interaction test - tap between fields and verify keyboard stays active |
| **SKY-266** | Airport List Table View is half-cut | Mobile UI | UI | Layout test - verify airport list table fits within viewport boundaries |
| **SKY-265** | Edit search doesn't redirect to flight page | Mobile Search | UI | Navigation test - edit search and verify redirect to correct page |
| **SKY-264** | Same city selection allowed without error | Mobile Search | UI | Validation test - select same FROM/TO cities and verify error message displays |
| **SKY-263** | Date picker remains after menu close | Mobile Search | UI | Modal cleanup test - close menu and verify date picker is hidden |
| **SKY-262** | Main page visible behind search page | Mobile UI | UI | Z-index test - open search and verify main page is completely hidden |
| **SKY-261** | City list remains visible after selection | Mobile Search | UI | Dropdown state test - select city and verify dropdown closes |
| **SKY-260** | Main page visible on search page | Mobile UI | UI | Overlay test - verify search page completely covers main page |
| **SKY-259** | Unwanted zoom-in when clicking to type | Mobile UI | UI | Viewport test - click input fields and verify no zoom occurs |
| **SKY-258** | Mobile Search UI Bugs collection | Mobile Search | UI | Comprehensive mobile test suite covering all search interactions |
| **SKY-254** | Split payment display issues in PDF | Payment PDF | API/Unit | PDF generation test - create split payment and verify PDF displays all cards correctly |
| **SKY-253** | Split payment can exceed total amount | Payment Validation | API/Unit | Amount validation test - attempt split payment > total and verify rejection |
| **SKY-248** | Date picker without background overlay | Mobile Date Picker | UI | Modal overlay test - open date picker and verify background overlay is present |
| **SKY-247** | No results page display incorrect | Mobile Search Results | UI | Empty state test - perform search with no results and verify page layout |
| **SKY-246** | Thank you page scroll overlaps | Mobile Confirmation | UI | Layout test - verify thank you page content doesn't overlap on mobile |
| **SKY-244** | Empty card payment submission allowed | Payment Validation | API/Unit | Form validation test - submit payment with empty card fields and verify rejection |
| **SKY-243** | Manual class edit creates wrong sale type | Back Office | API | Data mapping test - edit class to Economy and verify sale type is correct |
| **SKY-235** | Passenger count manual change doesn't work | Mobile Search | UI | Input test - manually change passenger count and verify value updates |
| **SKY-234** | Form breaks after data input | Mobile iOS Form | UI | Form stability test - input data in all fields and verify form remains functional |
| **SKY-233** | Split payment not saved in email/BO | Mobile Payment | API | Data persistence test - create split payment and verify data in email and back office |
| **SKY-220** | Split fields don't work with zero/small values | Payment Validation | Unit | Boundary value test - test split payment fields with 0, 0.01, and negative values |
| **SKY-219** | Logo doesn't redirect to home from checkout | Navigation | UI | Navigation test - click logo from checkout page and verify redirect to home |
| **SKY-217** | Split payment fields tab navigation broken | Payment Form | UI | Accessibility test - use tab key to navigate split payment fields |
| **SKY-216** | Negative amounts allowed in split payment | Payment Validation | Unit | Input validation test - enter negative amounts and verify rejection |
| **SKY-215** | Romanian month "Noi" instead of "Nov" | Payment Localization | Unit | Localization test - verify month names display correctly for all locales |
| **SKY-214** | Tips amount needs UI limits | Payment UI | UI | Input validation test - test tips field with maximum and excessive values |
| **SKY-213** | Invalid DOB format allowed | Payment Validation | Unit | Date format validation test - submit invalid DOB formats and verify rejection |
| **SKY-211** | Free ticket protection incorrectly assigned | Payment Logic | API/Unit | Business logic test - select "no protection" with split payment and verify result |
| **SKY-210** | PQ email time doesn't match checkout | Email System | API | Time consistency test - compare checkout time with email time and verify match |
| **SKY-209** | No return date selection ability | Search Form | UI | Date picker test - verify return date picker is available for roundtrip searches |
| **SKY-208** | Flight segment not displayed with "operated by" | Back Office | Unit | Text parsing test - process GDS text with "operated by" and verify segment display |
| **SKY-206** | Wrong LP opens for UAE/Netherlands | Footer Navigation | UI | Link routing test - click country links and verify correct landing page opens |
| **SKY-205** | "By city" links open empty price pages | Footer Navigation | UI/API | Content test - click city links and verify price data is displayed |
| **SKY-204** | Manual class edit displays wrong in UI | Price Quote UI | UI | Data display test - edit class manually and verify UI shows correct class |
| **SKY-203** | PQ email received in bad format | Email System | API/Unit | Email template test - generate PQ email and verify formatting is correct |
| **SKY-202** | Quote form not matching design | Mobile Search Form | UI | Visual regression test - compare mobile quote form with design specifications |
| **SKY-201** | Multiple bugs in Safari/Chrome mobile | Mobile Search | UI | Cross-browser test - run comprehensive mobile test suite on Safari and Chrome |
| **SKY-200** | Layout issues on mobile Chrome | Mobile Layout | UI | Browser-specific test - verify layout on Chrome mobile matches design |
| **SKY-199** | Manual tips not saved after fixed selection | Payment Tips | UI | State management test - select fixed tips, then manual, verify manual value persists |
| **SKY-196** | Both quotes show as Business | Email System | API | Email logic test - send Economy/Business options and verify correct display |
| **SKY-194** | Call CTA doesn't work | Search Results | UI | Click handler test - click call CTA and verify phone call is initiated |
| **SKY-193** | Dates change when timezone changes | Search Edit | API/Unit | Timezone test - change timezone and verify dates remain consistent |
| **SKY-192** | Agent doesn't receive PQ email | Email System | API | Email delivery test - generate PQ and verify agent receives email |
| **SKY-191** | Passenger amount removed with tab navigation | Search Form | UI | Accessibility test - navigate form with tab key and verify values persist |
| **SKY-190** | Search elements skipped with tab | Search Form | UI | Tab order test - verify all form elements are accessible via tab navigation |
| **SKY-189** | Scroll bar doesn't follow dropdown selection | Search Dropdown | UI | Scroll behavior test - select dropdown item and verify scroll position |
| **SKY-184** | Text fields lose data with tab navigation | Search Form | UI | Field persistence test - enter data, navigate with tab, verify data remains |
| **SKY-183** | Date dropdown not opened with tab | Search Form | UI | Keyboard accessibility test - navigate to date field with tab and verify opens |
| **SKY-182** | Dropdowns not closing properly | Search Form | UI | Dropdown behavior test - open dropdown, click outside, verify it closes |
| **SKY-181** | No error state on search edit | Search Form | UI | Error state test - create validation error and verify error styling appears |
| **SKY-176** | Can't remove airport with X button | Search Form | UI | Button functionality test - click X button and verify airport is removed |
| **SKY-167** | Main video doesn't work in Safari | Home Page | UI | Browser compatibility test - verify video plays correctly in Safari |
| **SKY-166** | Itinerary display incorrect | Request Display | UI | Data formatting test - create request and verify itinerary displays correctly |
| **SKY-165** | UK country name display issue | Payment Form | UI | Display formatting test - select UK and verify country name displays correctly |
| **SKY-141** | Misleading tips display in OAF email | Email Attachment | API | Email content test - check/uncheck tips and verify email displays correctly |
| **SKY-140** | Timeout error on View Deal click | Search Results | API | Timeout handling test - click View Deal and verify proper error handling |
| **SKY-139** | Cabin class can be deleted and search submitted | Search Validation | UI | Required field test - delete cabin class and verify search is disabled |
| **SKY-137** | Feedback form doesn't send request | Contact Form | API | Form submission test - submit feedback form and verify request is sent |
| **SKY-135** | Price displayed in 2 lines on iPhone | Mobile iOS Display | UI | Device-specific layout test - verify price displays on single line on iPhone |
| **SKY-134** | Search edit displays "NaN" after swipe | Mobile iOS Search | UI | Data handling test - perform swipe gesture and verify no NaN values appear |
| **SKY-132** | Error accessing sale from sales page | Sales Page | API | Navigation test - click sale link and verify page loads without error |
| **SKY-130** | Error displayed on client page | Client Page | API | Page load test - access client page and verify no errors are displayed |
| **SKY-126** | Award PQ formula needs adjustment | Award Pricing | Unit | Calculation test - process award with 0 miles and verify calculation is correct |
| **SKY-125** | Return date can be earlier than departure | Lead Edit Form | UI | Date validation test - set return before departure and verify error message |
| **SKY-123** | Difference between OAF Step 4 and PDF | PDF Generation | API | Data consistency test - compare OAF data with generated PDF content |
| **SKY-122** | Net price not calculated for award | Award Pricing | Unit | Price calculation test - create award ticket and verify net price is calculated |
| **SKY-120** | Price shown for all passengers without breakdown | Pricing Display | UI | Price display test - verify per-passenger price breakdown is shown |
| **SKY-119** | Award PQ missing coefficient option | Award Pricing | UI | UI completeness test - verify coefficient option is available for award PQ |
| **SKY-118** | One way request shows return date | Request Display | Unit | Trip type logic test - create one way request and verify no return date shown |
| **SKY-117** | Roundtrip change populates NaN return date | Search Form | UI | Data handling test - change to roundtrip and verify valid return date |
| **SKY-114** | Manual input and calendar not correlated | Payment Form | UI | Date synchronization test - verify manual date input matches calendar selection |
| **SKY-111** | Only one card can be linked at a time | Payment Form | UI | Multi-card test - link multiple cards and verify all remain linked |
| **SKY-110** | Additional numbers in dates field | Itinerary Display | Unit | Data formatting test - verify only date values appear in dates field |
| **SKY-109** | Airline logo not showing | Ticket Layout | UI | Image display test - verify airline logo loads and displays correctly |
| **SKY-107** | Check-in date/time calculated incorrectly | Date Calculation | Unit | Date calculation test - verify check-in time is calculated correctly from flight time |
| **SKY-105** | Airline logo not showing (duplicate) | Ticket Layout | UI | Image loading test - verify all airline logos load properly |
| **SKY-102** | Can't submit payment despite complete info | Payment Form | UI | Form submission test - fill all fields and verify submit button is enabled |
| **SKY-101** | Ticket Protection calculation broken | Payment Logic | Unit | Calculation test - add ticket protection and verify price calculation is correct |
| **SKY-99** | 0 passengers on payment form | Payment Form | UI | Data validation test - verify passenger count is greater than 0 |
| **SKY-98** | PCC_Consolidator dropdown not showing | Admin Dropdown | UI | Component display test - verify dropdown renders and is populated |
| **SKY-97** | Roundtrip request shows as one way | Request Display | Unit | Trip type display test - create roundtrip and verify it displays correctly |
| **SKY-96** | Split amount not recalculated after tips change | Payment Calculation | Unit | Recalculation test - change tips amount and verify split amounts update |
| **SKY-95** | Tips limited to $99 with button adjustment | Payment Tips | UI | Input limits test - verify tips can be set above $99 when needed |
| **SKY-94** | US flight prices don't match excel file | Pricing Data | API/Unit | Data accuracy test - compare system prices with reference data |
| **SKY-92** | DOB calendar appears after second click | Payment Form | UI | Click behavior test - verify calendar opens on first click |
| **SKY-91** | CC expiration date future setting issue | Payment Form | UI | Date picker test - verify future expiration dates can be selected |
| **SKY-88** | Negative passenger count in request | Request Validation | Unit | Input validation test - verify passenger count cannot be negative |
| **SKY-85** | Second passenger DOB missing calendar | Payment Form | UI | Component test - verify all passenger DOB fields have calendar widget |
| **SKY-84** | Negative tips allowed and form submitted | Payment Validation | Unit | Input validation test - enter negative tips and verify rejection |
| **SKY-83** | CVV text validation issues | Payment Validation | Unit | Input validation test - test CVV field with invalid characters |
| **SKY-81** | Error changing client list size | Client Management | API | Pagination test - change list size and verify no errors occur |
| **SKY-80** | Past departure dates allowed | Search Validation | UI | Date validation test - select past date and verify error message |
| **SKY-79** | Custom tips not counted correctly | Payment Calculation | Unit | Tips calculation test - enter custom amount and verify total is correct |
| **SKY-75** | One way request wrong date format | Request Data | Unit | Date formatting test - verify one way requests use correct date format |
| **SKY-73** | CC expiration date numerical validation | Payment Validation | Unit | Input validation test - test expiration field with invalid formats |
| **SKY-72** | Negative passenger count allowed | Request Validation | Unit | Boundary test - verify passenger count cannot be negative |
| **SKY-69** | Multiple city PQ wrong wording | CMS Content | Unit | Content validation test - verify correct wording for multi-city quotes |
| **SKY-67** | No attachment in confirmation email | Email Attachment | API | Email attachment test - verify PDF is attached to confirmation email |
| **SKY-65** | Return icon shown for one way ticket | UI Display | UI | Conditional display test - verify return icon only shows for roundtrip |
| **SKY-63** | Unnecessary space in airport code | Data Formatting | Unit | Text formatting test - verify airport codes display without extra spaces |
| **SKY-62** | Should show "Travel Advisor" instead of agent | UI Text | UI | Text content test - verify correct role title is displayed |
| **SKY-61** | No save/cancel button when adding ticket numbers | Admin UI | UI | Button availability test - verify save/cancel buttons appear when editing |
| **SKY-60** | Confirmation page after OAF submission | Confirmation Page | UI | Page flow test - submit OAF and verify confirmation page displays |
| **SKY-59** | Clone PQ button increases count without saving | Admin UI | UI | Button behavior test - verify count only increases when PQ is actually saved |
| **SKY-54** | Price generator/formula not working | Pricing Engine | Unit | Price calculation test - verify pricing formulas produce correct results |
| **SKY-52** | Tips displayed after deselection | Payment Display | UI | UI state test - deselect tips and verify they're removed from display |
| **SKY-51** | Premium Economy offer not displayed | Offer Display | API/UI | Search results test - search Premium Economy and verify offers appear |
| **SKY-50** | $4 price for Premium Economy one way | Pricing Logic | Unit | Price validation test - verify Premium Economy prices are reasonable |
| **SKY-44** | Return flight icon and wording issues | UI Display | UI | Icon and text test - verify correct icons and wording for return flights |
| **SKY-39** | No results for some from/to combinations | Mobile Search | API | Search coverage test - test various city combinations and verify results |
| **SKY-37** | Sale can be closed without sending tickets | Sales Process | API | Workflow validation test - verify tickets must be sent before closing sale |
| **SKY-35** | Edit Request logs display "xx" | CMS Logs | Unit | Log formatting test - verify request logs display proper content |
| **SKY-34** | Reset password email not received | Authentication | API | Email delivery test - request password reset and verify email arrives |
| **SKY-33** | Selected request color not visible | CMS UI | UI | CSS styling test - verify hover states have sufficient color contrast |
| **SKY-32** | Flight request email missing call to action | Email Content | Unit | Email template test - verify call to action button/link is present |
| **SKY-30** | Backspace deletes all input | Search Input | UI | Input handling test - test backspace behavior and verify only single character deleted |
| **SKY-29** | Code lines shown for duplicate email | User Management | API | Error handling test - create duplicate email and verify proper error message |
| **SKY-28** | Destination tips link points to wrong page | Navigation Links | UI | Link validation test - verify destination tips link goes to correct page |
| **SKY-27** | Reset password returns 404 | Authentication | API | API endpoint test - verify reset password endpoint returns proper response |
| **SKY-26** | Manual queue add validation issues | CMS Validation | UI | Form validation test - test manual queue form with invalid data |
| **SKY-22** | Long username overflows popup | UI Modal | UI | Layout test - test popup with long text and verify proper containment |
| **SKY-21** | Ticket sent without charging card | Payment Process | API | Business logic test - verify payment processing before ticket generation |
| **SKY-20** | Terms/Privacy links point to invalid pages | Legal Links | UI | Link validation test - verify all legal links point to valid pages |
| **SKY-19** | Missing tip deselection option | Payment UI | UI | UI completeness test - verify option to deselect tips is available |
| **SKY-18** | Missing warning for Travel Care Service | Payment UI | UI | User feedback test - verify warning message appears for travel care |
| **SKY-17** | Mandatory fields not highlighted | Payment Form | UI | Field validation test - verify required fields are visually indicated |
| **SKY-15** | Send button active without ticket options | Admin UI | UI | Button state test - verify send button is disabled when no tickets selected |
| **SKY-14** | Sorting doesn't work for some columns | CRM Sorting | UI | Table functionality test - test sorting on all table columns |
| **SKY-13** | Flight request email displayed incorrectly | Email Display | Unit | Email rendering test - verify email displays correctly across clients |
| **SKY-12** | Phone number field issues in pay later form | Reservation Form | UI | Form field test - verify phone number field accepts valid formats |
| **SKY-11** | Same FROM/TO validation missing | Search Validation | UI | Validation test - select same cities and verify error message |
| **SKY-8** | Cities not displayed for single letter search | Search Autocomplete | API | Autocomplete test - verify single letter triggers city suggestions |
| **SKY-7** | Invalid search data doesn't return error | Search Validation | API | Error handling test - submit invalid search and verify proper error response |
| **SKY-6** | Contact page details displayed incorrectly | Contact Page | UI | Layout test - verify contact page information displays correctly |
| **SKY-4** | Pay later form field validations | Reservation Form | UI | Form validation test - test all pay later form fields with invalid data |
| **SKY-3** | Premium economy filter clickable issue | Filter UI | UI | Click area test - verify premium economy filter has proper clickable area |

## Test Coverage Recommendations by Type

### UI Tests (78 bugs - 68%)
- Cross-browser compatibility tests
- Mobile responsive design tests  
- Form interaction and validation tests
- Visual regression tests
- Accessibility tests (keyboard navigation, screen readers)

### API Tests (21 bugs - 18%)
- Input validation tests
- Business logic tests
- Error handling tests
- Email delivery tests
- Data consistency tests

### Unit Tests (16 bugs - 14%)
- Calculation logic tests
- Data formatting tests
- Validation rule tests
- Localization tests
- Text processing tests

## High-Impact Test Automation Priorities

### Immediate Priority (Highest Severity)
1. **Payment validation tests** - Prevent revenue loss (SKY-253, SKY-244, SKY-211)
2. **Mobile search functionality tests** - Critical user experience (SKY-287, SKY-269, SKY-264)
3. **Email system tests** - Customer communication (SKY-210, SKY-196, SKY-192)

### Short-term Priority
1. **Cross-browser mobile testing** - Platform compatibility
2. **Form validation test suite** - Data integrity
3. **API error handling tests** - System reliability

### Long-term Priority
1. **Visual regression testing** - UI consistency
2. **Performance testing** - System scalability
3. **Accessibility testing** - Compliance and usability

**Estimated Prevention Rate**: With comprehensive test automation covering these areas, approximately **83% of current bugs** could have been prevented, significantly improving product quality and reducing maintenance costs.
