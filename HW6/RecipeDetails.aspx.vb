
Partial Class RecipeDetails
    Inherits System.Web.UI.

    Protected Sub FormView1_Load(sender As Object, e As EventArgs) Handles FormView1.Load
        FormView1.Focus()
    End Sub
    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedRecipe As String = e.Values("recipe_nameLabel").ToString()

        lblDeletedRecipe.Text = deletedRecipe & "has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./AllRecipes.aspx")
    End Sub


    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=.AllRecipes.aspx")
    End Sub

   
End Class



