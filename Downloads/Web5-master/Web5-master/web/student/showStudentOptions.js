/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    $("#redcard").hide();
    $("#rcRedCard").click(function () {
        $("#AddDrop").hide();
        $("#coursecatalog").hide();
        $("#grade").hide();
        $("#redcard").slideToggle("slow");
    });
});

$(document).ready(function () {
    $("#grade").hide();
    $("#rcGrade").click(function () {
        $("#coursecatalog").hide();
        $("#redcard").hide();
        $("#AddDrop").hide();
        $("#grade").slideToggle("slow");
    });
});

$(document).ready(function () {
    $("#coursecatalog").hide();
    $("#rcCatalog").click(function () {
        $("#grade").hide();
        $("#redcard").hide();
        $("#AddDrop").hide();
        $("#coursecatalog").slideToggle("slow");
    });
});
$(document).ready(function () {
    $("#AddDrop").hide();
    $("#rcADC").click(function () {
        $("#coursecatalog").hide();
        $("#grade").hide();
        $("#redcard").hide();
        $("#AddDrop").slideToggle("slow");
    });
});