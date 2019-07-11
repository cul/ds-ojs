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
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/archipelagos.svg" alt="">
					<h3>Archipelagos</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/btpp">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/btpp.svg" alt="">
					<h3>Black Theology Papers Project</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/currentmusicology">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/current-musicology.svg" alt="">
					<h3>Current Musicology</h3>
				</a>
			</li>
		</ul>
	</section>
	<section>
		<h2>Social Sciences and Education</h2>	
		<ul class="menu">
			<li>
				<a href="https://journals.library.columbia.edu/index.php/cswr">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cswr.svg" alt="">
					<h3>Columbia Social Work Review</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/jmetc">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/jmetc.svg" alt="">
					<h3>Journal of Mathematics Education at Teachers College</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/SALT">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/salt.svg" alt="">
					<h3>Studies in Applied Linguistics and TESOL</h3>
				</a>
			</li>
		</ul>
	</section>
	<section>
		<h2>Law</h2>	
		<ul class="menu">
			<li>
				<a href="https://journals.library.columbia.edu/index.php/CBLR">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cblr.svg" alt="">
					<h3>Columbia Business Law Review</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/cjal">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cjal.svg" alt="">
					<h3>Columbia Journal of Asian Law</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/cjel">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cjel.svg" alt="">
					<h3>Columbia Journal of Environmental Law</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/cjgl">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cjgl.svg" alt="">
					<h3>Columbia Journal of Gender and Law</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/lawandarts">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/law-and-arts.svg" alt="">
					<h3>Columbia Journal of Law and the Arts</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/cjrl">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cjrl.svg" alt="">
					<h3>Columbia Journal of Race and Law</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/cjtl">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/tax-law.svg" alt="">
					<h3>Columbia Journal of Tax Law</h3>
				</a>
			</li>		
		</ul>
	</section>
	<section>
		<h2>Sciences</h2>
		<ul class="menu">
			<li>
				<a href="https://journals.library.columbia.edu/index.php/jcept">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/jcept.svg" alt="">
					<h3>Journal of Clinical Education in Physical Therapy</h3>
				</a>
			</li>
			<li>
				<a href="https://tremorjournal.org">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/tremor.svg" alt="">
					<h3>Tremor and Other Hyperkinetic Movements</h3>
				</a>
			</li>
		</ul>
	</section>
	<section>
		<h2>Columbia Undergraduate Publications</h2>	
		<ul class="menu">
			<li>
				<a href="https://journals.library.columbia.edu/index.php/consilience">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/consilience.svg" alt="">
					<h3>Consilience: The Journal of Sustainable Development</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/curj">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/curj.svg" alt="">
					<h3>Columbia Undergraduate Research Journal</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/CUSJ-1">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/cusj.svg" alt="">
					<h3>Columbia Undergraduate Science Journal</h3>
				</a>
			</li>
			<li>
				<a href="https://journals.library.columbia.edu/index.php/TMR">
					<img src="{$baseUrl}/plugins/themes/journals-home/assets/logos/morningside-review.svg" alt="">
					<h3>The Morningside Review</h3>
				</a>
			</li>		
		</ul>
	</section>

	</article>

</main>

{include file="frontend/components/footer.tpl"}
