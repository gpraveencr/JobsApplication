<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JOBSTrackr</title>
    <link rel="icon" type="image/png" href="favicon.png"/>
    <spring:url value="/resources/core/css/style.css" var="styleCss" />
    <link href="${styleCss}" rel="stylesheet">
 
	<c:url var="home" value="/" scope="request" />
	 
	<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
	<link href="${bootstrapCss}" rel="stylesheet" /> 
	
	<spring:url value="/resources/core/js/jquery.1.10.2.min.js" var="jqueryJs" />
	<script src="${jqueryJs}"></script>
</head>
<body>
<div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">
                <span class="glyphicon glyphicon-film"></span>
                JOBS<strong>Trackr</strong></a>
        </div>
        <ul class="nav navbar-nav">
            <li data-match-route="/$"><a href="/JobsApplicationWeb/">Home</a></li>
            <li data-match-route="/add"><a href="/add">Add</a></li>
        </ul>
        <ul class="nav navbar-nav pull-right">
            <li data-match-route="/login"><a href="/login">Login</a></li>
            <li data-match-route="/signup"><a href="/signup">Sign up</a></li>
        </ul>
        <!-- <ul class="nav navbar-nav pull-right">
            <li class="navbar-text" ng-bind="currentUser.email"></li>
            <li><a href="javascript:void(0)" ng-click="logout()">Logout</a></li>
        </ul> -->
</div> 
<div class="jumbotron">
    <div class="container">
        <ul class="alphabet">
            <li ng-repeat="char in alphabet">
                <span ng-click="filterByAlphabet(char)">{{char}}</span>
            </li>
        </ul>
        <ul class="genres">
            <li ng-repeat="genre in genres">
                <span ng-click="filterByGenre(genre)">{{genre}}</span>
            </li>
        </ul>
</div>
<div class="container">

      
</div>
<script>
	jQuery(document).ready(function($) {

		$("#search-form").submit(function(event) {

			// Disble the search button
			enableSearchButton(false);

			// Prevent the form from submitting via the browser.
			event.preventDefault();

			searchViaAjax();

		});
		
		function distinctTitles() { 
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "http://localhost:8080/JobsLookupService/jobs/titles",
				data : JSON.stringify(search),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					display(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					display(e);
				},
				done : function(e) {
					console.log("DONE");
					enableSearchButton(true);
				}
			}); 
		}

	});

	function searchViaAjax() {

		var search = {}
		search["title"] = $("#keywords").val();
		/* search["email"] = $("#email").val(); */

		$.ajax({
			type : "GET",
			contentType : "application/json",
			url : "http://localhost:8080/JobsLookupService/jobs/title?title=",
			data : JSON.stringify(search),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				display(data);
			},
			error : function(e) {
				console.log("ERROR: ", e);
				display(e);
			},
			done : function(e) {
				console.log("DONE");
				enableSearchButton(true);
			}
		}); 
	}

	function enableSearchButton(flag) {
		$("#btn-search").prop("disabled", flag);
	}

	function display(data) {
		var json = "<h4>Ajax Response</h4><pre>"
				+ JSON.stringify(data, null, 4) + "</pre>";
		$('#feedback').html(json);
	}
</script>	

</body>
</html>