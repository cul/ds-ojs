<!DOCTYPE html>
<html lang="en-US" xml:lang="en-US">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}

{include file="core:frontend/components/headerHead.tpl"}

<body>

<nav class="user-nav" aria-label="{translate key="common.navigation.user"}">
  {load_menu name="user" id="navigationUser" ulClass="user-nav-list"}
</nav>

<header>
  <h1>
    <img src="{$baseUrl}/plugins/themes/journalsHome/assets/logo-journals.svg" alt="">
    <span>Columbia University Journals</span>
  </h1>
</header>

<div class="cover">
  <img src="{$baseUrl}/plugins/themes/journalsHome/assets/cover.jpg" alt="">
</div>
