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
	
	<section>
		<h2>Humanities</h2>	
		<ul class="menu">
			<li>
				<a href="http://smallaxe.net/sxarchipelagos/">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Archipelagos</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Black Theology Papers Project</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Current Musicology</h3>
				</a>
			</li>
		</ul>
	</section>
	<section>
		<h2>Social Sciences and Education</h2>	
		<ul class="menu">
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Social Work Review</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Journal of Mathematics Education at Teachers College</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Studies in Applied Linguistics and TESOL</h3>
				</a>
			</li>
		</ul>
	</section>
	<section>
		<h2>Law</h2>	
		<ul class="menu">
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Business Law Review</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Journal of Asian Law</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Journal of Environmental Law</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Journal of Gender and Law</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Journal of Law and the Arts</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Journal of Race and Law</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Journal of Tax Law</h3>
				</a>
			</li>		
		</ul>
	</section>
	<section>
		<h2>Sciences</h2>
		<ul class="menu">
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Journal of Clinical Education in Physical Therapy</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Tremor and Other Hyperkinetic Movements</h3>
				</a>
			</li>
		</ul>
	</section>
	<section>
		<h2>Columbia Undergraduate Publications</h2>	
		<ul class="menu">
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Consilience: The Journal of Sustainable Development</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Consilience: The Journal of Sustainable Development</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Undergraduate Research Journal</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Columbia Undergraduate Science Journal</h3>
				</a>
			</li>
			<li>
				<a href="xxxx">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>The Morningside Review</h3>
				</a>
			</li>		
		</ul>
	</section>

	</article>

</main>

{include file="frontend/components/footer.tpl"}
