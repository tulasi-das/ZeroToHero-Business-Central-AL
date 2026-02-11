page 50102 EmployeeCardPage
{
    PageType = Card;
    SourceTable = EmployeeTable;
    Caption = 'Employee Card';

    layout
    {
        area(Content)
        {
            group(PersonalInformation)
            {
                Caption = 'Personal Information';
                field(Name; Rec.EmployeeId)
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID';
                }
                field(FirstName; Rec.FirstName)
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                }
                field(MiddleName; Rec.MiddleName)
                {
                    ApplicationArea = All;
                    Caption = 'Middle Name';
                }
                field(LastName; Rec.LastName)
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';
                }
                field(FullName; Rec.FullName)
                {
                    ApplicationArea = All;
                    Caption = 'Full Name';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    Caption = 'Gender';
                }
                field(DateOfBirth; Rec.DateOfBirth)
                {
                    ApplicationArea = All;
                    Caption = 'Date of Birth';
                }
                field(MaritialStatus; Rec.MaritialStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Marital Status';
                }
                field(Nationality; Rec.Nationality)
                {
                    ApplicationArea = All;
                    Caption = 'Nationality';
                }

            }
            group(ContactInformation)
            {
                Caption = 'Contact Information';
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }
                field(PhoneNumber; Rec.PhoneNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Phone Number';
                }
                field(EmergencyContact; Rec.EmergencyContact)
                {
                    ApplicationArea = All;
                    Caption = 'Emergency Contact';
                }
            }
            group(AddressInformation)
            {
                Caption = 'Address Information';
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(Address2; Rec.Addres2)
                {
                    ApplicationArea = All;
                    Caption = 'Address 2';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Caption = 'City';
                }
                field(PostCode; Rec.PostCode)
                {
                    ApplicationArea = All;
                    Caption = 'Post Code';
                }
                field(Stateprovince; Rec.Stateprovince)
                {
                    ApplicationArea = All;
                    Caption = 'State/Province';
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    Caption = 'Country';
                }
            }
            group(EmploymentInformation)
            {
                Caption = 'Employee Information';
                field(DepartmentCode; Rec.DepartmentCode)
                {
                    ApplicationArea = All;
                    Caption = 'Department Code';
                }
                field(DesignationCode; Rec.DesignationCode)
                {
                    ApplicationArea = All;
                    Caption = 'Designation Code';
                }
                field(EmployeeeAccountTypeEnum; Rec.EmployeeeAccountTypeEnum)
                {
                    ApplicationArea = All;
                    Caption = 'Account Type';
                }
                field(DateOfJoining; Rec.DateOfJoining)
                {
                    ApplicationArea = All;
                    Caption = 'Date of Joining';
                }
                field(EmploymentStatus; Rec.EmploymentStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Employment Status';
                }
            }
            group(BankSalaryInformation)
            {
                Caption = 'Bank Salary Information';
                field(BankAccountNo; Rec.BankAccountNo)
                {
                    ApplicationArea = All;
                    Caption = 'Bank Account No.';
                }
                field(BankName; Rec.BankName)
                {
                    ApplicationArea = All;
                    Caption = 'Bank Name';
                }
                field(BasicSalary; Rec.BasicSalary)
                {
                    ApplicationArea = All;
                    Caption = 'Basic Salary';
                }
                field(Comments; Rec.Comments)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                }
            }
        }
        area(FactBoxes)
        {
            part(ContactQuickView; ContactQuickViewFactBox)
            {
                SubPageLink = EmployeeId = field(EmployeeId);
                ApplicationArea = All;
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'New Action';
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
