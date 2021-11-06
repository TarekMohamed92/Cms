function openProduct(xthis)
{

    document.getElementById("ProTitle").innerHTML = $(xthis).data("title");
    document.getElementById("ProImage").src = $(xthis).data("img");
    document.getElementById("ProDesc").innerHTML = $(xthis).data("desc");

}

function openNew(xthis) {

    document.getElementById("newTitle").innerHTML = $(xthis).data("title");
    document.getElementById("newImg").src = $(xthis).data("img");
    document.getElementById("newDesc").innerHTML = $(xthis).data("desc");

}