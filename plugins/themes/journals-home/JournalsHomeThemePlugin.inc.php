<?php

import('lib.pkp.classes.plugins.ThemePlugin');

class JournalsHomeThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is only run for
	 * the currently active theme.
	 *
	 * @return null
	 */
	public function init() {
		$this->setParent('defaultthemeplugin');
		$this->addStyle('custom', 'styles/custom.less');
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.journals-home.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.journals-home.description');
	}
}

?>
