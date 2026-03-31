<?php

namespace APP\plugins\themes\journalsHome;

use PKP\plugins\ThemePlugin;

class JournalsHomeThemePlugin extends ThemePlugin {

	public function init() {
		$this->setParent('defaultthemeplugin');
		$this->addStyle('custom', 'styles/custom.less');
		$this->addStyle('custom-backend', 'styles/backend.less', array('contexts' => 'backend'));
	}

	public function getDisplayName() {
		return __('plugins.themes.journalsHome.name');
	}

	public function getDescription() {
		return __('plugins.themes.journalsHome.description');
	}
}