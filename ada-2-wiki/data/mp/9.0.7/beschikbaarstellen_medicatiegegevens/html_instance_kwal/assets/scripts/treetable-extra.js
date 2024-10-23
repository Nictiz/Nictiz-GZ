jQuery(function () {
    $("#transactionTable").treetable({ expandable: true });
    $("#transactionTable").treetable("expandAll");

    $(".hideMe").click(function (event) {
        event.preventDefault();
        var classname = $(this).parent().attr("class");
        $("." + classname).hide();
        $("#hiddenColumns option[value=" + classname + "]").removeAttr("disabled");
    });

    $('#hiddenColumns').change(function() {
        var classname = $('#hiddenColumns option:selected').val();
        $("." + classname).show();
        $("#hiddenColumns option[value='" + classname + "']").attr("disabled", "disabled");
        $('#hiddenColumns').val('title');
    });

    $("#expandAll").click(function (event) {
        event.preventDefault();
        $("#transactionTable").treetable("expandAll");
    });

    $("#collapseAll").click(function (event) {
        event.preventDefault();
        $("#transactionTable").treetable("collapseAll");
    });

    $("#collapseCodes").click(function (event) {
        event.preventDefault();
        $(".conceptList").each(function (idx) {
            $("#transactionTable").treetable("collapseNode", $(this).attr("data-tt-parent-id"));
        });
    });

    $("#expandCodes").click(function (event) {
        event.preventDefault();
        $(".conceptList").each(function (idx) {
            $("#transactionTable").treetable("expandNode", $(this).attr("data-tt-parent-id"));
        });
    });
});                    
            
