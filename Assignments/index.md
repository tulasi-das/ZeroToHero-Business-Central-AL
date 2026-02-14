# Assignments

This section contains assignment files for the **Zero to Hero Business Central AL** course.

<details>
<summary><strong>Assignment #1</strong></summary>

<ul>
  <li><a href="./Assignments%20Diagram.drawio">Assignments Diagram</a></li>
</ul>

<h3>1. Create tables --&gt; add fields to the table</h3>
<p>Start each task by creating the table, then add the listed fields with the given data types.</p>

<p><strong>Create <code>DepartmentsTable</code> and add these fields:</strong></p>
<ul>
  <li><code>DepartmentID: Integer</code></li>
  <li><code>Department: Enum DepartmentEnum</code></li>
  <li><code>DepartmentHOD: Text[100]</code></li>
  <li><code>DepartmentCount: Integer</code> (FlowField)</li>
</ul>

<p><strong>Create <code>DepartmentPositionsTable</code> and add these fields:</strong></p>
<ul>
  <li><code>LineNo: Integer</code></li>
  <li><code>DepartmentID: Integer</code></li>
  <li><code>DesignationID: Integer</code></li>
  <li><code>DesignationName: Text[250]</code></li>
  <li><code>AvailablePositions: Integer</code></li>
</ul>

<p><strong>Create <code>Designations</code> and add these fields:</strong></p>
<ul>
  <li><code>DesignationID: Integer</code></li>
  <li><code>DesignationName: Text[100]</code></li>
  <li><code>DesignationDepartment: Enum DepartmentEnum</code></li>
  <li><code>DesignationCount: Integer</code> (FlowField)</li>
  <li><code>AvaialablePositions: Integer</code></li>
  <li><code>SalaryThreshold: Decimal</code></li>
</ul>

<p><strong>Create <code>EmployeeRegistrations</code> and add these fields:</strong></p>
<ul>
  <li><code>EmployeeRegistrationNumber: Integer</code></li>
  <li><code>EmployeeRegistrationStatus: Enum EmployeeRegistration</code></li>
  <li><code>EmployeeName: Text[100]</code></li>
  <li><code>EmployeeAge: Integer</code></li>
  <li><code>Gender: Enum EmployeeGender</code></li>
  <li><code>EmployeeRegistrationCount: Integer</code> (FlowField)</li>
</ul>

<p><strong>Create <code>EmployeeRegistrationLines</code> and add these fields:</strong></p>
<ul>
  <li><code>LineNumber: Integer</code></li>
  <li><code>EmployeeRegistrationNumber: Integer</code></li>
  <li><code>RegistrationDepartment: Enum DepartmentEnum</code></li>
  <li><code>SalaryExpectations: Decimal</code></li>
  <li><code>DesignationName: Text[100]</code></li>
  <li><code>DesignationID: Integer</code></li>
</ul>

<p><strong>Create <code>EmployeeRegistrationEntries</code> and add these fields:</strong></p>
<ul>
  <li><code>EmployeeRegistrationNumber: Integer</code></li>
  <li><code>EmployeeName: Text[100]</code></li>
  <li><code>EmployeeGender: Enum EmployeeGender</code></li>
  <li><code>EmployeeAge: Integer</code></li>
  <li><code>LineNumber: Integer</code></li>
  <li><code>EntryNo: Integer</code></li>
  <li><code>Department: Enum DepartmentEnum</code></li>
  <li><code>Designation: Text[100]</code></li>
  <li><code>SalaryExpectations: Decimal</code></li>
</ul>

<p><strong>In <code>EmployeeTable</code>, add/update these assignment-related fields:</strong></p>
<ul>
  <li><code>EmployeeIdValue: Code[20]</code></li>
  <li><code>FirstName: Text[50]</code></li>
  <li><code>MiddleName: Text[50]</code></li>
  <li><code>LastName: Text[50]</code></li>
  <li><code>FullName: Text[150]</code></li>
  <li><code>Gender: Enum EmployeeGender</code></li>
  <li><code>DateOfBirth: Date</code></li>
  <li><code>MaritialStatus: Enum MaritialStatus</code></li>
  <li><code>Nationality: Text[50]</code></li>
  <li><code>Email: Text[100]</code></li>
  <li><code>PhoneNumber: Text[30]</code></li>
  <li><code>EmergencyContact: Text[100]</code></li>
  <li><code>Address: Text[100]</code></li>
  <li><code>Addres2: Text[100]</code></li>
  <li><code>City: Text[50]</code></li>
  <li><code>PostCode: Code[20]</code></li>
  <li><code>Stateprovince: Text[50]</code></li>
  <li><code>Country: Text[50]</code></li>
  <li><code>DepartmentCode: Enum DepartmentEnum</code></li>
  <li><code>DesignationId: Integer</code></li>
  <li><code>DateOfJoining: Date</code></li>
  <li><code>EmploymentStatus: Enum EmploymentStatus</code></li>
  <li><code>BankAccountNo: Code[30]</code></li>
  <li><code>BankName: Text[100]</code></li>
  <li><code>BasicSalary: Decimal</code></li>
  <li><code>Comments: Text[250]</code></li>
  <li><code>EmployeeCount: Integer</code> (FlowField)</li>
</ul>

<h3>2. Create pages --&gt; add fields</h3>
<ul>
  <li><strong>Create <code>ContactQuickViewFactbox</code> (<code>PageType = CardPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>group(QuickInformation)</code>: <code>Email</code>, <code>PhoneNumber</code>, <code>Address</code></li>
  <li><strong>Create <code>DepartmentCardPage</code> (<code>PageType = Card</code>)</strong><br><code>area(Content)</code> -&gt; <code>group(GroupName)</code> (Caption: <code>General</code>): <code>DepartmentID</code>, <code>DepartmentHOD</code>, <code>Department</code><br><code>area(Content)</code> -&gt; <code>part(DepartmentPostitions; DepartmentPostitions)</code> with <code>SubPageLink = DepartmentID = field(DepartmentID)</code></li>
  <li><strong>Create <code>DepartmentListPartPage</code> (<code>PageType = CardPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>cuegroup(DepartmentList)</code>: <code>DepartmentCount</code></li>
  <li><strong>Create <code>DepartmentPositionsListPart</code> (<code>PageType = ListPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(DepartmentList)</code>: <code>LineNo</code>, <code>DesignationID</code>, <code>DesignationName</code>, <code>PositionCount</code></li>
  <li><strong>Create <code>DepartmentsPage</code> (<code>PageType = List</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(DepartmentRepeater)</code>: <code>DepartmentID</code>, <code>Department</code>, <code>DepartmentHOD</code></li>
  <li><strong>Create <code>DesignationsListPage</code> (<code>PageType = List</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(Designation)</code>: <code>DesignationID</code>, <code>DesignationName</code>, <code>DesignationDepartment</code>, <code>AvaialablePositions</code>, <code>SalaryThreshold</code></li>
  <li><strong>Create <code>DesignationsListPart</code> (<code>PageType = CardPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>cuegroup(Desingnation)</code>: <code>DesignationID</code> (shown from <code>Rec.DesignationCount</code>)</li>
  <li><strong>Create <code>EmployeeCardPage</code> (<code>PageType = Card</code>)</strong><br><code>area(Content)</code> -&gt; <code>group(PersonalInformation)</code>: <code>Name</code> (Employee ID), <code>FirstName</code>, <code>MiddleName</code>, <code>LastName</code>, <code>FullName</code>, <code>Gender</code>, <code>DateOfBirth</code>, <code>MaritialStatus</code>, <code>Nationality</code><br><code>area(Content)</code> -&gt; <code>group(ContactInformation)</code>: <code>Email</code>, <code>PhoneNumber</code>, <code>EmergencyContact</code><br><code>area(Content)</code> -&gt; <code>group(AddressInformation)</code>: <code>Address</code>, <code>Address2</code>, <code>City</code>, <code>PostCode</code>, <code>Stateprovince</code>, <code>Country</code><br><code>area(Content)</code> -&gt; <code>group(EmploymentInformation)</code>: <code>DepartmentCode</code>, <code>DesignationId</code>, <code>EmployeeeAccountTypeEnum</code>, <code>DateOfJoining</code>, <code>EmploymentStatus</code><br><code>area(Content)</code> -&gt; <code>group(BankSalaryInformation)</code>: <code>BankAccountNo</code>, <code>BankName</code>, <code>BasicSalary</code>, <code>Comments</code><br><code>area(FactBoxes)</code> -&gt; <code>part(ContactQuickView; ContactQuickViewFactBox)</code> with <code>SubPageLink = EmployeeId = field(EmployeeId)</code></li>
  <li><strong>Create <code>EmployeeListPart</code> (<code>PageType = CardPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>cuegroup(Desingnation)</code>: <code>EmployeeCount</code></li>
  <li><strong>Create <code>EmployeeManagementRoleCenter</code> (<code>PageType = RoleCenter</code>)</strong><br><code>area(RoleCenter)</code> -&gt; <code>part(Designations; DesignationsListPartPage)</code><br><code>area(RoleCenter)</code> -&gt; <code>part(Employees; EmployeeListPart)</code><br><code>area(RoleCenter)</code> -&gt; <code>part(Departments; DepartmentListPart)</code><br><code>area(RoleCenter)</code> -&gt; <code>part(EmployeeRegistrations; EmployeeRegistrationsCardPart)</code></li>
  <li><strong>Create <code>EmployeePage</code> (<code>PageType = List</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(GroupName)</code>: <code>EmployeeId</code>, <code>EmployeeName</code>, <code>EmployeeAge</code>, <code>EmployeeeAccountTypeOption</code>, <code>EmployeeeAccountTypeEnum</code>, <code>EmployeeIdValue</code>, <code>BasicSalary</code></li>
  <li><strong>Create <code>EmployeeRegistrationLines</code> (<code>PageType = ListPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(EmployeeRegistrationLines)</code>: <code>LineNumber</code>, <code>RegistrationDepartment</code>, <code>EmployeeDesingation</code>, <code>SalaryExpectations</code></li>
  <li><strong>Create <code>EmployeeRegistrationsCardPage</code> (<code>PageType = Card</code>)</strong><br><code>area(Content)</code> -&gt; <code>group(General)</code>: <code>EmployeeRegistrationNumber</code>, <code>EmployeeName</code>, <code>EmployeeRegistrationStatus</code>, <code>Gender</code>, <code>EmployeeAge</code><br><code>area(Content)</code> -&gt; <code>part(EmployeeRegistrationLines; EmployeeRegistrationLines)</code> with <code>SubPageLink = EmployeeRegistrationNumber = field(EmployeeRegistrationNumber)</code><br><code>area(Processing)</code> -&gt; action <code>Submit</code> to call <code>EmployeeRegistrationCodeunit.RegisterEmployee(Rec)</code></li>
  <li><strong>Create <code>EmployeeRegistrationsListPage</code> (<code>PageType = List</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(EmployeeRegistrations)</code>: <code>EmployeeRegistrationNumber</code>, <code>EmployeeName</code>, <code>EmployeeRegistrationStatus</code></li>
  <li><strong>Create <code>EmployeeRegistrationsListPart</code> (<code>PageType = CardPart</code>)</strong><br><code>area(Content)</code> -&gt; <code>cuegroup(EmployeeRegistrations)</code>: <code>EmployeeRegistrationCount</code></li>
  <li><strong>Create <code>EmployeeRegEntriesPage</code> (<code>PageType = List</code>)</strong><br><code>area(Content)</code> -&gt; <code>repeater(EmployeeRegistrationEntries)</code>: <code>EmployeeRegistrationNumber</code>, <code>EmployeeName</code>, <code>EmployeeGender</code>, <code>EmployeeAge</code>, <code>LineNumber</code>, <code>EntryNo</code>, <code>Department</code>, <code>Designation</code>, <code>SalaryExpectations</code></li>
</ul>

<h3>3. Create Codeunit and add Business Logic</h3>
<p><code>EmployeeRegistrationCodeunit</code> adds core registration posting logic:</p>
<ul>
  <li><strong><code>RegisterEmployee(EmployeeRegistrations)</code></strong>
    <ul>
      <li>Reads all lines from <code>EmployeeRegistrationLines</code> for the registration number.</li>
      <li>Validates each line using <code>CheckPostionAndSalary</code>.</li>
      <li>Prevents duplicate entry creation via <code>CheckEntryExist</code>.</li>
      <li>Inserts posted snapshot rows in <code>EmployeeRegistrationEntries</code>.</li>
      <li>Inserts employee master data into <code>EmployeeTable</code>.</li>
      <li>Decrements available designation positions via <code>UpdateDesignations</code>.</li>
      <li>Sets registration status to <code>Submitted</code> when all lines pass; otherwise shows aggregated error messages.</li>
    </ul>
  </li>
  <li><strong><code>CheckPostionAndSalary(...)</code> (<code>[TryFunction]</code>)</strong>
    <ul>
      <li>Validates available position count for selected designation.</li>
      <li>Ensures salary expectation is not <code>0</code>.</li>
      <li>Ensures expected salary does not exceed designation salary threshold.</li>
    </ul>
  </li>
  <li><strong><code>InssertIntoEmployees(...)</code></strong>
    <ul>
      <li>Creates employee record from registration header + line details.</li>
      <li>Uses <code>GetLastEmployeeID()</code> to generate next employee ID value.</li>
    </ul>
  </li>
  <li><strong><code>InsertIntoEmployeeRegEntries(...)</code></strong>
    <ul>
      <li>Writes audit/entry records combining registration and line values.</li>
    </ul>
  </li>
  <li><strong><code>UpdateDesignations(DesignationID)</code></strong>
    <ul>
      <li>Reduces <code>AvaialablePositions</code> by <code>1</code> after successful posting.</li>
    </ul>
  </li>
</ul>

</details>
