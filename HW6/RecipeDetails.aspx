<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw6_recipes %>" DeleteCommand="DELETE FROM [lzimanek_hw6_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [lzimanek_hw6_recipes] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [lzimanek_hw6_recipes] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [lzimanek_hw6_recipes] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
        <span class="deletedRecipe>"<asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
           
            <ItemTemplate>

                 <table>
                     <tr>
                        <td style="text-align:right; background-color:pink;">
                            Recipe ID:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_recipeID" runat="server" Text='<%# Eval("recipeID") %>' />
                       </td>

                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the recipe name." CssClass=".validationError" ControlToValidate="tb_recipeName"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                     <tr>
                        <td style="text-align:right; background-color:pink;">
                            Recipe Name:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_recipeName" runat="server" Text='<%# Bind("recipe_name") %>' />
                       </td>

                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter the recipe name." CssClass=".validationError" ControlToValidate="tb_recipeName"></asp:RequiredFieldValidator>
                       </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                            Submitted By:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_submittedBy" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                            <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_submittedBy" runat="server" ErrorMessage="Please enter your name." CssClass=".validationError" ControlToValidate="tb_submittedBy"></asp:RequiredFieldValidator>
                       </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                            Ingredient 1:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_ingred1" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                          <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_ingred1" runat="server" ErrorMessage="Please enter an ingredient." CssClass=".validationError" ControlToValidate="tb_ingred1"></asp:RequiredFieldValidator>
                       </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Ingredient 2:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_ingred2" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Ingredient 3:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_ingred3" runat="server" Text='<%# Bind("ingredient3") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Ingredient 4:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_ingred4" runat="server" Text='<%# Bind("ingredient4") %>' />
                        </td>

                    </tr>
                          <tr>
                        <td style="text-align:right;">
                            Ingredient 5:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_ingred5" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Preparation:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_prep" runat="server" Text='<%# Bind("preparation") %>' />
                        </td>
                          <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter the preparation instructions." CssClass=".validationError" ControlToValidate="tb_prep"></asp:RequiredFieldValidator>
                       </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>

                        <td style="text-align:left;">
                            <asp:Label ID="lbl_notes" runat="server" Text='<%# Bind("notes") %>' />
                        </td>

                    </tr>
                      <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="btn_Edit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </td>

                        <td style="text-align:left;">
                            <asp:Button ID="btn_Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </td>

                    </tr>

                </table>
                              
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
