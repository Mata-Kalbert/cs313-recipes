function searchRecipe() {
    console.log("Searching by id...");
    var id = $("#id").val();
    console.log("id: " + id);
    $.get('/getRecipes', {id:id}, function(data) {
        console.log("Back from the server with:");
        console.log(data);
        $("#h2recipetitle").append("Your Recipe");
        $("#h2recipe").append(data[0].recipe_name);
        for (var i = 0; i < data.length; i++) {
            var recipe = data[i];
            /* Fix repeats
            if (textingredient.ingredient_name != recipe.ingredient_name) {
            $("#ulrecipe").append("<li>" + recipe.ingredient_qty + " " + recipe.ingredient_name + "</li>");
            textingredient.ingredient_name.push(recipe.ingredient_name[i]);
        }*/
            $("#ulrecipe").append("<li>" + recipe.ingredient_qty + " " + recipe.ingredient_name + "</li>");
            $("#ulrecipesteps").append("<li>" + recipe.direction_number + " " + recipe.direction_text + "</li>");
        }
    })
}
function addItem() {
    console.log("Adding item...");
    var qty = $("#qty").val();
    console.log("Quantity: " + qty);
    var item = $("#item").val();
    console.log("Item: " + item);
    $.post('/insertItem', {qty:qty, item:item}, function() {
        console.log("Back from the server");
        $("#thanksp").append("Thanks for adding a recipe!");
    })
}
function seeList() {
    console.log("Finding list...");
    $.get('/getList', function(data) {
        console.log("Back from the server with:");
        console.log(data);
        $("#listh2").append("Your Shopping List");
        for (var i = 0; i < data.length; i++) {
            var list = data[i];
            $("#listul").append("<li>" + list.item_qty + " " + list.item_name + "</li>");
        }
    })
}