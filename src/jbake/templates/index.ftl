<#include "header.ftl">
	<#include "menu.ftl">
	<div class="page-header">
		<h1>Blogginlägg</h1>
		<#assign lastposts = posts[0..1]>
		<#list lastposts as post>
  		<#if (post.status == "published")>
  			<a href="/${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
			<p><em>Tags: </em><#list post.tags as tag>
		<a href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a> 
	</#list></p>
			<script type="IN/Share" data-url="http://magnuspalmer.github.io/${post.uri}" data-counter="right"></script>
  			<p>${post.body}</p>
  		</#if>
  	</#list>
	<hr/>
	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
