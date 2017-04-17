/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    $("#AddClass").hide();
    $("#rcAddClass").click(function () {
        $("#RemoveClass").hide();
        $("#AddFaculty").hide();
        $("#RemoveFaculty").hide();
        $("#AddStudent").hide();
        $("#RemoveStudent").hide();
        $("#updateText").hide();
        $("#AddClass").slideToggle("slow");
    });
});


$(document).ready(function () {
    $("#RemoveClass").hide();
    $("#rcRemoveClass").click(function () {
        $("#AddClass").hide();
        $("#AddFaculty").hide();
        $("#RemoveFaculty").hide();
        $("#AddStudent").hide();
        $("#RemoveStudent").hide();
        $("#updateText").hide();
        $("#RemoveClass").slideToggle("slow");
    });
});

$(document).ready(function () {
    $("#AddFaculty").hide();
    $("#rcAddFaculty").click(function () {
        $("#AddClass").hide();
        $("#RemoveClass").hide();
        $("#RemoveFaculty").hide();
        $("#AddStudent").hide();
        $("#RemoveStudent").hide();
        $("#updateText").hide();
        $("#AddFaculty").slideToggle("slow");
    });
});

$(document).ready(function () {
    $("#RemoveFaculty").hide();
    $("#rcRemoveFaculty").click(function () {
        $("#AddClass").hide();
        $("#RemoveClass").hide();
        $("#AddFaculty").hide();
        $("#AddStudent").hide();
        $("#RemoveStudent").hide();
        $("#updateText").hide();
        $("#RemoveFaculty").slideToggle("slow");
    });
});


$(document).ready(function () {
    $("#AddStudent").hide();
    $("#rcAddStudent").click(function () {
        $("#AddClass").hide();
        $("#RemoveClass").hide();
        $("#AddFaculty").hide();
        $("#RemoveFaculty").hide();
        $("#RemoveStudent").hide();
        $("#updateText").hide();
        $("#AddStudent").slideToggle("slow");
    });
});

$(document).ready(function () {
    $("#RemoveStudent").hide();
    $("#rcRemoveStudent").click(function () {
        $("#AddClass").hide();
        $("#RemoveClass").hide();
        $("#AddFaculty").hide();
        $("#RemoveFaculty").hide();
        $("#AddStudent").hide();
        $("#updateText").hide();
        $("#RemoveStudent").slideToggle("slow");
    });
});
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


