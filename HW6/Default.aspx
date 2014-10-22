<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.lzimanek_hw6_recipes %>" SelectCommand="SELECT * FROM [lzimanek_hw6_recipes]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sql_recipes">
            <Columns>
                <asp:BoundField DataField="recipeID" HeaderText="recipeID" InsertVisible="False" ReadOnly="True" SortExpression="recipeID" />
                <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="submitted_by" SortExpression="submitted_by" />
                <asp:BoundField DataField="ingredient1" HeaderText="ingredient1" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="ingredient2" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="ingredient3" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="ingredient4" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="ingredient5" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
