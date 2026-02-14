# Assignments

This section contains assignment files for the **Zero to Hero Business Central AL** course.

<details markdown="block">
<summary><strong>Assignment #1</strong></summary>

<div markdown="1">

- [Assignments Diagram](./Assignments%20Diagram.drawio)

1. Create tables --> add fields to the table

Start each task by creating the table, then add the listed fields with the given data types.

- Create `DepartmentsTable` and add these fields:
  - `DepartmentID: Integer`
  - `Department: Enum DepartmentEnum`
  - `DepartmentHOD: Text[100]`
  - `DepartmentCount: Integer` (FlowField)

- Create `DepartmentPositionsTable` and add these fields:
  - `LineNo: Integer`
  - `DepartmentID: Integer`
  - `DesignationID: Integer`
  - `DesignationName: Text[250]`
  - `AvailablePositions: Integer`

- Create `Designations` and add these fields:
  - `DesignationID: Integer`
  - `DesignationName: Text[100]`
  - `DesignationDepartment: Enum DepartmentEnum`
  - `DesignationCount: Integer` (FlowField)
  - `AvaialablePositions: Integer`
  - `SalaryThreshold: Decimal`

- Create `EmployeeRegistrations` and add these fields:
  - `EmployeeRegistrationNumber: Integer`
  - `EmployeeRegistrationStatus: Enum EmployeeRegistration`
  - `EmployeeName: Text[100]`
  - `EmployeeAge: Integer`
  - `Gender: Enum EmployeeGender`
  - `EmployeeRegistrationCount: Integer` (FlowField)

- Create `EmployeeRegistrationLines` and add these fields:
  - `LineNumber: Integer`
  - `EmployeeRegistrationNumber: Integer`
  - `RegistrationDepartment: Enum DepartmentEnum`
  - `SalaryExpectations: Decimal`
  - `DesignationName: Text[100]`
  - `DesignationID: Integer`

- Create `EmployeeRegistrationEntries` and add these fields:
  - `EmployeeRegistrationNumber: Integer`
  - `EmployeeName: Text[100]`
  - `EmployeeGender: Enum EmployeeGender`
  - `EmployeeAge: Integer`
  - `LineNumber: Integer`
  - `EntryNo: Integer`
  - `Department: Enum DepartmentEnum`
  - `Designation: Text[100]`
  - `SalaryExpectations: Decimal`

- In `EmployeeTable`, add/update these assignment-related fields:
  - `EmployeeIdValue: Code[20]`
  - `FirstName: Text[50]`
  - `MiddleName: Text[50]`
  - `LastName: Text[50]`
  - `FullName: Text[150]`
  - `Gender: Enum EmployeeGender`
  - `DateOfBirth: Date`
  - `MaritialStatus: Enum MaritialStatus`
  - `Nationality: Text[50]`
  - `Email: Text[100]`
  - `PhoneNumber: Text[30]`
  - `EmergencyContact: Text[100]`
  - `Address: Text[100]`
  - `Addres2: Text[100]`
  - `City: Text[50]`
  - `PostCode: Code[20]`
  - `Stateprovince: Text[50]`
  - `Country: Text[50]`
  - `DepartmentCode: Enum DepartmentEnum`
  - `DesignationId: Integer`
  - `DateOfJoining: Date`
  - `EmploymentStatus: Enum EmploymentStatus`
  - `BankAccountNo: Code[30]`
  - `BankName: Text[100]`
  - `BasicSalary: Decimal`
  - `Comments: Text[250]`
  - `EmployeeCount: Integer` (FlowField)

2. Create pages --> add fields


- Create `ContactQuickViewFactbox` (`PageType = CardPart`)
  - `area(Content)` -> `group(QuickInformation)`: `Email`, `PhoneNumber`, `Address`

- Create `DepartmentCardPage` (`PageType = Card`)
  - `area(Content)` -> `group(GroupName)` (Caption: `General`): `DepartmentID`, `DepartmentHOD`, `Department`
  - `area(Content)` -> `part(DepartmentPostitions; DepartmentPostitions)` with `SubPageLink = DepartmentID = field(DepartmentID)`

- Create `DepartmentListPartPage` (`PageType = CardPart`)
  - `area(Content)` -> `cuegroup(DepartmentList)`: `DepartmentCount`

- Create `DepartmentPositionsListPart` (`PageType = ListPart`)
  - `area(Content)` -> `repeater(DepartmentList)`: `LineNo`, `DesignationID`, `DesignationName`, `PositionCount`

- Create `DepartmentsPage` (`PageType = List`)
  - `area(Content)` -> `repeater(DepartmentRepeater)`: `DepartmentID`, `Department`, `DepartmentHOD`

- Create `DesignationsListPage` (`PageType = List`)
  - `area(Content)` -> `repeater(Designation)`: `DesignationID`, `DesignationName`, `DesignationDepartment`, `AvaialablePositions`, `SalaryThreshold`

- Create `DesignationsListPart` (`PageType = CardPart`)
  - `area(Content)` -> `cuegroup(Desingnation)`: `DesignationID` (shown from `Rec.DesignationCount`)

- Create `EmployeeCardPage` (`PageType = Card`)
  - `area(Content)` -> `group(PersonalInformation)`: `Name` (Employee ID), `FirstName`, `MiddleName`, `LastName`, `FullName`, `Gender`, `DateOfBirth`, `MaritialStatus`, `Nationality`
  - `area(Content)` -> `group(ContactInformation)`: `Email`, `PhoneNumber`, `EmergencyContact`
  - `area(Content)` -> `group(AddressInformation)`: `Address`, `Address2`, `City`, `PostCode`, `Stateprovince`, `Country`
  - `area(Content)` -> `group(EmploymentInformation)`: `DepartmentCode`, `DesignationId`, `EmployeeeAccountTypeEnum`, `DateOfJoining`, `EmploymentStatus`
  - `area(Content)` -> `group(BankSalaryInformation)`: `BankAccountNo`, `BankName`, `BasicSalary`, `Comments`
  - `area(FactBoxes)` -> `part(ContactQuickView; ContactQuickViewFactBox)` with `SubPageLink = EmployeeId = field(EmployeeId)`

- Create `EmployeeListPart` (`PageType = CardPart`)
  - `area(Content)` -> `cuegroup(Desingnation)`: `EmployeeCount`

- Create `EmployeePage` (`PageType = List`)
  - `area(Content)` -> `repeater(GroupName)`: `EmployeeId`, `EmployeeName`, `EmployeeAge`, `EmployeeeAccountTypeOption`, `EmployeeeAccountTypeEnum`, `EmployeeIdValue`, `BasicSalary`

- Create `EmployeeRegistrationLines` (`PageType = ListPart`)
  - `area(Content)` -> `repeater(EmployeeRegistrationLines)`: `LineNumber`, `RegistrationDepartment`, `EmployeeDesingation`, `SalaryExpectations`

- Create `EmployeeRegistrationsCardPage` (`PageType = Card`)
  - `area(Content)` -> `group(General)`: `EmployeeRegistrationNumber`, `EmployeeName`, `EmployeeRegistrationStatus`, `Gender`, `EmployeeAge`
  - `area(Content)` -> `part(EmployeeRegistrationLines; EmployeeRegistrationLines)` with `SubPageLink = EmployeeRegistrationNumber = field(EmployeeRegistrationNumber)`
  - `area(Processing)` -> action `Submit` to call `EmployeeRegistrationCodeunit.RegisterEmployee(Rec)`

- Create `EmployeeRegistrationsListPage` (`PageType = List`)
  - `area(Content)` -> `repeater(EmployeeRegistrations)`: `EmployeeRegistrationNumber`, `EmployeeName`, `EmployeeRegistrationStatus`

- Create `EmployeeRegistrationsListPart` (`PageType = CardPart`)
  - `area(Content)` -> `cuegroup(EmployeeRegistrations)`: `EmployeeRegistrationCount`

- Create `EmployeeRegEntriesPage` (`PageType = List`)
  - `area(Content)` -> `repeater(EmployeeRegistrationEntries)`: `EmployeeRegistrationNumber`, `EmployeeName`, `EmployeeGender`, `EmployeeAge`, `LineNumber`, `EntryNo`, `Department`, `Designation`, `SalaryExpectations`

3. Create Codeunit and add Business Logic

`EmployeeRegistrationCodeunit` adds core registration posting logic:

- `RegisterEmployee(EmployeeRegistrations)`
  - Reads all lines from `EmployeeRegistrationLines` for the registration number.
  - Validates each line using `CheckPostionAndSalary`.
  - Prevents duplicate entry creation via `CheckEntryExist`.
  - Inserts posted snapshot rows in `EmployeeRegistrationEntries`.
  - Inserts employee master data into `EmployeeTable`.
  - Decrements available designation positions via `UpdateDesignations`.
  - Sets registration status to `Submitted` when all lines pass; otherwise shows aggregated error messages.

- `CheckPostionAndSalary(...)` (`[TryFunction]`)
  - Validates available position count for selected designation.
  - Ensures salary expectation is not `0`.
  - Ensures expected salary does not exceed designation salary threshold.

- `InssertIntoEmployees(...)`
  - Creates employee record from registration header + line details.
  - Uses `GetLastEmployeeID()` to generate next employee ID value.

- `InsertIntoEmployeeRegEntries(...)`
  - Writes audit/entry records combining registration and line values.

- `UpdateDesignations(DesignationID)`
  - Reduces `AvaialablePositions` by `1` after successful posting.

</div>

</details>
