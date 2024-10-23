/*
Copyright © ART-DECOR Expert Group and ART-DECOR Open Tools
see https://art-decor.org/mediawiki/index.php?title=Copyright

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

The full text of the license is available at http://www.gnu.org/licenses/gpl-2.0.html
 */
jQuery(function () {
    var stringCollapse = 'Collapse';
    var stringExpand = 'Expand';
    var column = 0;
    if (window.treeTableStringCollapse != null) {
        stringCollapse = window.treeTableStringCollapse
    };
    if (window.treeTableStringExpand != null) {
        stringExpand = window.treeTableStringExpand
    };
    if (window.treeTableColumn != null) {
        column = window.treeTableColumn
    };
    
    // Enable treetable
    $("#transactionTable").treetable({
        expandable: true, clickableNodeNames: true, initialState: "collapsed", stringCollapse: stringCollapse, stringExpand: stringExpand, column: column
    });
    // Enable treetable on other treetables
    $(".treetable").not(id = "#transactionTable").treetable({
        expandable: true, clickableNodeNames: true, initialState: "collapsed", stringCollapse: stringCollapse, stringExpand: stringExpand, column: column
    });
    
    // Hide column when '[-]' is clicked
    $(".hideMe").click(function (event) {
        event.preventDefault();
        var classname = $(this).parent().attr("class");
        $("." + classname).hide();
        // Enable option in 'Show column' dropdown
        $("#hiddenColumns option[value=" + classname + "]").removeAttr("disabled");
        // Set cookie with hidden columns
        var hiddenColumns = new Array;
        $("#hiddenColumns option:enabled").each(function () {
            hiddenColumns.push($(this).val())
        });
        $.cookie("hiddenColumns", hiddenColumns.join(), {
            expires: 365
        });
    });
    
    // Show column when selected from dropdown
    $('#hiddenColumns').change(function () {
        var classname = $('select#hiddenColumns option:selected').val();
        $("." + classname).show();
        // Disable option in 'Show column' dropdown
        $("#hiddenColumns option[value='" + classname + "']").attr("disabled", "disabled");
        $('#hiddenColumns').val('title');
        // Set cookie with hidden columns
        var hiddenColumns = new Array;
        $("#hiddenColumns option:enabled").each(function () {
            hiddenColumns.push($(this).val())
        });
        $.cookie("hiddenColumns", hiddenColumns.join(), {
            expires: 365
        });
    });
    
    // Expand all groups    
        $(".expandAll").click(function (event) {
        event.preventDefault();
        /*                $("#transactionTable").treetable("expandAll");*/
        $(this).parent().parent().children(".treetable").treetable("expandAll");
    });
    
    // Collapse all groups
    $(".collapseAll").click(function (event) {
        event.preventDefault();
/*        $("#transactionTable").treetable("collapseAll");*/
        $(this).parent().parent().children(".treetable").treetable("collapseAll");
    });
    
    // Create case-insensitive contains
    // from: http://stackoverflow.com/questions/2196641/how-do-i-make-jquery-contains-case-insensitive-including-jquery-1-8
    $.expr[ ":"].Contains = jQuery.expr.createPseudo(function (arg) {
        return function (elem) {
            return jQuery(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
        };
    });
    
    // Search in column 'columName' for text, min 3 chars. Hide all rows, show ones containing text. If len=0, show all rows.
    $("#nameSearch").keyup(function (event) {
        if ($(this).val().length >= 3) { {
                $("#transactionTable tr[data-tt-id]").hide()
            };
            $("#transactionTable td.columnName:Contains('" + $(this).val() + "')").parent().show();
        } else {
            if ($(this).val().length == 0) {
                $("tr").show()
            };
        }
    });
    
    // Sort on column 'columName'
    $("#nameSort").click(function (event) {
        // Create array with all tr/@data-tt-id and name
        var allRows = new Array;
        $("#transactionTable tr[data-tt-id]").each(function () {
            allRows.push({
                id: $(this).attr('data-tt-id'), name: $(this).find('td.columnName').text()
            })
        });
        // Sort the array on name
        allRows.sort(function (a, b) {
            return a.name.toLowerCase() > b.name.toLowerCase()
        });
        // Append to table tbody. First in memory, then append to DOM when finished for performance.
        var newTableBody = $("<tbody/>");
        $.each(allRows, function (index, value) {
            $("#transactionTable tr[data-tt-id='" + value.id + "']").appendTo($(newTableBody))
        });
        $("#transactionTable tbody").remove();
        $(newTableBody).insertAfter($("#transactionTable thead"));
        // Show list view, tree makes no sense when sorted
        if ($("#transactionTable").hasClass("list")) {
        } else {
            toggleTreeList()
        };
    });
    
    // Remove indenters, to make it look like a list. Disable Collapse and Expand buttons
    function toggleTreeList() {
        if ($("#transactionTable").hasClass("list")) {
            //Restore tree view
            $("#expandAll").removeAttr("disabled");
            $("#collapseAll").removeAttr("disabled");
            location.reload();
        } else {
            // Make list view
            $("#transactionTable span.indenter").remove();
            // Disable expand/collapse. Don't disable 'List view' button, if user has filtered before clicking, there still are indented items.
            $("#expandAll").attr("disabled", "disabled");
            $("#collapseAll").attr("disabled", "disabled");
        };
        $("#transactionTable").toggleClass("list")
    };
    
    // Remove indenters, to make it look like a list. Disable Collapse and Expand buttons
    $("#noTree").click(function (event) {
        event.preventDefault();
        toggleTreeList();
    });
    
    // Remove cookies. Reload.
    $("#resetToDefault").click(function (event) {
        event.preventDefault();
        $.removeCookie('hiddenColumns');
        $.removeCookie('dragtable-transactionTable');
        $("#expandAll").removeAttr("disabled");
        $("#collapseAll").removeAttr("disabled");
        location.reload();
    });
    
    // On start, read cookie
    if ($.cookie && $.cookie("hiddenColumns")) {
        // Show all Columns
        $('select#hiddenColumns option').each(function () {
            $("#hiddenColumns option[value='" + $(this).val() + "']").attr("disabled", "disabled");
            $("." + $(this).val()).show();
        });
        // Hide hidden columns from cookie
        hiddenColumns = $.cookie("hiddenColumns").split(",");
        $.each(hiddenColumns, function (index, value) {
            $("." + value).hide();
            $("#hiddenColumns option[value=" + value + "]").removeAttr("disabled");
        });
    };
    
    // when are called with a specific anchor, expand first, and then go to anchor
    if (!(window.treeTableCollapsed == true) || !(window.location.hash == null || window.location.hash.substring(1).length == 0)) {
        try {
            $("#transactionTable").treetable("expandAll")
        }
        catch (err) {
        };
        if (!(window.location.hash == null || window.location.hash.substring(1).length == 0)) {
            window.location = window.location.hash;
        }
    };
});