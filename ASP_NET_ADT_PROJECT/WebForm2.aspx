<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASP_NET_ADT_PROJECT.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 1198px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" ForeColor="White" BackColor="#0099FF" Font-Bold="True">
                                <Items>
                                    <asp:MenuItem Text="HOME" Value="HOME" NavigateUrl="~/WebForm2.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="ALL PRODUCTS" Value="ALL PRODUCTS"></asp:MenuItem>
                                    <asp:MenuItem Text="REGISTRATION " Value="REGISTRATION "></asp:MenuItem>
                                    <asp:MenuItem Text="USER LOGIN" Value="USER LOGIN"></asp:MenuItem>
                                    <asp:MenuItem Text="ABOUT US" Value="ABOUT US"></asp:MenuItem>
                                    <asp:MenuItem Text="CONTACT US" Value="CONTACT US"></asp:MenuItem>
                                </Items>
                                <StaticHoverStyle BackColor="#FF6666" BorderColor="#FF6666" BorderStyle="Outset" />
                                <StaticMenuItemStyle HorizontalPadding="40px" />
                                <StaticSelectedStyle BackColor="#FF5050" BorderColor="#FF6666" BorderStyle="Inset" />
                            </asp:Menu>
    <table class="auto-style12">
        <tr style="background-color:#5f98f3">
            <td colspan="2" Style="text-align:right">
                <asp:Label ID="Label3" runat="server" Style="text-align:left"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Click To Login</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="Lime" BorderColor="White" Font-Bold="True" Font-Size="15px" />
            </td>
            <td style=" text-align:right">
                <asp:TextBox ID="TextBox1" runat="server" Height="19px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="27px" ImageUrl="~/images/searching img.png" OnClick="ImageButton4_Click" style="width: 25px" />
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="100px" RepeatDirection="Horizontal" Width="1125px" RepeatColumns="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
           <table>
               <tr>
                   <td style="text-align:center;background-color:#5f98f3">
                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td style="text-align:center;width:fit-content" >
                       <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pimage") %>' Height="250px" Width="400px" />   
                   </td>
               </tr>
                <tr>
                   <td style="text-align:center;background-color:#5f98f3">
                       <asp:Label ID="Label2" runat="server" Text="price:RS"></asp:Label>
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td style="align-items:center">quantity
                       <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>1</asp:ListItem>
                           <asp:ListItem>2</asp:ListItem>
                           <asp:ListItem>3</asp:ListItem>
                           <asp:ListItem>4</asp:ListItem>
                           <asp:ListItem>5</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
                <tr>
                   <td style="text-align:center">
                       <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/add to cart.jpg" Height="30px" Width="100px" CommandArgument='<%# Eval("productid") %>' CommandName="AddToCart"/>
                   </td>
               </tr>
           </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recorddbConnectionString %>" SelectCommand="SELECT [productid], [pname], [pimage], [pprice] FROM [product_table]"></asp:SqlDataSource>
    
                        </asp:Content>

