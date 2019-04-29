{*
	
	Modifications:
	
	- add Tremor footer content

*}

{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div id="pkp_content_footer" class="pkp_structure_footer_wrapper" role="contentinfo">

	<div class="pkp_structure_footer">

		<footer>
					
			<p>Published in partnership with:</p>
			
			<div class="logo">
				<a href="http://library.columbia.edu"><img src="{$baseUrl}/plugins/themes/tremor/assets/images/logo-cul.png" alt="Columbia University Libraries" /></a>
			</div>
			
			<p>Powered by <a href="http://pkp.sfu.ca/?q=ojs">Open Journal Systems</a>.</p>
			
			<p>ISSN 2160-8288</p>
							
		</footer>
			
		<div class="license">
			
			<div class="logo-copyright"><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/3.0/us/88x31.png" /></a></div>
			
			<p>This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivs 4.0 International License</a>.</p>
			
			<p>The opinions expressed within this journal do not necessarily reflect those of <span class="emphasis">Tremor</span>, its staff, its advisory Boards, or affiliates, or those of Columbia University.</p>
					
		</div>
		
	</div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
