<?php

namespace APP\plugins\themes\healthSciencesChild;

use PKP\plugins\ThemePlugin;

class HealthSciencesChildThemePlugin extends ThemePlugin {

	public function init() {
		$this->setParent('healthsciencesthemeplugin');
		$this->addStyle('custom', 'styles/custom.less');
		$this->addStyle('openid', 'styles/openid.less');
	}

	public function getDisplayName() {
		return __('plugins.themes.healthSciencesChild.name');
	}

	public function getDescription() {
		return __('plugins.themes.healthSciencesChild.description');
	}
}
