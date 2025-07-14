user_pref('browser.download.useDownloadDir', false);
user_pref('media.eme.enabled', false);
user_pref('toolkit.legacyUserProfileCustomizations.stylesheets', true);

// https://blog.gslin.org/archives/2025/05/31/12426/firefox-%e8%87%aa%e5%b7%b1%e6%96%b0%e5%a2%9e%e6%90%9c%e5%b0%8b%e5%bc%95%e6%93%8e%e7%9a%84%e6%96%b9%e5%bc%8f/
user_pref('browser.urlbar.update2.engineAliasRefresh', true);

user_pref('browser.newtabpage.activity-stream.newtabLayouts.variant-b', false);

// The following 3 settings enable horizontal scrolling when pressing down Shift key
// ref: https://coderwall.com/p/xnez3g/horizontal-scroll-with-mouse-under-linux
user_pref('general.autoScroll', true);
user_pref('mousewheel.with_shift.action', 1);
user_pref('mousewheel.with_shift.delta_multiplier_x', 300);
