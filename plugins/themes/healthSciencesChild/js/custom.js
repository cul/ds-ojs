// Bypass parent theme's login modal so login links go to ORCID
document.addEventListener('click', function (event) {
	if (event.target.closest('.nmi_type_user_login')) {
		event.stopPropagation();
	}
}, true);
