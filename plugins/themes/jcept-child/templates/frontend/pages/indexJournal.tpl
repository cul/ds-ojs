{*

Modifications:

- hide current issue title (redundant because issue title was added to issue_toc.tpl )
- adds jcept homepage cover image slider

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
        <input type="radio" name="slides" id="slides_N" />
        <ul>
          <li class="cover">
            <img src="{$baseUrl}/plugins/themes/jcept-child/assets/jcept-slideshow-1.jpg" alt="">
            <div class="textbox">
              <h3><img src="{$baseUrl}/plugins/themes/jcept-child/assets/logo-jcept.svg" alt="" class="logo"></h3>
              <ul>
                <li><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-community.png" alt="" class="icon"> Community</li>
                <li><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-oa.png" alt="" class="icon"> Open Access</li>
                <li><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-articles.png" alt="" class="icon"> Multiple Article Types</li>
                <li><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-equal.png" alt="" class="icon"> Equity Initiatives</li>
              </ul>
            </div>
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/jcept-child/assets/jcept-slideshow-2.jpg" alt="">
            <div class="textbox">
              <h3><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-community.png" alt="" class="icon"> Community</h3>
              <p>We provide a forum for collegial conversation and community building, offering opportunities for interprofessional collaborations and contributions from related health professions that are applicable to physical therapy clinical education.</p>
            </div>
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/jcept-child/assets/jcept-slideshow-3.jpg" alt="">
            <div class="textbox">
              <h3><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-oa.png" alt="" class="icon"> Open Access</h3>
              <p>JCEPT’s content is freely available without charge to everyone — clinicians, practicioners, scientists, patients, the lay public — without the prohibitive onus of subscription fees</p>
            </div>
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/jcept-child/assets/jcept-slideshow-4.jpg" alt="">
            <div class="textbox">
              <h3><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-articles.png" alt="" class="icon"> Multiple Article Types</h3>
              <p>Original research, clinic-related teaching methods, narrative and systematic reviews, critically appraised topics, and clinical or education case reports</p>
            </div>
          </li>
          <li>
            <img src="{$baseUrl}/plugins/themes/jcept-child/assets/jcept-slideshow-5.jpg" alt="">
            <div class="textbox">
              <h3><img src="{$baseUrl}/plugins/themes/jcept-child/assets/icon-equal.png" alt="" class="icon"> Equity Initiatives</h3>
              <p>We promote the creation of opportunities for historically underrepresented populations to have equitable access to professional growth opportunities and resource. Fee waivers for qualifying Clinicians, physical therapy students, residents, and/or fellows remove barriers to publishing for those without research funding.</p>
            </div>
          </li>
        </ul>
        <div class="arrows">
          <label for="slides_1"></label>
          <label for="slides_2"></label>
          <label for="slides_3"></label>
          <label for="slides_4"></label>
          <label for="slides_N"></label>
          <!-- <label for="slides_1" class="goto-first"></label>
          <label for="slides_N" class="goto-last"></label> -->
        </div>
        <div class="navigation">
    	    <div>
          	<label for="slides_1"></label>
          	<label for="slides_2"></label>
          	<label for="slides_3"></label>
          	<label for="slides_4"></label>
          	<label for="slides_N"></label>
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
