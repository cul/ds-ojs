<?php

namespace APP\plugins\themes\bootstrap3Child;

use PKP\plugins\ThemePlugin;

class Bootstrap3ChildThemePlugin extends ThemePlugin {

	public function init() {
		$this->setParent('bootstrapthreethemeplugin');
		$this->addStyle('custom', 'styles/custom.less');
		$this->addStyle('openid', 'styles/openid.less');
	}

	public function getDisplayName() {
		return __('plugins.themes.bootstrap3Child.name');
	}

	public function getDescription() {
		return __('plugins.themes.bootstrap3Child.description');
	}
}
