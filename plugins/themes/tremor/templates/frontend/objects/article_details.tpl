{*
	
Modifications:
	
	- move article galleys to main column
	- move doi to bottom of the main column
	- remove entry details column
	- hide author bios, orcid, references
	
*}

{**
 * templates/frontend/objects/article_details.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief View of an Article which displays all details about the article.
 *  Expected to be primary object on the page.
 *
 * Many journals will want to add custom data to this object, either through
 * plugins which attach to hooks on the page or by editing the template
 * themselves. In order to facilitate this, a flexible layout markup pattern has
 * been implemented. If followed, plugins and other content can provide markup
 * in a way that will render consistently with other items on the page. This
 * pattern is used in the .main_entry column and the .entry_details column. It
 * consists of the following:
 *
 * <!-- Wrapper class which provides proper spacing between components -->
 * <div class="item">
 *     <!-- Title/value combination -->
 *     <div class="label">Abstract</div>
 *     <div class="value">Value</div>
 * </div>
 *
 * All styling should be applied by class name, so that titles may use heading
 * elements (eg, <h3>) or any element required.
 *
 * <!-- Example: component with multiple title/value combinations -->
 * <div class="item">
 *     <div class="sub_item">
 *         <div class="label">DOI</div>
 *         <div class="value">12345678</div>
 *     </div>
 *     <div class="sub_item">
 *         <div class="label">Published Date</div>
 *         <div class="value">2015-01-01</div>
 *     </div>
 * </div>
 *
 * <!-- Example: component with no title -->
 * <div class="item">
 *     <div class="value">Whatever you'd like</div>
 * </div>
 *
 * Core components are produced manually below, but can also be added via
 * plugins using the hooks provided:
 *
 * Templates::Article::Main
 * Templates::Article::Details
 *
 * @uses $article Article This article
 * @uses $issue Issue The issue this article is assigned to
 * @uses $section Section The journal section this article is assigned to
 * @uses $primaryGalleys array List of article galleys that are not supplementary or dependent
 * @uses $supplementaryGalleys array List of article galleys that are supplementary
 * @uses $keywords array List of keywords assigned to this article
 * @uses $pubIdPlugins Array of pubId plugins which this article may be assigned
 * @uses $copyright string Copyright notice. Only assigned if statement should
 *   be included with published articles.
 * @uses $copyrightHolder string Name of copyright holder
 * @uses $copyrightYear string Year of copyright
 * @uses $licenseUrl string URL to license. Only assigned if license should be
 *   included with published articles.
 * @uses $ccLicenseBadge string An image and text with details about the license
 *}
<article class="obj_article_details">
	<h1 class="page_title">
		{$article->getLocalizedTitle()|escape}
	</h1>

	{if $article->getLocalizedSubtitle()}
		<h2 class="subtitle">
			{$article->getLocalizedSubtitle()|escape}
		</h2>
	{/if}

	<div class="row">
		<div class="main_entry">

			{if $article->getAuthors()}
				<ul class="item authors">
					{foreach from=$article->getAuthors() item=author}
						<li>{$author->getFullName()|escape}</li>
					{/foreach}
				</ul>
			{/if}

			{* Keywords *}
{*
			{if !empty($keywords[$currentLocale])}
			<div class="item keywords">
				<span class="label">
					{capture assign=translatedKeywords}{translate key="article.subject"}{/capture}
					{translate key="semicolon" label=$translatedKeywords}
				</span>
				<span class="value">
					{foreach from=$keywords item=keyword}
						{foreach name=keywords from=$keyword item=keywordItem}
							{$keywordItem|escape}{if !$smarty.foreach.keywords.last}, {/if}
						{/foreach}
					{/foreach}
				</span>
			</div>
			{/if}
*}

			{* Abstract *}
			{if $article->getLocalizedAbstract()}
				<div class="item abstract">
					<h3 class="label">{translate key="article.abstract"}</h3>
					{$article->getLocalizedAbstract()|strip_unsafe_html}
				</div>
			{/if}

			{call_hook name="Templates::Article::Main"}

			{* Author biographies *}
{*
			{assign var="hasBiographies" value=0}
			{foreach from=$article->getAuthors() item=author}
				{if $author->getLocalizedBiography()}
					{assign var="hasBiographies" value=$hasBiographies+1}
				{/if}
			{/foreach}
			{if $hasBiographies}
				<div class="item author_bios">
					<h3 class="label">
						{if $hasBiographies > 1}
							{translate key="submission.authorBiographies"}
						{else}
							{translate key="submission.authorBiography"}
						{/if}
					</h3>
					{foreach from=$article->getAuthors() item=author}
						{if $author->getLocalizedBiography()}
							<div class="sub_item">
								<div class="label">
									{if $author->getLocalizedAffiliation()}
										{capture assign="authorName"}{$author->getFullName()|escape}{/capture}
										{capture assign="authorAffiliation"}<span class="affiliation">{$author->getLocalizedAffiliation()|escape}</span>{/capture}
										{translate key="submission.authorWithAffiliation" name=$authorName affiliation=$authorAffiliation}
									{else}
										{$author->getFullName()|escape}
									{/if}
								</div>
								<div class="value">
									{$author->getLocalizedBiography()|strip_unsafe_html}
								</div>
							</div>
						{/if}
					{/foreach}
				</div>
			{/if}
*}

			{* References *}
{*
			{if $parsedCitations->getCount() || $article->getCitations()}
				<div class="item references">
					<h3 class="label">
						{translate key="submission.citations"}
					</h3>
					<div class="value">
						{if $parsedCitations->getCount()}
							{iterate from=parsedCitations item=parsedCitation}
								<p>{$parsedCitation->getCitationWithLinks()|strip_unsafe_html} {call_hook name="Templates::Article::Details::Reference" citation=$parsedCitation}</p>
							{/iterate}
						{elseif $article->getCitations()}
							{$article->getCitations()|nl2br}
						{/if}
					</div>
				</div>
			{/if}
*}
			
			{* Article Galleys *}
			{if $primaryGalleys}
				<div class="item galleys">
					<ul class="value galleys_links">
						{foreach from=$primaryGalleys item=galley}
							<li>
								{include file="frontend/objects/galley_link.tpl" parent=$article galley=$galley purchaseFee=$currentJournal->getSetting('purchaseArticleFee') purchaseCurrency=$currentJournal->getSetting('currency')}
							</li>
						{/foreach}
					</ul>
				</div>
			{/if}
			{if $supplementaryGalleys}
				<div class="item galleys">
					<ul class="value supplementary_galleys_links">
						{foreach from=$supplementaryGalleys item=galley}
							<li>
								{include file="frontend/objects/galley_link.tpl" parent=$article galley=$galley isSupplementary="1"}
							</li>
						{/foreach}
					</ul>
				</div>
			{/if}
			
			{* DOI (requires plugin) *}
			{foreach from=$pubIdPlugins item=pubIdPlugin}
				{if $pubIdPlugin->getPubIdType() != 'doi'}
					{continue}
				{/if}
				{assign var=pubId value=$article->getStoredPubId($pubIdPlugin->getPubIdType())}
				{if $pubId}
					{assign var="doiUrl" value=$pubIdPlugin->getResolvingURL($currentJournal->getId(), $pubId)|escape}
					<div class="item doi">
						<span class="label">
							{capture assign=translatedDOI}{translate key="plugins.pubIds.doi.readerDisplayName"}{/capture}
							{translate key="semicolon" label=$translatedDOI}
						</span>
						<span class="value">
							<a href="{$doiUrl}">
								{$doiUrl}
							</a>
						</span>
					</div>
				{/if}
			{/foreach}

		</div><!-- .main_entry -->

	</div><!-- .row -->

</article>
