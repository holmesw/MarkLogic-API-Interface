xquery version '1.0-ml';
let $versions := 
	for $d in xdmp:directory-properties("/", "1")//prop:directory 
	let $v := xs:double(fn:replace(xdmp:node-uri($d), "/", ""))
	order by $v descending
	return fn:concat(fn:replace(xdmp:node-uri($d), "/", "'"))
return (
xdmp:set-response-content-type('text/html'),
'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">',
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>MarkLogic API</title>
	<meta name="description" content="Search interface for the Mark Logic XQuery API function reference" />
	<meta name="keywords" content="marklogic,xquery,api,function reference,4.0,4.1,xqueryhacker" />
	<link rel="stylesheet" type="text/css" href="/ext-2.2/resources/css/ext-all.css" />
	<link rel="stylesheet" type="text/css" href="/css/reference.css" />
	<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
	<link rel="search" type="application/opensearchdescription+xml" title="MarkLogic API" href="/opensearch.xml" />
</head>
<body>
	
		<div id="loading-mask"></div>
		<script type="text/javascript">
			var MLAPI = {{ versions: [{fn:string-join($versions,',')}]}};
			document.write('<div id="loading">');
			document.write('<div class="loading-indicator">');
			document.write('<img src="ext-2.2/resources/images/default/shared/large-loading.gif" width="32" height="32" style="margin-right:8px;" align="absmiddle" alt=""/>');
			document.write('Loading...');
			document.write('</div></div>');
		</script>
		<noscript>
			<p>Sorry, this site requires a browser with JavaScript enabled.</p>
		</noscript>
	
	<textarea style="display:none" id="contentTpl">
		<tpl for=".">
		 <div class="function">
			<div class="fn-collapsed">
				<h1><a class="icon-expand" href="#{{name}}" onclick="Ext.getCmp('content').toggleItem(this)">{{name}}()</a></h1>
				<h2>{{summary}}</h2>
			</div>
			<div class="fn-expanded">
				<p class="loading-indicator">Loading...</p>
			</div>
		 </div>
		</tpl>
	</textarea>
	
	<div id="header">
		<h1 id="pageTitle">MarkLogic API </h1>
		<span id="api-versions">&#160;</span>
		<div id="links">
			<ul>
				<li><a href="http://github.com/robwhitby/MarkLogic-API-Interface" title="GitHub Project">GitHub Project</a></li>
				<li><a id="docsLink" href="http://developer.marklogic.com/pubs/VERSION/default.xqy" title="developer.marklogic.com/pubs">Docs</a></li>
				<li><a href="http://developer.marklogic.com" title="developer.marklogic.com">Developer Network</a></li>
				<li><a href="http://marklogic.markmail.org" title="marklogic.markmail.org">MarkMail</a></li>
				<li><a href="http://www.xqueryhacker.com" title="www.xqueryhacker.com">XQueryHacker</a></li>
			</ul>
		</div>
	</div>
	
	<script type="text/javascript" src="/release/ext.js">{' '}</script>
	<script type="text/javascript" src="/js/default.js">{' '}</script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-10254865-2']);
		_gaq.push(['_trackPageview']);
		(function() {{
	  		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	  		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	  		var s = document.getElementsByTagName('script')[0]; 
	  		s.parentNode.insertBefore(ga, s);
		}})();
	</script>
	
</body>
</html>
)