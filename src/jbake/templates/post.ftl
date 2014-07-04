<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>
	<p><em>Tags: <#list content.tags as tag></em>
		<a href="/tags/${tag?trim?replace(' ','-')}.html">${tag}</a> 
	</#list></p>
	<div class="g-plusone" data-size="medium" data-href="http://magnuspalmer.github.io/${content.uri}"></div>
	<script type="IN/Share" data-url="http://magnuspalmer.github.io/${content.uri}" data-counter="right"></script>
	<p>${content.body}</p>    
<#include "footer.ftl">
