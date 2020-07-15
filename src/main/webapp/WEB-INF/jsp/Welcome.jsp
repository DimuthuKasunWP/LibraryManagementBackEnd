<%--
  Created by IntelliJ IDEA.
  User: kasun
  Date: 7/15/2020
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Librarian Dashboard</title>
    <meta name="generator" content="Bootply"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--[if lt IE 9]> -->
    <script src="../../resources/core/js/jquery.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/core/css/jquery.datetimepicker.min.css"/>
    <script src="../../resources/core/js/build/jquery.datetimepicker.full.min.js"></script>
    <title>Welcome To LMS</title>
    <jsp:include page="header.jsp"/>
</head>
<style>
    .mytext {
        width: 110px;
    }

    #updatebookform, #id1, #id2, #id3 {
        display: inline;
        float: left;
    }

    /*<!-- Making the form awesome --> */
    .form-style-9 {
        max-width: 450px;
        background: #FAFAFA;
        padding: 30px;
        margin: 50px auto;
        box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
        border-radius: 10px;
        border: 6px solid #305A72;
    }

    #label {
        top: 5px;
        box-sizing: border-box;
        position: absolute;
        /*!*background: blue;*!  left: 5%;*/
        width: 1200px;
        /*border:5px solid #990000;*/
        overflow: hidden;
        border-radius: 10px;
        /*background: rgba(60, 85, 100, 0.7);*/
    }

    .form-style-9 ul {
        padding: 0;
        margin: 0;
        list-style: none;
    }

    .form-style-9 ul li {
        display: block;
        margin-bottom: 10px;
        min-height: 35px;
    }

    .form-style-9 ul li .field-style {
        box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        padding: 8px;
        outline: none;
        border: 1px solid #B0CFE0;
        -webkit-transition: all 0.30s ease-in-out;
        -moz-transition: all 0.30s ease-in-out;
        -ms-transition: all 0.30s ease-in-out;
        -o-transition: all 0.30s ease-in-out;
    }

    .form-style-9 ul li .field-style:focus {
        box-shadow: 0 0 5px #B0CFE0;
        border: 1px solid #B0CFE0;
    }

    .form-style-9 ul li .field-split {
        width: 49%;
    }

    .form-style-9 ul li .field-full {
        width: 100%;
    }

    .form-style-9 ul li input.align-left {
        float: left;
    }

    .form-style-9 ul li input.align-right {
        float: right;
    }

    .form-style-9 ul li textarea {
        width: 100%;
        height: 100px;
    }

    .form-style-9 ul li input[type="button"],
    .form-style-9 ul li input[type="submit"] {
        -moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
        -webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
        box-shadow: inset 0px 1px 0px 0px #3985B1;
        background-color: #216288;
        border: 1px solid #17445E;
        display: inline-block;
        cursor: pointer;
        color: #FFFFFF;
        padding: 8px 18px;
        text-decoration: none;
        font: 12px Arial, Helvetica, sans-serif;
    }

    .form-style-9 ul li input[type="button"]:hover,
    .form-style-9 ul li input[type="submit"]:hover {
        background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
        background-color: #28739E;
    }

    /*End form styling*/
    /*Making the modal box awesome*/
    .modal {
        /*//height: 45%;*/
        text-align: center;
        padding: 0 !important;
    }

    .modal-body {
        height: 100%;
    }

    .modal-dialog {
        width: 95%;
        display: inline-block;
        text-align: left;
        vertical-align: middle;
    }

    #viewBooksModal {
        width: 100%;
        left: 23%;
        height: 100%;
        vertical-align: middle;
        /*center: 0%;*/
    }

    #viewBooksContent {
        width: 100%;
        height: auto;
        vertical-align: middle;
    }

    /*End modal styling*/
</style>
<script type="text/javascript" th:inline="javascript">
    displayForms = function (link, formId) {
        // disable subsequent clicks
        link.onclick = function (event) {
            event.preventDefault();
        };
        document.getElementById(formId).style.display = "block";
    };
    $(document).ready(function () {

        $("#addBtn").click(function () {
            $('#addBookModal').modal('show');
        });

        $("#addBtn1").click(function () {
            $('#addBookModal').modal('show');
        });

        $('#homeLink').click(function () {
            window.open('${pageContext.request.contextPath}/lmsdashboard', '_self', false);
        });

        var uemail = '${users.useremail}';
        console.log(uemail);
        var userid = '${users.id}';
        console.log(userid);
        $("#loggedinusername").text(uemail);


        $("#logsBtn").click(function () {
            $('#centerpagecontent').empty();
            var url = "${pageContext.request.contextPath}/book/getAllLibUserBook";
            $.get(url, null, function (data) {
                console.log("here");
                console.log("" + JSON.stringify(data));
                var booksRecord = data;
                $('#centerpagecontent').append('<br><br><p style="text-align: center; font-weight: bold">Books added/updated by all librarians');
                var html = '<br><br><br><div class="table-responsive">' +
                    '<table class="table">' +
                    '<thead>' +
                    '<tr>' +
                    '<th>Book ID </th>' +
                    '<th>Email </th>' +
                    '<th>Action </th>' +
                    '<th>Status </th>' +
                    '<th>ISBN </th>' +
                    '<th>Author </th>' +
                    '<th># of copies </th>' +
                    '<th>Title </th>' +
                    '<th>Status </th>' +
                    '</tr>';
                for (var key in data) {
                    if (data.hasOwnProperty(key)) {
                        if (data.hasOwnProperty(key)) {
                            var val = data[key];
                        }
                        for (var i in val) {
                            html = html + '<tr>';
                            html = html + '<td>' + val[i].bookId + '</td>';
                            html = html + '<td>' + val[i].userName + '</td>';
                            html = html + '<td>' + val[i].action + '</td>';
                            html = html + '<td>' + val[i].status + '</td>';
                            html = html + '<td>' + val[i].isbn + '</td>';
                            html = html + '<td>' + val[i].author + '</td>';
                            html = html + '<td>' + val[i].noOfCopies + '</td>';
                            html = html + '<td>' + val[i].bookName + '</td>';
                            html = html + '<td>' + val[i].status + '</td>';
                            html = html + '</tr>';
                        }
                    }
                }
                html = html + '</table>';
                html = html + '</div>';
                $('#centerpagecontent').append(html);
            });
        });

        $("#viewBooksBtn").click(function () {
            getBooksData();
            $('#viewBooksModal').modal('show');
        });
        $("#viewBooksBtn1").click(function () {
            getBooksData();
            $('#viewBooksModal').modal('show');
        });
        updateBook = function (rowId, bookid, isbn, title, author, publisher, location, callNumber, numberOfCopies, keywords) {
            var html = '';
            html = html + '<br><div id="label">';
            html = html + '<form class="form-group"  id="updatebookform"  method="post"  modelAttribute="book" action="${pageContext.request.contextPath}/book/updatebook">';
            html = html + '<tr id = ' + bookid + '>';
            html = html + '<td id="td1"><input type="text" style="width: 35px"  name="bookId" value=' + bookid + '  readonly ></td>';
            html = html + '<td id="td2"><input type="txt" style="width: 120px" name="isbn" value=\"' + isbn + '\"' + ' readonly></td>';
            html = html + '<td id="td3"><input type="text" class="mytext" name="title" value=\"' + title + '\"' + '></td>';
            html = html + '<td id="td4"><input type="text" class="mytext" name="author" value=\"' + author + '\"' + '></td>';
            html = html + '<td id="td5"><input type="text" class="mytext" name="publisher" value=\"' + publisher + '\"' + '></td>';
            html = html + '<td id="td6"><input type="text" class="mytext" name="location" value=\"' + location + '\"' + '></td>';
            html = html + '<td id="td7"><input type="text" class="mytext" size="10" name="callnumber" value=\"' + callNumber + '\"' + '></td>';
            html = html + '<td id="td8"><input type="number" min="0" class="mytext" name="num_of_copies" value=' + numberOfCopies + '></td>';
            html = html + '<td id="td9"><input type="text" class="mytext" name="keywords" value=\"' + keywords + '\"' + '></td>';
            html = html + '<td>' + '  <button class="btn btn-info" id=' + bookid + ' onClick="updateBook(\'' + bookid + '\',\'' + bookid + '\',\'' + isbn + '\',\'' + title + '\',\'' + author + '\',\'' + publisher + '\',\'' + location + '\',\'' + callNumber + '\',\'' + numberOfCopies + '\',\'' + keywords + '\')">Edit</button> <button type="submit" class="btn btn-success" id="updateBookFromUI" >Update</button>' + '</td>';
            html = html + '</tr>';
            html = html + '</form>';
            html = html + '</div>';
            row = $('#' + rowId);
            row.replaceWith(html);
        };
        getBooksData = function () {
            var url = "${pageContext.request.contextPath}/book/searchAllBooks";
            $.get(url, null, function (data) {
                console.log("here");
                console.log("" + data);
                var mymodal = $('#viewBooksModal');
                mymodal.find('.modal-body').text('');
                var jsonData = data;
                console.log(jsonData.length);
                console.log(jsonData);
                var html = '<br><br><br><div class="table-responsive">' +
                    '<table class="table">' +
                    '<thead>' +
                    '<tr>' +
                    '<th>ID </th>' +
                    '<th>ISBN </th>' +
                    '<th>Title </th>' +
                    '<th>Author </th>' +
                    '<th>Publisher </th>' +
                    '<th>Location </th>' +
                    '<th>Call Number </th>' +
                    '<th>No. of copies </th>' +
                    '<th>Keywords</th>' +
                    '<th align="center" >Actions</th>' +
                    '</tr>';
                for (i = 0; i < jsonData.length; i++) {
                    //console.log("title string"+JSON.stringify(jsonData[i]));
                    html = html + '<tr id = ' + jsonData[i].bookId + '>';
                    html = html + '<td >' + jsonData[i].bookId + '</td>';
                    html = html + '<td>' + jsonData[i].isbn + '</td>';
                    html = html + '<td>' + jsonData[i].title + '</td>';
                    html = html + '<td>' + jsonData[i].author + '</td>';
                    html = html + '<td>' + jsonData[i].publisher + '</td>';
                    html = html + '<td>' + jsonData[i].location + '</td>';
                    html = html + '<td>' + jsonData[i].callNumber + '</td>';
                    html = html + '<td>' + jsonData[i].numberOfCopies + '</td>';
                    html = html + '<td>' + jsonData[i].keywords + '</td>';
                    var singleObj = jsonData[i];
                    html = html + '<td>' + '  <button class="btn btn-info" id=' + jsonData[i].bookId + ' onClick="updateBook(\'' + jsonData[i].bookId + '\',\'' + jsonData[i].bookId + '\',\'' + jsonData[i].isbn + '\',\'' + jsonData[i].title + '\',\'' + jsonData[i].author + '\',\'' + jsonData[i].publisher + '\',\'' + jsonData[i].location + '\',\'' + jsonData[i].callNumber + '\',\'' + jsonData[i].numberOfCopies + '\',\'' + jsonData[i].keywords + '\')">Edit</button> <button onClick="return updatebookdetails();" class="btn btn-success" id="updateBookFromUI" >Update</button>' + '</td>';
                    html = html + '</tr>';
                }
                html = html + '</table>';
                html = html + '</div>';
                mymodal.find('.modal-body').append(html);
            });
        };
        $("#searchBtn").click(function () {
            $('#searchBooksModal').modal('show');
        });
        $("#searchBtn1").click(function () {
            $('#searchBooksModal').modal('show');
        });
        clock_popup();
    });

    function clock_popup() {
        console.log("From the function clock_popup");
        jQuery('#datetimepicker').datetimepicker()
    }
</script>
<body>
<h2 style="text-align: center">Welcome To Library Management System </h2>

<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <%--<a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Tools</strong></a>--%>

            <hr>

<%--            <ul class="nav nav-stacked">--%>
<%--                <li class="nav-header"><a href="#" data-toggle="collapse" data-target="#userMenu">Settings <i--%>
<%--                        class="glyphicon glyphicon-chevron-down"></i></a>--%>
<%--                    <ul class="nav nav-stacked collapse in" id="userMenu">--%>
<%--                        <li class="active"><a id="homeLink" href="#"><i class="glyphicon glyphicon-home"></i> Home</a>--%>
<%--                        </li>--%>
<%--                        <li><a id="addBtn1" href="#"><i class="glyphicon glyphicon-plus-sign"></i> Add a Book</a></li>--%>
<%--                        <li><a id="logsBtn" href="#"><i class="glyphicon glyphicon-flag"></i> Librarian Logs</a></li>--%>
<%--                        <li><a id="searchBtn1" href="#"><i class="glyphicon glyphicon-search"></i> Search a Book</a>--%>
<%--                        </li>--%>
<%--                        &lt;%&ndash;<li><a href="#"><i class="glyphicon glyphicon-remove"></i> Remove a Book</a></li>&ndash;%&gt;--%>
<%--                        <li><a id="viewBooksBtn1" href="#"><i class="glyphicon glyphicon-list"></i> View all books</a>--%>
<%--                        </li>--%>
<%--                        <li><a href="#"><i class="glyphicon glyphicon-flag"></i> Transactions</a></li>--%>
<%--                        <li><a href="${userlogout}"><i class="glyphicon glyphicon-off"></i> Logout</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--            </ul>--%>

            <hr>

            <hr>

            <hr>
        </div>
        <div class="row">
            <!-- center left-->
            <div id="centerpagecontent" class="col-md-6">
                <div style="font-weight: bold; text-align: center; vertical-align: middle" class="well">
                    <i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;Manage Books
                </div>

                <hr>

                <!-- Modal for adding books-->
<%--                <div class="modal fade" id="addBookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"--%>
<%--                     aria-hidden="true">--%>
<%--                    <div class="modal-dialog">--%>
<%--                        <div class="modal-content" id="addBookContent">--%>
<%--                            <div class="modal-header">--%>
<%--                                <button type="button" class="close" data-dismiss="modal"--%>
<%--                                        aria-hidden="true">&times;</button>--%>
<%--                                <h4 class="modal-title" id="myModalLabel">Add a new book to LMS</h4>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>
<%--                                <!-- Add forms here -->--%>
<%--                                <ul class="nav nav-tabs" id="tabContent" data-tabs="tabs">--%>
<%--                                    <li>--%>
<%--                                        <a href="#" id="simpleadd" data-toggle="tab"--%>
<%--                                           onclick="displayForms(this,'simpleaddform');">Add via--%>
<%--                                            ISBN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="#" id="advancedadd" data-toggle="tab"--%>
<%--                                           onclick="displayForms(this,'advancedaddform');">Advanced--%>
<%--                                            add--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                                <div id="my-tab-content" class="tab-content">--%>
<%--                                    <div class="tab-pane active" id="a">--%>
<%--                                        <form:form class="form-style-9" method="post"--%>
<%--                                                   action="${pageContext.request.contextPath}/book/addBook/"--%>
<%--                                                   modelAttribute="book" name="simpleaddform" id="simpleaddform"--%>
<%--                                                   style="display: none">--%>
<%--                                            <ul>--%>
<%--                                                <li>--%>
<%--                                                    <input type="text" id="isbn"--%>
<%--                                                           class="field-style field-full align-none" name="isbn"--%>
<%--                                                           placeholder="ISBN" required>--%>
<%--                                                </li>--%>
<%--                                                <li>--%>
<%--                                                    <input type="text" name="callnumber" size="10"--%>
<%--                                                           class="field-style field-split align-left"--%>
<%--                                                           placeholder="Call Number" required/>--%>
<%--                                                    <input type="text" name="location"--%>
<%--                                                           class="field-style field-split align-right"--%>
<%--                                                           placeholder="Location" required/>--%>
<%--                                                </li>--%>
<%--                                                <li>--%>
<%--                                                    <input type="number" min="1" name="num_of_copies"--%>
<%--                                                           class="field-style field-split align-left"--%>
<%--                                                           placeholder="# of copies" required/>--%>
<%--                                                    <input type="text" name="keywords"--%>
<%--                                                           class="field-style field-split align-right"--%>
<%--                                                           placeholder="Keywords" required/>--%>
<%--                                                    <select class="selectpicker" name="current_status"--%>
<%--                                                            data-style="btn-info" required>--%>
<%--                                                        <option>Available</option>--%>
<%--                                                        <option>Hold</option>--%>
<%--                                                        <option>Wait-Listed</option>--%>
<%--                                                    </select>--%>

<%--                                                </li>--%>
<%--                                                <li>--%>
<%--                                                    <input type="submit" value="Add Book"/>--%>
<%--                                                </li>--%>
<%--                                            </ul>--%>
<%--                                        </form:form>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="tab-pane" id="b">--%>

<%--                                    <form:form class="form-style-9" method="post"--%>
<%--                                               action="${pageContext.request.contextPath}/book/addBook/"--%>
<%--                                               modelAttribute="book" id="advancedaddform" style="display: none">--%>
<%--                                        <ul>--%>
<%--                                            <li>--%>
<%--                                                <input type="text" class="field-style field-split align-left"--%>
<%--                                                       name="isbn" placeholder="ISBN" required>--%>
<%--                                                <input type="text" name="title"--%>
<%--                                                       class="field-style field-split align-right" placeholder="Title"--%>
<%--                                                       required/>--%>
<%--                                            </li>--%>
<%--                                            <li>--%>
<%--                                                <input type="text" name="author"--%>
<%--                                                       class="field-style field-split align-left" placeholder="Author"--%>
<%--                                                       required/>--%>
<%--                                                <input type="text" name="publisher"--%>
<%--                                                       class="field-style field-split align-right"--%>
<%--                                                       placeholder="Publisher" required/>--%>
<%--                                            </li>--%>
<%--                                            <li>--%>
<%--                                                <input type="text" name="year_of_publication"--%>
<%--                                                       class="field-style field-split align-left"--%>
<%--                                                       placeholder="Publication Year" required/>--%>
<%--                                                <input type="text" name="location"--%>
<%--                                                       class="field-style field-split align-left"--%>
<%--                                                       placeholder="Library Location" required/>--%>
<%--                                            </li>--%>
<%--                                            <li>--%>
<%--                                                <input type="number" min="1" name="num_of_copies"--%>
<%--                                                       class="field-style field-split align-left"--%>
<%--                                                       placeholder="# of Copies" required/>--%>
<%--                                                <input type="text" name="callnumber" size="10"--%>
<%--                                                       class="field-style field-split align-left"--%>
<%--                                                       placeholder="Call Number" required/>--%>
<%--                                            </li>--%>
<%--                                            <li>--%>
<%--                                                <select class="selectpicker" name="current_status"--%>
<%--                                                        data-style="btn-info" required>--%>
<%--                                                    <option>Available</option>--%>
<%--                                                    <option>Hold</option>--%>
<%--                                                    <option>Wait-Listed</option>--%>
<%--                                                </select>--%>
<%--                                                <input type="text" name="keywords"--%>
<%--                                                       class="field-style field-full align-none"--%>
<%--                                                       placeholder="Keywords" required/>--%>
<%--                                            </li>--%>

<%--                                            <li>--%>
<%--                                                <input type="submit" value="Add Book"/>--%>
<%--                                            </li>--%>
<%--                                        </ul>--%>
<%--                                    </form:form>--%>
<%--                                </div>--%>
<%--                                &lt;%&ndash;</div>&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                            <div class="modal-footer">--%>
<%--                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--                                &lt;%&ndash;<button type="button" class="btn btn-primary">Add Book </button>&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <!-- END: Modal for adding books-->

                <!-- Modal for viewing books -->
                <div class="modal fade" id="viewBooksModal" tabindex="-1" role="dialog"
                     aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" id="viewBooksContent">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="viewbooksmodalid">List of all the books in LMS</h4>
                            </div>
                            <div class="modal-body">
                                <c:forEach var="book" items="${books}">
                                    <tr>
                                        <td>${book.isbn}</td>
                                        <td>${book.title}</td>
                                        <td>${book.author}</td>
                                        <td>${book.current_status}</td>
                                    </tr>
                                </c:forEach>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <%--<button type="button" class="btn btn-primary">Add Book </button>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Modal for viewing books -->

<%--                <div class="modal fade" id="searchBooksModal" tabindex="-1" role="dialog"--%>
<%--                     aria-labelledby="myModalLabel"--%>
<%--                     aria-hidden="true">--%>
<%--                    <div class="modal-dialog">--%>
<%--                        <div class="modal-content" id="searchBooksContent">--%>
<%--                            <div class="modal-header">--%>
<%--                                <button type="button" class="close" data-dismiss="modal"--%>
<%--                                        aria-hidden="true">&times;</button>--%>
<%--                                <h4 class="modal-title" id="searchbooksmodalid">Search Books</h4>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>
<%--                                <form:form class="form-style-9" method="post"--%>
<%--                                           action="${pageContext.request.contextPath}/user/searchBook"--%>
<%--                                           modelAttribute="book" id="searchbooksform">--%>
<%--                                    <ul>--%>
<%--                                        <li>--%>
<%--                                            <input type="text" class="field-style field-split align-left"--%>
<%--                                                   name="isbn" placeholder="ISBN">--%>
<%--                                            <input type="text" name="title"--%>
<%--                                                   class="field-style field-split align-right" placeholder="Title"/>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <input type="text" name="author"--%>
<%--                                                   class="field-style field-split align-left" placeholder="Author"/>--%>
<%--                                            <input type="text" name="publisher"--%>
<%--                                                   class="field-style field-split align-right"--%>
<%--                                                   placeholder="Publisher"/>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <input type="text" name="year_of_publication"--%>
<%--                                                   class="field-style field-split align-left"--%>
<%--                                                   placeholder="Publication Year"/>--%>
<%--                                            <input type="text" name="location"--%>
<%--                                                   class="field-style field-split align-left"--%>
<%--                                                   placeholder="Library Location"/>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <input type="number" min="1" name="num_of_copies"--%>
<%--                                                   class="field-style field-split align-left"--%>
<%--                                                   placeholder="# of Copies"/>--%>
<%--                                            <input type="text" name="callnumber" size="10"--%>
<%--                                                   class="field-style field-split align-left"--%>
<%--                                                   placeholder="Call Number"/>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <select class="selectpicker" name="current_status"--%>
<%--                                                    data-style="btn-info">--%>
<%--                                                <option>Available</option>--%>
<%--                                                <option>Hold</option>--%>
<%--                                                <option>Wait-Listed</option>--%>
<%--                                            </select>--%>
<%--                                                &lt;%&ndash;<input type="text" name="keywords"&ndash;%&gt;--%>
<%--                                                &lt;%&ndash;class="field-style field-full align-none"&ndash;%&gt;--%>
<%--                                                &lt;%&ndash;placeholder="Keywords"/>&ndash;%&gt;--%>
<%--                                        </li>--%>

<%--                                        <li>--%>
<%--                                            <input type="submit" value="Search now"/>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </form:form>--%>
<%--                            </div>--%>
<%--                            <div class="modal-footer">--%>
<%--                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


                <div class="btn-group btn-group-justified">
                    <a id="addBtn" href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-plus"></i>
                        <br> Add
                    </a>
                    <a href="#" id="searchBtn" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-search"></i>
                        <br> Search
                    </a>
                    <%--<a href="#" class="btn btn-primary col-sm-3">--%>
                    <%--<i class="glyphicon glyphicon-remove"></i>--%>
                    <%--<br> Remove--%>
                    <%--</a>--%>
                    <a id="viewBooksBtn" href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-list"></i>
                        <br> List
                    </a>
                </div>

                <hr>

                <div id="reportsdata" class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Reports</h4></div>

                    <div class="panel-body">

                        <small>Available</small>
                        <div class="progress">
                            <div id="availablecount" class="progress-bar progress-bar-success" role="progressbar"
                                 aria-valuenow=${availablecount} aria-valuemin="0" aria-valuemax="100"
                                 style="width: 70%">
                                <span class="sr-only"></span>
                            </div>
                        </div>
                        <small>Hold</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar"
                                 aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>
                        <small>WaitListed</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                                 aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                <span id="" class="sr-only">60% Complete (warning)</span>
                            </div>
                        </div>
                        <small>Failures</small>
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"
                                 aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete</span>
                            </div>
                        </div>
                    </div>
                    <!--/panel-body-->
                </div>
                <!--/panel-->
                <hr>
            </div>
            <!--/row-->

            <hr>

        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<%--<footer class="text-center">Credits: This Bootstrap 3 dashboard layout is compliments of <a--%>
<%--href="http://www.bootply.com/85850"><strong>Bootply.com</strong></a></footer>--%>

<%--<div class="modal" id="addWidgetModal">--%>
<%--<div class="modal-dialog">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
<%--<h4 class="modal-title">Add Widget</h4>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<p>Add a widget stuff here..</p>--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<a href="#" data-dismiss="modal" class="btn">Close</a>--%>
<%--<a href="#" class="btn btn-primary">Save changes</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- /.modal-content -->--%>
<%--</div>--%>
<%--<!-- /.modal-dalog -->--%>
<%--</div>--%>
<!-- /.modal -->
<!-- script references -->


<%--<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
<%--<script src="js/scripts.js"></script>--%>
<%--<link rel="stylesheet" type="text/css" href="../../../resources/core/css/jquery.datetimepicker.min.css"/>--%>
<%--<script src="../../../resources/core/js/jquery.js"></script>--%>
<jsp:include page="footer.jsp"/>
</body>
</html>
