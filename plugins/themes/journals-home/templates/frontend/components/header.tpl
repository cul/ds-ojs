<!DOCTYPE html>
<html lang="en-US" xml:lang="en-US">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}

{include file="core:frontend/components/headerHead.tpl"}

<body>

<header>
  <h1>
    <img src="{$baseUrl}/plugins/themes/journals-home/assets/logo-journals.svg" alt="">
    <span>Columbia University Journals</span>
  </h1>
</header>

<div class="cover">
  <img src="{$baseUrl}/plugins/themes/journals-home/assets/cover.jpg" alt="">
</div>
