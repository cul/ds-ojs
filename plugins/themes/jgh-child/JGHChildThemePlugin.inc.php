<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class JGHChildThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is only run for
	 * the currently active theme.
	 *
	 * @return null
	 */
	public function init() {
		$this->setParent('bootstrapthreechildthemeplugin');
		$this->addStyle('slideshow', 'styles/slideshow.css');
		$this->addStyle('jgh', 'styles/jgh.less');
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.jgh-child.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.jgh-child.description');
	}
}

?>
