# Bug Analysis - Clusters and Categories

## Cluster 1: Mobile UI/UX Issues (29 bugs)
**Root Cause**: Mobile-specific rendering, navigation, and interaction problems

### Bugs:
- SKY-295: [Mob] Search without filling "To" field issues - **FE**
- SKY-294: [Mob] Unnecessary scroll at "We've received your request" page - **FE**
- SKY-293: [Mob] Always Business class displayed as result - **FE**
- SKY-292: [Mob] Edit Search can't close - **FE**
- SKY-291: [Mob] Edit search Roundtrip to One way shows 2 dates - **FE**
- SKY-290: [Mob] Edit search shows wrong date - **FE**
- SKY-289: [Mob] Dates selection not saved on Edit search - **FE**
- SKY-288: [Mob] Trip type change validation issues - **FE**
- SKY-287: [Mob] Dates tab navigation issues - **FE**
- SKY-286: [Mob] Broken pagination when scroll from "From" input - **FE**
- SKY-285: [Mob] Possibility to zoom out to desktop view - **FE**
- SKY-284: [Mob] iOS keyboard chevrons causing bugs - **FE**
- SKY-283: [Mob] Broken pagination on airports list - **FE**
- SKY-282: [Mob] Wrong "selected" state of tabs - **FE**
- SKY-281: [Mob] No button to remove input after switching tabs - **FE**
- SKY-280: [Mob] Edit Roundtrip Search shows One way date - **FE**
- SKY-279: [Mob] Search button displayed when From/To removed - **FE**
- SKY-278: [Mob] Wrong text "Select these dates" button - **FE**
- SKY-277: [Mob] Search button not displayed on Edit - **FE**
- SKY-276: [Mob] From Input field not displayed - **FE**
- SKY-275: [Mob] Trip type change shows two dates selected - **FE**
- SKY-274: [Mob] Trip type change doesn't show Travelers - **FE**
- SKY-273: [Mob] Edit search skips date picker - **FE**
- SKY-272: [Mob] From tab name not highlighted - **FE**
- SKY-271: [MOB] Passenger count manual change limit - **FE**
- SKY-270: Date screen appears after navigation - **FE**
- SKY-269: Search button disappears - **FE**
- SKY-268: Random square appears on date selection - **FE**
- SKY-267: Keyboard disappears when tapping TO from FROM - **FE**

## Cluster 2: Payment Processing Issues (21 bugs)
**Root Cause**: Payment form validation, calculation, and processing problems

### Bugs:
- SKY-254: [PDF] Split payment display issues - **BE**
- SKY-253: [OAF] Split Card amount validation - **BE**
- SKY-244: Empty value in Card 1 validation - **FE**
- SKY-220: Split Card Amount fields validation - **FE**
- SKY-217: Split payment fields tab navigation - **FE**
- SKY-216: Negative amounts allowed in split payment - **FE**
- SKY-215: Romanian month "Noi" instead of "Nov" - **FE**
- SKY-214: Limit tips amount in UI - **FE**
- SKY-213: Date Of Birth invalid format validation - **FE**
- SKY-211: Ticket protection assignment issues - **BE**
- SKY-199: Manual tips not saved - **FE**
- SKY-141: Tips display misleading in email - **BE**
- SKY-96: Credit card split amount not recalculated - **FE**
- SKY-95: Tips limited to $99 - **FE**
- SKY-84: Tips can be negative amount - **FE**
- SKY-83: CVV validation issues - **FE**
- SKY-79: Tips not counted correctly for custom amount - **BE**
- SKY-73: Numerical validation for CC expiration date - **FE**
- SKY-52: Tips displayed after deselection - **FE**
- SKY-19: Missing option to deselect tip amount - **FE**
- SKY-4: Validation for "Reserve now & pay later" form - **FE**

## Cluster 3: Search Functionality Issues (18 bugs)
**Root Cause**: Search form validation, data handling, and UI state management

### Bugs:
- SKY-86: Search over 1 min, no results displayed - **BE**
- SKY-39: [MOBILE] Search doesn't provide results for some keys - **BE**
- SKY-30: Backspace deletes all input - **FE**
- SKY-209: No ability to select return date - **FE**
- SKY-193: Search Edit dates changing with timezone - **FE**
- SKY-189: Scroll bar doesn't follow selection - **FE**
- SKY-184: Passenger/Class field loses data with tab navigation - **FE**
- SKY-183: Dates dropdown not opened with tab key - **FE**
- SKY-182: Dropdowns not closing properly - **FE**
- SKY-181: No error state on search edit - **FE**
- SKY-176: Can't remove airport by clicking X - **FE**
- SKY-139: Cabin class can be deleted and search clicked - **FE**
- SKY-117: Roundtrip date population with NaN - **FE**
- SKY-11: FROM TO validation not applied - **FE**
- SKY-8: Cities/airports not displayed for single letter - **FE**
- SKY-7: Invalid data search doesn't return error - **FE**
- SKY-264: [Mob] Same city validation missing - **FE**
- SKY-3: Premium economy filter clickable issue - **FE**

## Cluster 4: CMS/Admin Panel Issues (8 bugs)
**Root Cause**: Content Management System functionality and UI problems

### Bugs:
- SKY-41: [CMS] Text color not visible with Dark Theme - **FE**
- SKY-35: [CMS] Edit Request logs display "xx" - **FE**
- SKY-33: [CMS] Selected Req# color not visible on hover - **FE**
- SKY-26: [CMS] Manual add Queue validation issues - **FE**
- SKY-69: [CMS] Multiple city PQ wrong wording - **FE**
- SKY-14: Sorting in CRM doesn't work for certain columns - **FE**
- SKY-243: Manually edited class creates wrong Sale - **BE**
- SKY-204: PQ with manually edited class displayed wrong - **BE**

## Cluster 5: Email System Issues (8 bugs)
**Root Cause**: Email generation, formatting, and delivery problems

### Bugs:
- SKY-301: Pack of small bugs for "We received your flight request!" email - **BE**
- SKY-296: Pack of small bugs for flight request email - **BE**
- SKY-210: Time in PQ email doesn't correspond to checkout - **BE**
- SKY-203: Agent received PQ Email in bad format - **BE**
- SKY-196: PQ email shows both quotes as Business - **BE**
- SKY-192: Agent doesn't receive PQ Email - **BE**
- SKY-32: Email doesn't call to action - **BE**
- SKY-13: Email form displayed incorrectly - **BE**

## Cluster 6: Date/Time Handling Issues (11 bugs)
**Root Cause**: Date validation, formatting, and calculation problems

### Bugs:
- SKY-125: Return date can be earlier than departure - **FE**
- SKY-118: One way request shows return date - **BE**
- SKY-114: No correlation between manual input and calendar - **FE**
- SKY-107: Check-in date/time not calculated correctly - **BE**
- SKY-92: Date of Birth calendar appears after second click - **FE**
- SKY-91: CC expiration date calendar issues - **FE**
- SKY-85: Date of Birth calendar missing for second passenger - **FE**
- SKY-80: Departure date validation missing - **FE**
- SKY-75: One way request wrong date format - **BE**
- SKY-134: [MOB] Search edit displays "NaN" - **FE**
- SKY-190: Search options skipped with tab navigation - **FE**

## Cluster 7: UI Display/Rendering Issues (15 bugs)
**Root Cause**: Visual display, layout, and styling problems

### Bugs:
- SKY-300: Phone number in header not clickable - **FE**
- SKY-299: BBB and Trustpilot not clickable - **FE**
- SKY-298: Replace twitter icon to X icon - **FE**
- SKY-297: Links open pages in middle, not top - **FE**
- SKY-175: Wrong Title on Region and Country LPs - **FE**
- SKY-167: Main section video doesn't work in Safari - **FE**
- SKY-165: Credit card Country display incorrect - **FE**
- SKY-135: [MOB] Price displayed in 2 lines on iPhone - **FE**
- SKY-82: User Icon quality pixelated - **FE**
- SKY-65: Return icon displayed for One way ticket - **FE**
- SKY-63: Unnecessary space in airport code - **FE**
- SKY-62: Should display "Travel Advisor" instead of agent - **FE**
- SKY-22: Long username displayed outside pop-up - **FE**
- SKY-6: Contacts page details displayed incorrectly - **FE**
- SKY-219: Primesky Logo doesn't take to Home Page - **FE**

## Cluster 8: Data Validation/Processing Issues (12 bugs)
**Root Cause**: Backend data processing, validation, and business logic problems

### Bugs:
- SKY-166: Itinerary not displaying correct in req - **BE**
- SKY-140: Connection timed out error - **BE**
- SKY-132: Error accessing sale from sales page - **BE**
- SKY-130: Error displayed on client page - **BE**
- SKY-126: Award pq formula needs adjustment - **BE**
- SKY-123: Difference in Pax OAF Step 4 and PDF - **BE**
- SKY-122: Net price not calculated for award - **BE**
- SKY-120: Price shown for all passengers - **BE**
- SKY-119: Award PQ has no option for coefficient - **BE**
- SKY-110: Additional numbers displayed on itinerary - **BE**
- SKY-94: Local US flights prices don't match excel - **Data**
- SKY-88: -1 passenger in request - **BE**

## Cluster 9: Authentication/User Management Issues (4 bugs)
**Root Cause**: User authentication, password reset, and account management

### Bugs:
- SKY-34: Reset password email not received - **BE**
- SKY-29: Lines of code displayed when modifying duplicate email - **BE**
- SKY-27: Reset password response 404 - **BE**
- SKY-81: Error changing client list from 50 to 100 - **BE**

## Cluster 10: Navigation/Linking Issues (6 bugs)
**Root Cause**: Broken links, incorrect redirections, and navigation problems

### Bugs:
- SKY-206: Europe LP opens for UAE and Netherlands - **Config**
- SKY-205: "By city" links open page with no price info - **Config**
- SKY-28: Destination tips link doesn't point to correct page - **Config**
- SKY-20: Terms and Privacy Policy links invalid - **Config**
- SKY-194: Call CTA doesn't work on Search Results - **FE**
- SKY-137: Contacts "Feedback" form doesn't send request - **BE**

## Cluster 11: Miscellaneous Business Logic Issues (13 bugs)
**Root Cause**: Various business logic and workflow problems

### Bugs:
- SKY-258: Mobile Search UI Bugs (collection) - **FE**
- SKY-233: [MOB][iOS] Split payment not saved - **BE**
- SKY-234: [MOB][iOS] Form broken after input - **FE**
- SKY-235: [MOB] Passenger count manual change doesn't work - **FE**
- SKY-208: Flight segment not displayed with "operated by" - **BE**
- SKY-195: How to Book Section text misspelled - **Other**
- SKY-191: Adult passenger amount removed with tab - **FE**
- SKY-172: Various issues (not specified in excerpt) - **Other**
- SKY-109: Airline logo not showing in ticket layout - **FE**
- SKY-105: Airline logo not showing (duplicate) - **FE**
- SKY-102: Can't submit payment form - **FE**
- SKY-101: Ticket Protection calculation broken - **BE**
- SKY-99: 0 passenger on payment form - **FE**

## Summary by Category:
- **Frontend (FE)**: 89 bugs
- **Backend (BE)**: 43 bugs
- **Configuration (Config)**: 4 bugs
- **Data**: 1 bug
- **Other**: 2 bugs

## Priority Recommendations:
1. **High Priority**: Mobile UI issues (Cluster 1) - affects user experience significantly
2. **High Priority**: Payment processing (Cluster 2) - affects revenue and customer trust
3. **Medium Priority**: Search functionality (Cluster 3) - core feature functionality
4. **Medium Priority**: Email system (Cluster 5) - customer communication
5. **Low Priority**: UI display issues (Cluster 7) - cosmetic improvements
