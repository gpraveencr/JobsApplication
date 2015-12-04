<!DOCTYPE html>
<html>
<head>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ShowTrackr</title>
    <link rel="icon" type="image/png" href="favicon.png"/>
    <link href="stylesheets/style.css" rel="stylesheet">
 
</head>
<body>
<div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">
                <span class="glyphicon glyphicon-film"></span>
                JOBS<strong>Trackr</strong></a>
        </div>
        <ul class="nav navbar-nav">
            <li data-match-route="/$"><a href="/">Home</a></li>
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

	

</body>
</html>