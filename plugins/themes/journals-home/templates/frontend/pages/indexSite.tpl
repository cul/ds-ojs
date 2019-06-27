{**
 * templates/frontend/pages/indexSite.tpl
 *
 * Site index.
 *
 *}

{include file="frontend/components/header.tpl"}

<main>

	<article>
	
	{if $about}
		<div class="intro">
			{$about|nl2br}
		</div>
	{/if}

	<h2>Journals Header 1</h2>	
		
	<ul class="menu">
		<li>
			<a href="https://btpp.columbia.edu">
				<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
				<h3>Black Theology Papers Project</h3>
			</a>
		</li>
		<li>
			<a href="https://jcept.columbia.edu">
				<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
				<h3>Journal of Clinical Education in Physical Therapy</h3>
			</a>
		</li>
		<li>
			<a href="">
				<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
				<h3>Journal of Mathematics Education at Teachers College</h3>
			</a>
		</li>
	</ul>
	
	
	<h2>Journals Header 2</h2>	
		
	<ul class="menu">
		<li>
			<a href="https://btpp.columbia.edu">
				<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
				<h3>Black Theology Papers Project</h3>
			</a>
		</li>
		<li>
			<a href="https://jcept.columbia.edu">
				<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
				<h3>Journal of Clinical Education in Physical Therapy</h3>
			</a>
		</li>
		<li>
			<a href="">
				<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
				<h3>Journal of Mathematics Education at Teachers College</h3>
			</a>
		</li>
	</ul>

	</article>

</main>

{include file="frontend/components/footer.tpl"}
