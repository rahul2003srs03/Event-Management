Here’s a professional and structured `README.md` file for your **Event Management (MAX FIT)** project, based on the PDF you uploaded:

---

# MAX FIT – Event Management System

**Developed on Salesforce Platform**

## 📌 About the Project

**MAX FIT** aims to streamline and automate event planning, attendee tracking, and speaker engagement. This project offers a robust Event Management System built using the Salesforce platform, leveraging standard/custom objects, validation rules, Apex development, Lightning Web Components (LWC), and community portals to ensure a comprehensive and scalable solution.

The application handles everything from object schema setup to user access roles, trigger-based automations, API integrations (e.g., SmartyStreets), and advanced UI components in the Salesforce Community Cloud.

---

## 🧩 Core Entities (Objects)

* **Location**
* **Event Organizer**
* **Event**
* **Attendee**
* **Speaker**
* **Event-Attendee (M-D)**
* **Event-Speaker (M-D)**
* **Error Log**

---

## 🎯 Key Features

* 📅 **Event Lifecycle Management**: Create, manage, publish, and track events.
* ✅ **Validation Rules**: Ensure data integrity across records.
* 🔍 **Duplicate Rules**: Avoid duplicate records for Attendees, Speakers, and Organizers.
* 🔐 **User Access Control**: Role hierarchy and Object-Level Security (OLS).
* 🧠 **Apex Trigger Logic**:

  * Avoid duplicate speaker-event mapping.
  * Auto-confirmation email to Attendees with event details.
* 🧪 **Test Coverage**: 90–95% test coverage with bulk handling and negative test scenarios.
* 🗃️ **Batch Apex**: Purge past events (older than 2 months).
* 🌐 **API Integration**: SmartyStreets API for location verification.
* 🧭 **Lightning Web Components**:

  * Event form submission
  * Event detail viewer
  * Speaker/attendee listing
  * Custom lookup
* 🌍 **Salesforce Community Portal**:

  * Branded event portal
  * Role-based views for Organizer and Attendee
  * Tabbed UI with navigation and rich UI elements

---

## 📌 Milestones Overview

| Milestone | Description                                                       |
| --------- | ----------------------------------------------------------------- |
| 1         | Object structure setup with valid data types and field help texts |
| 1.1       | Validation rule creation on Event, Attendee, and Speaker objects  |
| 1.2       | Duplicate rule setup                                              |
| 1.3       | Security setup (Profiles, OWD, Roles, Sharing Rules)              |
| 2         | Apex class to insert dynamic error logs                           |
| 3         | Trigger to prevent duplicate speaker bookings                     |
| 4         | Trigger to auto-email attendees on registration                   |
| 5         | Unit testing for trigger and handler logic                        |
| 6         | Batch Apex to delete old events                                   |
| 7         | Test class for batch execution                                    |
| 8         | Address verification via SmartyStreets API                        |
| 9         | VS Code setup and LWC custom lookup                               |
| 10        | LWC - Event detail component                                      |
| 11        | LWC - Event listing with search                                   |
| 12        | LWC - Attendee events viewer                                      |
| 13        | Modify components to add Speaker/Attendee dynamically             |
| 14        | Apex REST class to expose live events                             |
| 15        | Speaker profile enhancement (Rich Text + URL)                     |
| 16        | Salesforce Community setup                                        |
| 17        | UI enhancements in community                                      |
| 18        | Event detail components in community                              |

---


## 👨‍💻 Developer Notes

* Ensure **bulk-safe** triggers and handlers are used.
* All LWC components must follow best practices including reusability and separation of concerns.
* Make sure test classes provide **positive and negative coverage** scenarios.
* Keep record-level and field-level access compliant with profile permissions.

---

## 🛠️ Technologies Used

* Salesforce Lightning Experience
* Lightning Web Components (LWC)
* Apex Classes & Triggers
* Visual Studio Code + Salesforce Extensions
* Salesforce Community Cloud
* RESTful API Integration

---

