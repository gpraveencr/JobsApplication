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
	<spring:url value="/resources/core/css/appcss.css" var="appCss" />
	<link href="${appCss}" rel="stylesheet" /> 
	
	<spring:url value="/resources/core/js/jquery.1.10.2.min.js" var="jqueryJs" />
	<script src="${jqueryJs}"></script>
	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootStrapJs" />
	<script src="${bootStrapJs}"></script>
	<spring:url value="/resources/core/js/appscript.js" var="appJs" />
	<script src="${appJs}"></script>
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
<div class="jumbotron" id="titles"> 

</div>
<div class="container">

      
</div>

</body>
</html>