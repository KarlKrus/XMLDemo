﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="XMLDemo.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/lumen.css" rel="stylesheet" type="text/css" />
    <link href="content/site.css" rel="stylesheet" type="text/css" />
    <link href="Content/checkbox.css" rel="stylesheet" type="text/css" />
    <link href="Content/font-awesome.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="well">
                <h3>XML Database Demo</h3>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="well">
                            <div class="row">
                                <div class="col-sm-2">
                                    <label>ID No:</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="_txtID" />
                                </div>
                                <div class="col-sm-5">
                                    <label>First Name:</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="_txtFirstName" />
                                </div>
                                <div class="col-sm-5">
                                    <label>Last Name:</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="_txtLastName" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <label>City:</label>
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="_drpdwnlstCity">
                                        <asp:ListItem>Caloocan</asp:ListItem>
                                        <asp:ListItem>Las Piñas</asp:ListItem>
                                        <asp:ListItem>Makati</asp:ListItem>
                                        <asp:ListItem>Malabon</asp:ListItem>
                                        <asp:ListItem>Mandaluyong</asp:ListItem>
                                        <asp:ListItem>Manila</asp:ListItem>
                                        <asp:ListItem>Marikina</asp:ListItem>
                                        <asp:ListItem>Muntinlupa</asp:ListItem>
                                        <asp:ListItem>Navotas</asp:ListItem>
                                        <asp:ListItem>Parañaque</asp:ListItem>
                                        <asp:ListItem>Pasay</asp:ListItem>
                                        <asp:ListItem>Pasig</asp:ListItem>
                                        <asp:ListItem>Quezon City</asp:ListItem>
                                        <asp:ListItem>San Juan</asp:ListItem>
                                        <asp:ListItem>Taguig</asp:ListItem>
                                        <asp:ListItem>Valenzuela</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-3">
                                    <label>Gender:</label>
                                    <asp:RadioButtonList runat="server" CssClass="radio radio-info" ID="_rdbtnlstGender" RepeatDirection="Horizontal" RepeatLayout="Flow" CellSpacing="-1" CellPadding="-1">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="col-sm-3">
                                    <label>Postal Code:</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="_txtPostalCode" />
                                </div>
                                <div class="col-sm-3">
                                    <label>Mobile No.:</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="_txtMobileNo" />
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <asp:Button runat="server" CssClass="btn btn-primary" Text="Insert" ID="_btnInsert" OnClick="_btnInsert_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
            <div class="table-responsive well">
                <asp:GridView runat="server" ID="_grdvwStudent" GridLines="None" CssClass="table table-condensed" AutoGenerateColumns="False" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowEditing="_grdvwStudent_RowEditing" PageSize="5" OnRowCancelingEdit="_grdvwStudent_RowCancelingEdit" OnRowUpdating="_grdvwStudent_RowUpdating" OnRowDeleting="_grdvwStudent_RowDeleting" AllowSorting="True">
                    <Columns>
                        <asp:TemplateField HeaderText="ID No.">
                            <ItemTemplate>
                                <asp:Label ID="_lblID" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <EditItemTemplate>
                                <asp:TextBox CssClass="form-control" ID="_txtFirstName" runat="server" Text='<%# Bind("firstname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("firstname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <EditItemTemplate>
                                <asp:TextBox CssClass="form-control" ID="_txtLastName" runat="server" Text='<%# Bind("lastname") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("lastname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <EditItemTemplate>
                                <asp:DropDownList ID="_drpdwnlstCity" runat="server" CssClass="form-control" SelectedValue='<%# Bind("city") %>'>
                                    <asp:ListItem>Caloocan</asp:ListItem>
                                    <asp:ListItem>Las Piñas</asp:ListItem>
                                    <asp:ListItem>Makati</asp:ListItem>
                                    <asp:ListItem>Malabon</asp:ListItem>
                                    <asp:ListItem>Mandaluyong</asp:ListItem>
                                    <asp:ListItem>Manila</asp:ListItem>
                                    <asp:ListItem>Marikina</asp:ListItem>
                                    <asp:ListItem>Muntinlupa</asp:ListItem>
                                    <asp:ListItem>Navotas</asp:ListItem>
                                    <asp:ListItem>Parañaque</asp:ListItem>
                                    <asp:ListItem>Pasay</asp:ListItem>
                                    <asp:ListItem>Pasig</asp:ListItem>
                                    <asp:ListItem>Quezon City</asp:ListItem>
                                    <asp:ListItem>San Juan</asp:ListItem>
                                    <asp:ListItem>Taguig</asp:ListItem>
                                    <asp:ListItem>Valenzuela</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <EditItemTemplate>
                                <asp:RadioButtonList ID="_rdbtnlstGender" runat="server" SelectedValue='<%# Bind("gender") %>' CssClass="radio radio-info">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Postal Code">
                            <EditItemTemplate>
                                <asp:TextBox CssClass="form-control" ID="_txtPostCode" runat="server" Text='<%# Bind("postalcode") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("postalcode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No.">
                            <EditItemTemplate>
                                <asp:TextBox CssClass="form-control" ID="_txtMobileNo" runat="server" Text='<%# Bind("mobileno") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("mobileno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
