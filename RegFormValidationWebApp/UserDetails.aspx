<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="RegFormValidationWebApp.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Form</title>
    <link href="/Content/bootstrap.css" rel="stylesheet" />
    <link href="https://cdn."
    <script src="/Scripts/jquery-3.7.0.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        <br />
        <button type="button" id="btnCallHandler">Call ASHX handler</button>
        <br />
        <div class="mt-2">
            <label id="ajaxResponse" class="fw-bold text-info"></label>
        </div>

    </form>

    <script>
        $(document).ready(function () {
            $(".btnCallHandler").click(function () {
                $.ajax({
                    type: "GET",
                    url: "DemoHandler.ashx",
                    //data: { name: $("#txtName").val() },
                    success: function (response) {
                         alert("Response from ASHX: " + response);
                        //$("#ajaxResponse").text("Server Response: " + response);
                    },
                    error: function (xhr, status, error) {
                        //alert("Error: " + error);
                        $("#ajaxResponse").text("Error: " + error);
                    }
                });
            });
        });
    </script>


</body>
</html>
