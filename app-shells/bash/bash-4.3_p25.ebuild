



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!-- ViewVC :: http://www.viewvc.org/ -->
<head>
<title>[gentoo-x86] Log of /app-shells/bash/bash-4.3_p25.ebuild</title>
<meta name="generator" content="ViewVC 1.1.20" />
<link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/static/styles.css" type="text/css" />

</head>
<body>
<div class="vc_navheader">
<table><tr>
<td><strong><a href="/cgi-bin/viewvc.cgi"><span class="pathdiv">/</span></a><a href="/cgi-bin/viewvc.cgi/gentoo-x86/">[gentoo-x86]</a><span class="pathdiv">/</span><a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/">app-shells</a><span class="pathdiv">/</span><a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/">bash</a><span class="pathdiv">/</span>bash-4.3_p25.ebuild</strong></td>
<td style="text-align: right;">
</td>
</tr></table>
</form>
</div>
<div style="float: right; padding: 5px;"><a href="http://www.gentoo.org/" title="Gentoo Linux"><img src="/static/images/gentoo-new.gif" alt="Gentoo" width="182" height="59" /></a></div>
<h1>Log of /app-shells/bash/bash-4.3_p25.ebuild</h1>

<p style="margin:0;">

<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/"><img src="/static/images/back_small.png" class="vc_icon" alt="Parent Directory" /> Parent Directory</a>

| <a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?view=log"><img src="/static/images/log.png" class="vc_icon" alt="Revision Log" /> Revision Log</a>




</p>

<hr />
<table class="auto">



<tr>
<td>Links to HEAD:</td>
<td>
(<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?view=markup">view</a>)
(<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild">download</a>)

(<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?view=annotate">annotate</a>)
</td>
</tr>



</table>
 







<div>
<hr />

<a name="rev1.1"></a>
<a name="HEAD"></a>


Revision <strong>1.1</strong> -


(<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?revision=1.1&amp;view=markup">view</a>)


(<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?revision=1.1">download</a>)

(<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?annotate=1.1">annotate</a>)



- <a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?view=log&amp;r1=1.1">[select for diffs]</a>




<br />

<em>Wed Sep 24 17:23:53 2014 UTC</em>
(3 hours, 5 minutes ago)
by <em>polynomial-c</em>


<br />Branch:

<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?view=log&amp;pathrev=MAIN"><strong>MAIN</strong></a>



<br />CVS Tags:

<a href="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild?view=log&amp;pathrev=HEAD"><strong>HEAD</strong></a>
















<pre class="vc_log">Added official upstream fixes. Removed old. Committed straight to stable where the removed ebuilds were stable

(Portage version: 2.2.13/cvs/Linux x86_64, RepoMan options: --force, signed Manifest commit with key 0x981CA6FC)

</pre>
</div>

 


 <hr />
<p><a name="diff"></a>
This form allows you to request diffs between any two revisions of this file.
For each of the two "sides" of the diff,

select a symbolic revision name using the selection box, or choose
'Use Text Field' and enter a numeric revision.

</p>
<form method="get" action="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild" id="diff_select">
<table cellpadding="2" cellspacing="0" class="auto">
<tr>
<td>&nbsp;</td>
<td>
<input type="hidden" name="view" value="diff"/>
Diffs between

<select name="r1">
<option value="text" selected="selected">Use Text Field</option>

<option value="1.1:MAIN">MAIN</option>

<option value="1.1:HEAD">HEAD</option>

</select>
<input type="text" size="12" name="tr1"
value="1.1"
onchange="document.getElementById('diff_select').r1.selectedIndex=0" />

and

<select name="r2">
<option value="text" selected="selected">Use Text Field</option>

<option value="1.1:MAIN">MAIN</option>

<option value="1.1:HEAD">HEAD</option>

</select>
<input type="text" size="12" name="tr2"
value="1.1"
onchange="document.getElementById('diff_select').r2.selectedIndex=0" />

</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
Type of Diff should be a
<select name="diff_format" onchange="submit()">
<option value="h" selected="selected">Colored Diff</option>
<option value="l" >Long Colored Diff</option>
<option value="f" >Full Colored Diff</option>
<option value="u" >Unidiff</option>
<option value="c" >Context Diff</option>
<option value="s" >Side by Side</option>
</select>
<input type="submit" value=" Get Diffs " />
</td>
</tr>
</table>
</form>



<form method="get" action="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild">
<div>
<hr />
<a name="logsort"></a>
<input type="hidden" name="view" value="log"/>
Sort log by:
<select name="logsort" onchange="submit()">
<option value="cvs" >Not sorted</option>
<option value="date" selected="selected">Commit date</option>
<option value="rev" >Revision</option>
</select>
<input type="submit" value=" Sort " />
</div>
</form>

<br>
<tr>
<td>Sticky Tag:</td>
<td><form method="get" action="/cgi-bin/viewvc.cgi/gentoo-x86/app-shells/bash/bash-4.3_p25.ebuild" style="display: inline">
<div style="display: inline">
<input type="hidden" name="view" value="log"/>


<select name="pathrev" onchange="submit()">
<option value=""></option>

<optgroup label="Branches">


<option>MAIN</option>


</optgroup>

<optgroup label="Non-branch tags">


<option>HEAD</option>


</optgroup>

</select>

<input type="submit" value="Set" />
</div>
</form>

</td>
</tr>

<hr />
<table>
<tr>
<td>&nbsp;</td>
<td style="text-align: right;"><strong><a href="/static/help_log.html">ViewVC Help</a></strong></td>
</tr>
<tr>
<td>Powered by <a href="http://viewvc.tigris.org/">ViewVC 1.1.20</a></td>
<td style="text-align: right;">&nbsp;</td>
</tr>
</table>
</body>
</html>


