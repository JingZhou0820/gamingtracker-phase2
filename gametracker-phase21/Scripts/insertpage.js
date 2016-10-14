function showAddForm() {
    document.getElementById("detailAddform").style.display = "block";

}

var chooseButton = document.getElementById("selectButton");

chooseButton.addEventListener("click", showAddForm);