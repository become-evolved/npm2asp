<script runat="server" language="javascript">

// Defining `__chakra_htmlfile__` as a global object is required to avoid too early GC.
__chakra_htmlfile__ = new ActiveXObject("HTMLFile");
__chakra_htmlfile__.charset = "UTF-8";
(function(){
	function load_text_file(filespec) {
		with ( new ActiveXObject("ADODB.Stream") ) {
			type = adTypeText;
			mode = adModeReadWrite;
			charset = "UTF-8";
			open();
			loadFromFile(filespec);
			var txt = readText();
			close();
		}
		return txt;
	}

	__chakra_htmlfile__.write('<meta http-equiv="X-UA-Compatible" content="IE=EDGE" />');
	__chakra_htmlfile__.write('<'+'script charset="utf-8">');
	__chakra_htmlfile__.write( load_text_file( Server.mapPath("/lib/packages.js") ) );
	__chakra_htmlfile__.write('</'+'script>');
}());

var window = __chakra_htmlfile__.parentWindow;

JSON = window.JSON;
eval( window.Object.keys( window.npm2asp ).map( function(lib) {
	return lib + " = window.npm2asp." + lib + ";"
} ).join("") );

// IMPORTANT: Never ever bind events between the DOM Engine (Trident/MSHTML) and the Javascript Engine. They don't know each other GC Semantics and will cause memory leaks. Check <http://milan.adamovsky.com/2012/02/javascript-memory-leaks-in-internet.html> and <https://blogs.msdn.microsoft.com/ericlippert/2003/09/17/how-do-the-script-garbage-collectors-work/>
function free__chakra_htmlfile__() {
	eval( window.Object.keys( window.npm2asp ).map( function(lib) {
		return lib + " = null;"
	} ).join("") );
	JSON = null;

	window.npm2asp = null;
	window.CollectGarbage();

	window = null;

	// To clear all elements in the current document, use IHTMLDocument2::write(""), followed by IHTMLDocument2::close.
	// <https://docs.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa752567(v%3dvs.85)>
	__chakra_htmlfile__.write('');
	__chakra_htmlfile__.close();
	__chakra_htmlfile__ = null;
	CollectGarbage();
}

</script>