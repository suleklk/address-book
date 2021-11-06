<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AddressBookcrud._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large"  align="center">WELCOME TO ADDRESS BOOK</div>

        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 135px">&nbsp;</td>
                <td style="width: 111px">Full Name</td>
                <td>
                    <asp:TextBox ID="fullnametb" runat="server" Width="157px"></asp:TextBox>
                    <asp:Button ID="getbtn" runat="server" BackColor="#000000" ForeColor="White" OnClick="getbtn_Click" Text="LIST" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px">&nbsp;</td>
                <td style="width: 111px">Phone Number</td>
                <td>
                    <asp:TextBox ID="phonenumtb" runat="server" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px">&nbsp;</td>
                <td style="width: 111px">Email</td>
                <td>
                    <asp:TextBox ID="emailtb" runat="server" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px">&nbsp;</td>
                <td style="width: 111px">City</td>
                <td>
                    <asp:TextBox ID="citytb" runat="server" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px">&nbsp;</td>
                <td style="width: 111px">District</td>
                <td>
                    <asp:TextBox ID="districttb" runat="server" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px; height: 22px"></td>
                <td style="width: 111px; height: 22px">Address</td>
                <td style="height: 22px">
                    <asp:TextBox ID="addresstb" runat="server" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px; height: 22px">&nbsp;</td>
                <td style="width: 111px; height: 22px">&nbsp;</td>
                <td style="height: 22px">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px; height: 25px"></td>
                <td style="width: 111px; height: 25px"></td>
                <td style="height: 25px">
                    <asp:Button ID="savebtn" runat="server" BackColor="#000000" ForeColor="White" OnClick="savebtn_Click" style="margin-left: 0" Text="SAVE" Width="70px" />
                    <asp:Button ID="editbtn" runat="server" BackColor="#000000" ForeColor="White" OnClick="editbtn_Click" Text="EDIT" Width="70px" />
                    <asp:Button ID="deletebtn" runat="server" BackColor="#000000" ForeColor="White" OnClick="deletebtn_Click" onClientClick="return confirm('Are you sure to delete?');" Text="DELETE" Width="70px" />
                    <asp:Button ID="search" runat="server" BackColor="#000000" ForeColor="White" OnClick="searchbtn_Click" Text="SEARCH" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px; height: 25px"></td>
                <td style="width: 111px; height: 25px"></td>
                <td style="height: 25px">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 135px">&nbsp;</td>
                <td style="width: 111px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" style="margin-left: 0px" Width="525px" >
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>
