# Bug Summary Analysis - Module, Severity & Root Cause

## Individual Bug Analysis

| Bug ID | Affected Module | Severity | Root Cause | Summary |
|--------|----------------|----------|------------|---------|
| SKY-86 | Search Engine | Medium | Performance/Backend timeout | Search over 1 min, no results displayed |
| SKY-301 | Email System | Medium | Email template formatting | Pack of small bugs for flight request email |
| SKY-300 | Header/UI | Medium | Click handler missing | Phone number in header not clickable |
| SKY-299 | Footer/UI | Medium | Click handler missing | BBB and Trustpilot links not clickable |
| SKY-298 | UI/Icons | Medium | Icon asset outdated | Twitter icon needs replacement with X icon |
| SKY-297 | Navigation | Medium | Page anchor positioning | Links open pages in middle instead of top |
| SKY-296 | Email System | Medium | Email template bugs | Pack of small bugs for flight request email |
| SKY-295 | Mobile Search | Medium | State management | Search field not showing after close/reopen |
| SKY-294 | Mobile UI | Medium | CSS/Layout issue | Unnecessary scroll on request received page |
| SKY-293 | Mobile Search | High | Search result filtering | Always shows Business class regardless of selection |
| SKY-292 | Mobile Search | High | Modal/UI state | Edit search modal cannot be closed |
| SKY-291 | Mobile Search | High | Trip type logic | Roundtrip to One way shows 2 dates |
| SKY-290 | Mobile Search | High | Date state management | Edit search shows wrong dates |
| SKY-289 | Mobile Search | High | State persistence | Date selection not saved on edit |
| SKY-288 | Mobile Search | High | Validation logic | Trip type change allows search without date selection |
| SKY-287 | Mobile Search | Highest | Date picker logic | Date picker fails for different months |
| SKY-286 | Mobile Search | High | Pagination/Scroll | Broken pagination from "From" input scroll |
| SKY-285 | Mobile UI | High | Viewport meta tag | Desktop view accessible on mobile |
| SKY-284 | Mobile iOS | High | iOS keyboard handling | Native iOS keyboard chevrons cause bugs |
| SKY-283 | Mobile Search | High | Pagination logic | Airport list pagination broken |
| SKY-282 | Mobile UI | High | Tab state management | Wrong selected state after edit tap |
| SKY-281 | Mobile Search | Medium | UI element visibility | Remove input button missing after tab switch |
| SKY-280 | Mobile Search | Medium | Trip type display | Edit Roundtrip shows One way date |
| SKY-279 | Mobile Search | Medium | Button state logic | Search button shows when cities removed |
| SKY-278 | Mobile Search | Medium | Button text logic | Wrong "Select these dates" text for One way |
| SKY-277 | Mobile Search | Medium | Button visibility | Search button missing on location edit |
| SKY-276 | Mobile Search | Medium | UI state management | From field not displayed after tab switching |
| SKY-275 | Mobile Search | Medium | Date selection logic | Trip type change shows two selected dates |
| SKY-274 | Mobile Search | Medium | Navigation flow | Trip type change doesn't show Travelers step |
| SKY-273 | Mobile Search | Medium | Navigation flow | Edit search skips date picker |
| SKY-272 | Mobile Search | High | UI highlighting | From tab not highlighted after edit |
| SKY-271 | Mobile Search | High | Input validation | Manual passenger count change has limits |
| SKY-270 | Mobile Navigation | Medium | Screen flow logic | Date screen appears after travellers navigation |
| SKY-269 | Mobile Search | Highest | Button state management | Search button disappears in navigation flow |
| SKY-268 | Mobile Date Picker | High | UI rendering | Random square appears on date selection |
| SKY-267 | Mobile Search | Medium | Keyboard handling | Keyboard disappears when tapping TO from FROM |
| SKY-266 | Mobile UI | High | Layout/CSS | Airport List Table View is half-cut |
| SKY-265 | Mobile Search | High | Navigation/Routing | Edit search doesn't redirect to flight page |
| SKY-264 | Mobile Search | Highest | Validation logic | Same city selection allowed without error |
| SKY-263 | Mobile Search | High | Modal state management | Date picker remains after menu close |
| SKY-262 | Mobile UI | High | Z-index/layering | Main page visible behind search page |
| SKY-261 | Mobile Search | Medium | Dropdown state | City list remains visible after selection |
| SKY-260 | Mobile UI | High | Z-index/layering | Main page visible on search page |
| SKY-259 | Mobile UI | High | Viewport/zoom | Unwanted zoom-in when clicking to type |
| SKY-258 | Mobile Search | Highest | Multiple UI issues | Collection of mobile search UI bugs |
| SKY-254 | Payment PDF | Highest | PDF generation logic | Split payment display issues in PDF |
| SKY-253 | Payment Validation | Highest | Amount validation | Split payment can exceed total amount |
| SKY-248 | Mobile Date Picker | Medium | Modal background | Date picker without background overlay |
| SKY-247 | Mobile Search Results | Medium | Layout/CSS | No results page display incorrect |
| SKY-246 | Mobile Confirmation | Medium | Layout/CSS | Thank you page scroll overlaps |
| SKY-244 | Payment Validation | Highest | Form validation | Empty card payment submission allowed |
| SKY-243 | Back Office | High | Data mapping | Manual class edit creates wrong sale type |
| SKY-235 | Mobile Search | High | Input handling | Passenger count manual change doesn't work |
| SKY-234 | Mobile iOS Form | Medium | Form state management | Form breaks after data input |
| SKY-233 | Mobile Payment | Medium | Data persistence | Split payment not saved in email/BO |
| SKY-220 | Payment Validation | High | Input validation | Split fields don't work with zero/small values |
| SKY-219 | Navigation | High | Link routing | Logo doesn't redirect to home from checkout |
| SKY-217 | Payment Form | High | Tab navigation | Split payment fields tab navigation broken |
| SKY-216 | Payment Validation | High | Input validation | Negative amounts allowed in split payment |
| SKY-215 | Payment Localization | Highest | Localization bug | Romanian month "Noi" instead of "Nov" |
| SKY-214 | Payment UI | Medium | Input limits | Tips amount needs UI limits |
| SKY-213 | Payment Validation | Medium | Date format validation | Invalid DOB format allowed |
| SKY-211 | Payment Logic | Highest | Business logic | Free ticket protection incorrectly assigned |
| SKY-210 | Email System | Highest | Time calculation | PQ email time doesn't match checkout |
| SKY-209 | Search Form | Highest | Date picker | No return date selection ability |
| SKY-208 | Back Office | High | GDS text parsing | Flight segment not displayed with "operated by" |
| SKY-206 | Footer Navigation | Highest | Link routing | Wrong LP opens for UAE/Netherlands |
| SKY-205 | Footer Navigation | Highest | Link routing | "By city" links open empty price pages |
| SKY-204 | Price Quote UI | Highest | Data display | Manual class edit displays wrong in UI |
| SKY-203 | Email System | High | Email formatting | PQ email received in bad format |
| SKY-202 | Mobile Search Form | High | UI design compliance | Quote form not matching design |
| SKY-201 | Mobile Search | Highest | Browser compatibility | Multiple bugs in Safari/Chrome mobile |
| SKY-200 | Mobile Layout | Highest | CSS/responsive design | Layout issues on mobile Chrome |
| SKY-199 | Payment Tips | Highest | State management | Manual tips not saved after fixed selection |
| SKY-196 | Email System | Highest | Email logic | Both Economy/Business quotes show as Business |
| SKY-195 | Content | Highest | Text content | How to Book section misspelled text |
| SKY-194 | Search Results | Highest | Click handler | Call CTA doesn't work |
| SKY-193 | Search Edit | Highest | Timezone handling | Dates change when timezone changes |
| SKY-192 | Email System | Highest | Email delivery | Agent doesn't receive PQ email |
| SKY-191 | Search Form | Medium | Tab navigation | Passenger amount removed with tab navigation |
| SKY-190 | Search Form | Medium | Tab navigation | Search elements skipped with tab |
| SKY-189 | Search Dropdown | Medium | Scroll behavior | Scroll bar doesn't follow dropdown selection |
| SKY-184 | Search Form | Medium | Tab navigation | Text fields lose data with tab navigation |
| SKY-183 | Search Form | Medium | Tab navigation | Date dropdown not opened with tab |
| SKY-182 | Search Form | Medium | Dropdown behavior | Dropdowns not closing properly |
| SKY-181 | Search Form | Medium | Error states | No error state on search edit |
| SKY-176 | Search Form | High | Button functionality | Can't remove airport with X button |
| SKY-175 | Landing Pages | Highest | Content management | Wrong titles on region/country pages |
| SKY-167 | Home Page | High | Video player | Main video doesn't work in Safari |
| SKY-166 | Request Display | Medium | Data formatting | Itinerary display incorrect |
| SKY-165 | Payment Form | Low | Display formatting | UK country name display issue |
| SKY-141 | Email Attachment | Medium | Tips calculation | Misleading tips display in OAF email |
| SKY-140 | Search Results | Medium | Connection timeout | Timeout error on View Deal click |
| SKY-139 | Search Validation | High | Form validation | Cabin class can be deleted and search submitted |
| SKY-137 | Contact Form | High | Form submission | Feedback form doesn't send request |
| SKY-135 | Mobile iOS Display | Low | CSS responsive | Price displayed in 2 lines on iPhone |
| SKY-134 | Mobile iOS Search | High | Data handling | Search edit displays "NaN" after swipe |
| SKY-132 | Sales Page | Medium | Error handling | Error accessing sale from sales page |
| SKY-130 | Client Page | Medium | Error handling | Error displayed on client page |
| SKY-126 | Award Pricing | Medium | Formula calculation | Award PQ formula needs adjustment |
| SKY-125 | Lead Edit Form | Low | Date validation | Return date can be earlier than departure |
| SKY-123 | PDF Generation | Medium | Data consistency | Difference between OAF Step 4 and PDF |
| SKY-122 | Award Pricing | Medium | Price calculation | Net price not calculated for awards |
| SKY-120 | Pricing Display | Medium | Price breakdown | Price shown for all passengers without breakdown |
| SKY-119 | Award Pricing | Medium | UI options | Award PQ missing coefficient option |
| SKY-118 | Request Display | Medium | Data logic | One way request shows return date |
| SKY-117 | Search Form | Medium | Data handling | Roundtrip change populates NaN return date |
| SKY-114 | Payment Form | Medium | Date picker sync | Manual input and calendar not correlated |
| SKY-111 | Payment Form | Medium | Card linking | Only one card can be linked at a time |
| SKY-110 | Itinerary Display | High | Data formatting | Additional numbers in dates field |
| SKY-109 | Ticket Layout | Medium | Image display | Airline logo not showing |
| SKY-107 | Date Calculation | Medium | Time calculation | Check-in date/time calculated incorrectly |
| SKY-105 | Ticket Layout | Medium | Image display | Airline logo not showing (duplicate) |
| SKY-102 | Payment Form | Medium | Form submission | Can't submit payment despite complete info |
| SKY-101 | Payment Logic | Medium | Calculation logic | Ticket Protection calculation broken |
| SKY-99 | Payment Form | Medium | Data validation | 0 passengers on payment form |
| SKY-98 | Admin Dropdown | Medium | UI component | PCC_Consolidator dropdown not showing |
| SKY-97 | Request Display | Medium | Trip type display | Roundtrip request shows as one way |
| SKY-96 | Payment Calculation | Medium | Calculation logic | Split amount not recalculated after tips change |
| SKY-95 | Payment Tips | Medium | Input limits | Tips limited to $99 with button adjustment |
| SKY-94 | Pricing Data | High | Data accuracy | US flight prices don't match excel file |
| SKY-92 | Payment Form | Lowest | UI behavior | DOB calendar appears after second click |
| SKY-91 | Payment Form | Medium | Date picker | CC expiration date future setting issue |
| SKY-88 | Request Validation | Medium | Data validation | Negative passenger count in request |
| SKY-85 | Payment Form | Medium | UI component | Second passenger DOB missing calendar |
| SKY-84 | Payment Validation | High | Input validation | Negative tips allowed and form submitted |
| SKY-83 | Payment Validation | Medium | Input validation | CVV text validation issues |
| SKY-82 | UI Assets | Low | Image quality | User icon pixelated on passenger form |
| SKY-81 | Client Management | Medium | Pagination | Error changing client list size |
| SKY-80 | Search Validation | Medium | Date validation | Past departure dates allowed |
| SKY-79 | Payment Calculation | Medium | Tips calculation | Custom tips not counted correctly |
| SKY-75 | Request Data | Medium | Date formatting | One way request wrong date format |
| SKY-73 | Payment Validation | Medium | Input validation | CC expiration date numerical validation |
| SKY-72 | Request Validation | Medium | Input validation | Negative passenger count allowed |
| SKY-69 | CMS Content | Medium | Content management | Multiple city PQ wrong wording |
| SKY-67 | Email Attachment | Medium | Email generation | No attachment in confirmation email |
| SKY-65 | UI Display | Medium | Icon logic | Return icon shown for one way ticket |
| SKY-63 | Data Formatting | Medium | Text formatting | Unnecessary space in airport code |
| SKY-62 | UI Text | Medium | Content display | Should show "Travel Advisor" instead of agent |
| SKY-61 | Admin UI | Medium | UI buttons | No save/cancel button when adding ticket numbers |
| SKY-60 | Confirmation Page | Medium | Page flow | Confirmation page after OAF submission |
| SKY-59 | Admin UI | Medium | Button logic | Clone PQ button increases count without saving |
| SKY-54 | Pricing Engine | Medium | Formula calculation | Price generator/formula not working |
| SKY-52 | Payment Display | Medium | UI state | Tips displayed after deselection |
| SKY-51 | Offer Display | Medium | Search results | Premium Economy offer not displayed |
| SKY-50 | Pricing Logic | Medium | Price calculation | $4 price for Premium Economy one way |
| SKY-44 | UI Display | Medium | Icon and text | Return flight icon and wording issues |
| SKY-41 | CMS Theme | Lowest | CSS theming | Text not visible with Dark Theme |
| SKY-39 | Mobile Search | Medium | Search algorithm | No results for some from/to combinations |
| SKY-37 | Sales Process | Medium | Workflow validation | Sale can be closed without sending tickets |
| SKY-35 | CMS Logs | Medium | Data display | Edit Request logs display "xx" |
| SKY-34 | Authentication | Medium | Email delivery | Reset password email not received |
| SKY-33 | CMS UI | Medium | CSS hover | Selected request color not visible |
| SKY-32 | Email Content | Medium | Email design | Flight request email missing call to action |
| SKY-30 | Search Input | Medium | Input handling | Backspace deletes all input |
| SKY-29 | User Management | Medium | Error display | Code lines shown for duplicate email |
| SKY-28 | Navigation Links | Medium | Link routing | Destination tips link points to wrong page |
| SKY-27 | Authentication | Medium | API response | Reset password returns 404 |
| SKY-26 | CMS Validation | Medium | Form validation | Manual queue add validation issues |
| SKY-22 | UI Modal | Medium | Layout handling | Long username overflows popup |
| SKY-21 | Payment Process | Medium | Business logic | Ticket sent without charging card |
| SKY-20 | Legal Links | Medium | Link routing | Terms/Privacy links point to invalid pages |
| SKY-19 | Payment UI | Medium | UI options | Missing tip deselection option |
| SKY-18 | Payment UI | Medium | User feedback | Missing warning for Travel Care Service |
| SKY-17 | Payment Form | Medium | Field validation | Mandatory fields not highlighted |
| SKY-16 | Admin Logs | Medium | Text content | Typo in "Added" word in logs |
| SKY-15 | Admin UI | Medium | Button state | Send button active without ticket options |
| SKY-14 | CRM Sorting | Medium | Table functionality | Sorting doesn't work for some columns |
| SKY-13 | Email Display | Medium | Email formatting | Flight request email displayed incorrectly |
| SKY-12 | Reservation Form | Medium | Form validation | Phone number field issues in pay later form |
| SKY-11 | Search Validation | Medium | Input validation | Same FROM/TO validation missing |
| SKY-8 | Search Autocomplete | Medium | Search algorithm | Cities not displayed for single letter search |
| SKY-7 | Search Validation | Medium | Error handling | Invalid search data doesn't return error |
| SKY-6 | Contact Page | Medium | Layout display | Contact page details displayed incorrectly |
| SKY-4 | Reservation Form | Medium | Form validation | Pay later form field validations |
| SKY-3 | Filter UI | Medium | Click area | Premium economy filter clickable issue |

## Severity Level Summary

### Highest Priority (24 bugs)
- **Mobile/Search Issues**: SKY-287, SKY-269, SKY-264, SKY-258
- **Payment Critical**: SKY-254, SKY-253, SKY-244, SKY-215, SKY-211
- **Email System**: SKY-210, SKY-196, SKY-192
- **Navigation**: SKY-206, SKY-205, SKY-209
- **Search/UI**: SKY-201, SKY-200, SKY-199, SKY-175, SKY-204
- **Content/Functionality**: SKY-195, SKY-194, SKY-193

### High Priority (32 bugs)
- **Mobile Issues**: SKY-293, SKY-292, SKY-291, SKY-290, SKY-289, SKY-288, SKY-286, SKY-285, SKY-284, SKY-283, SKY-282, SKY-272, SKY-271, SKY-266, SKY-265, SKY-263, SKY-262, SKY-260, SKY-259, SKY-235
- **Payment Issues**: SKY-220, SKY-219, SKY-217, SKY-216, SKY-84
- **Search/Validation**: SKY-176, SKY-139, SKY-137, SKY-134
- **Backend Issues**: SKY-243, SKY-208, SKY-203, SKY-202
- **Data Issues**: SKY-167, SKY-110, SKY-94

### Medium Priority (78 bugs)
- **Mobile Issues**: SKY-295, SKY-294, SKY-295, SKY-281, SKY-280, SKY-279, SKY-278, SKY-277, SKY-276, SKY-275, SKY-274, SKY-273, SKY-270, SKY-267, SKY-261, SKY-248, SKY-247, SKY-246, SKY-234, SKY-233
- **Payment/Form Issues**: SKY-214, SKY-213, SKY-141, SKY-114, SKY-111, SKY-102, SKY-101, SKY-99, SKY-98, SKY-96, SKY-95, SKY-91, SKY-85, SKY-83, SKY-79, SKY-73, SKY-52, SKY-19, SKY-18, SKY-17, SKY-12, SKY-4
- **Search Issues**: SKY-191, SKY-190, SKY-189, SKY-184, SKY-183, SKY-182, SKY-181, SKY-30, SKY-11, SKY-8, SKY-7, SKY-39
- **Display/UI Issues**: SKY-301, SKY-300, SKY-299, SKY-298, SKY-297, SKY-296, SKY-166, SKY-140, SKY-132, SKY-130, SKY-126, SKY-123, SKY-122, SKY-120, SKY-119, SKY-118, SKY-117, SKY-97, SKY-88, SKY-81, SKY-80, SKY-75, SKY-72, SKY-69, SKY-67, SKY-65, SKY-63, SKY-62, SKY-61, SKY-60, SKY-59, SKY-54, SKY-51, SKY-50, SKY-44, SKY-37, SKY-35, SKY-33, SKY-32, SKY-29, SKY-28, SKY-27, SKY-26, SKY-22, SKY-21, SKY-20, SKY-16, SKY-15, SKY-14, SKY-13, SKY-6, SKY-3
- **Admin/CMS**: SKY-86, SKY-109, SKY-107, SKY-105, SKY-34
- **Date/Time**: SKY-268

### Low Priority (3 bugs)
- **Display Issues**: SKY-165, SKY-135, SKY-82, SKY-125

### Lowest Priority (2 bugs)
- **UI Theme**: SKY-92, SKY-41

## Root Cause Categories Analysis

### State Management Issues (35 bugs)
Mobile search state, form state, UI component states
- Examples: SKY-295, SKY-289, SKY-282, SKY-199, SKY-263

### Validation Logic Problems (28 bugs)  
Input validation, business rule validation, data validation
- Examples: SKY-253, SKY-264, SKY-216, SKY-139, SKY-11

### UI/Layout Rendering (25 bugs)
CSS issues, responsive design, component rendering
- Examples: SKY-294, SKY-266, SKY-200, SKY-260, SKY-246

### Navigation/Routing Issues (15 bugs)
Link routing, page navigation, modal flow
- Examples: SKY-297, SKY-206, SKY-205, SKY-265, SKY-219

### Email System Problems (12 bugs)
Email generation, formatting, delivery
- Examples: SKY-301, SKY-296, SKY-210, SKY-196, SKY-192

### Data Processing/Calculation (18 bugs)
Price calculations, date handling, data formatting
- Examples: SKY-126, SKY-96, SKY-101, SKY-107, SKY-54

### Form Handling Issues (20 bugs)
Form submission, field behavior, tab navigation
- Examples: SKY-102, SKY-217, SKY-184, SKY-183, SKY-12

### Backend Integration (8 bugs)
API responses, GDS integration, data mapping
- Examples: SKY-86, SKY-243, SKY-208, SKY-140

## Recommendations by Severity

### Immediate Action (Highest/High - 56 bugs):
1. **Mobile Search Experience** - 24 critical mobile bugs affecting core functionality
2. **Payment System Integrity** - 12 payment-related bugs affecting revenue
3. **Email Communication** - 5 email bugs affecting customer communication
4. **Core Search Functionality** - 8 search validation and processing bugs

### Medium Priority (78 bugs):
Focus on user experience improvements and form handling enhancements

### Low Priority (5 bugs):
Address when resources allow, mostly cosmetic improvements
