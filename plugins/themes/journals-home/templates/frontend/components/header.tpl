<!DOCTYPE html>
<html lang="en-US" xml:lang="en-US">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}

{include file="core:frontend/components/headerHead.tpl"}

<body>

<div class="cul-banner">
  <div class="container">
    <a href="http://library.columbia.edu" class="cul-banner-logo">
      <img src="{$baseUrl}/plugins/themes/journals-home/assets/logo-cul-banner.png">
    </a>
		{load_menu name="user" id="navigationUser" ulClass="nav nav-pills tab-list pull-right user-nav"}
	</div>
</div>

<header>
  <h1>
    <img src="{$baseUrl}/plugins/themes/journals-home/assets/logo-journals.svg" alt="">
    <span>Columbia University Journals</span>
  </h1>
</header>
