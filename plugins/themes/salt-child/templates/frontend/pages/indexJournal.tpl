{*

Modifications:

- hide current issue title (redundant because issue title was added to issue_toc.tpl )
- adds salt homepage cover image slider

*}

{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * UPDATED/CHANGED/MODIFIED: Marc Behiels - marc@elemental.ca - 250416
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $announcements array List of announcements
 * @uses $numAnnouncementsHomepage int Number of announcements to display on the
 *       homepage
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div id="main-content" class="page_index_journal" role="content">

  <!-- homepage slideshow -->

  <div class="homepage-slideshow">

    <div class="csslider">
        <input type="radio" name="slides" id="slides_1" checked />
        <input type="radio" name="slides" id="slides_2" />
        <input type="radio" name="slides" id="slides_3" />
        <input type="radio" name="slides" id="slides_4" />
        <ul>
          <li class="cover">
            <img src="{$baseUrl}/plugins/themes/salt-child/assets/slideshow-1.jpg" alt="">
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/salt-child/assets/slideshow-2.jpg" alt="">
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/salt-child/assets/slideshow-3.jpg" alt="">
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/salt-child/assets/slideshow-4.jpg" alt="">
          </li>
        </ul>
        <div class="arrows">
          <label for="slides_1"></label>
          <label for="slides_2"></label>
          <label for="slides_3"></label>
          <label for="slides_4"></label>
          <!-- <label for="slides_1" class="goto-first"></label>
          <label for="slides_N" class="goto-last"></label> -->
        </div>
        <div class="navigation">
    	    <div>
          	<label for="slides_1"></label>
          	<label for="slides_2"></label>
          	<label for="slides_3"></label>
          	<label for="slides_4"></label>
    	    </div>
        </div>
    </div>

  </div><!-- end homepage slideshow -->

	{call_hook name="Templates::Index::journal"}

	<!-- {if $homepageImage}
		<div class="homepage-image">
			<img class="img-responsive" src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
		</div>
	{/if} -->

	{if $journalDescription}
		<div class="journal-description">
			{$journalDescription}
		</div>
	{/if}

	{* Announcements *}
	{if $numAnnouncementsHomepage && $announcements|count}
		<section class="cmp_announcements media">
			<header class="page-header">
				<h2>
					{translate key="announcement.announcements"}
				</h2>
			</header>
			<div class="media-list">
				{foreach name=announcements from=$announcements item=announcement}
					{if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
						{php}break;{/php}
					{/if}
					{include file="frontend/objects/announcement_summary.tpl" heading="h3"}
				{/foreach}
			</div>
		</section>
	{/if}

	{* Latest issue *}
	{if $issue}
		<section class="current_issue">
			<header class="page-header">
				<h2>
					{translate key="journal.currentIssue"}
				</h2>
			</header>
			<!-- <p class="current_issue_title lead">
				{$issue->getIssueIdentification()|strip_unsafe_html}
			</p> -->
			{include file="frontend/objects/issue_toc.tpl"}
			<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}" class="btn btn-primary read-more">
				{translate key="journal.viewAllIssues"}
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</section>
	{/if}

	{* Additional Homepage Content *}
	{if $additionalHomeContent}
		<section class="additional_content">
			{$additionalHomeContent}
		</section>
	{/if}
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
