<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw6_recipes %>" DeleteCommand="DELETE FROM [lzimanek_hw6_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [lzimanek_hw6_recipes] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [lzimanek_hw6_recipes]" UpdateCommand="UPDATE [lzimanek_hw6_recipes] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
           
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right; background-color:pink;">
                            Recipe Name:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                       </td>

                         <td style="text-align:left;">
                       </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                            Submitted By:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                            <td style="text-align:left;">
                       </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                            Ingredient 1:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                          <td style="text-align:left;">
                       </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Ingredient 2:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Ingredient 3:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Ingredient 4:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>

                    </tr>
                          <tr>
                        <td style="text-align:right;">
                            Ingredient 5:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Preparation:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                          <td style="text-align:left;">
                       </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>

                        <td style="text-align:left;">
                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>

                        <td style="text-align:left;">
                            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>

                    </tr>

                </table>
               
            </InsertItemTemplate>
           
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
