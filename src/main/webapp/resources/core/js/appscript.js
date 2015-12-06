
jQuery(document).ready(function($) {

	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "http://localhost:8080/JobsLookupService/jobs/titles",
		data : JSON.stringify(),
		dataType : 'json',
		timeout : 100000,
		success : function(data) {
//			console.log("SUCCESS: ", data);
			data.forEach(function(dt) {
				makeDiv(dt);
			});
		},
		error : function(e) {
			console.log("ERROR: ", e);

		},
		done : function(e) {
			console.log("DONE");
		}
	});
	
	$("#search-form").submit(function(event) { 
		console.log("searchForm()");
		event.preventDefault();
		searchForm(); 
	});
	
});

function searchForm() {

	var search = {}
	search["search-title"] = $("#search-title").val();
	search["search-zip"] = $("#search-zip").val();  
	searchFormAjaxRequest(search["search-title"]);
}

function searchFormAjaxRequest(title) {
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "http://localhost:8080/JobsLookupService/jobs/title?title="+title,
		data : JSON.stringify(),
		dataType : 'json',
		timeout : 100000,
		success : function(data) {
			console.log("searchForm SUCCESS: ", data); 
			var searchResults = "<h4>Ajax Response</h4><pre>"+ JSON.stringify(data, null, 4) + "</pre>";
			$("#search-results").html(searchResults);
		},
		error : function(e) {
			console.log("ERROR: ", e);

		},
		done : function(e) {
			console.log("DONE");
		}
	});
}

function makeDiv(title){

    $newdiv = $('<div/>').text(title); 
    var height_high = 97;
    var height_low = 52;
    var width = 1192;
    var height_range = height_high - height_low + 1;

    var posx = (Math.random() * (width));
    var posy = (Math.random() * (height_range)) + height_low;

    $newdiv.onclick = function() {
    	searchFormAjaxRequest(title);
    }
    $newdiv.css({
        'position':'absolute',
        'left':posx+'px',
        'top':posy+'px',
        'display':'none'
    }).appendTo( 'body' ).fadeIn(100);
} 