// Do the async post or get to the right URL and 
// use the .serialize to prepare the data for the server to use.

function submitFrmAjax(){
	alert("test");
   $.ajax({
         url : "/search/results",
         data : $("form#search").serialize()
    });
}