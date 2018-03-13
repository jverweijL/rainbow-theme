<#--
This file allows you to override and define new FreeMarker variables.
-->

<#assign
	theme_display = themeDisplay
	portlet_display = portletDisplay

	theme_timestamp = themeDisplay.getTheme().getTimestamp()
	theme_settings = themeDisplay.getThemeSettings()

	root_css_class = languageUtil.get(locale, "lang.dir")
	css_class = htmlUtil.escape(bodyCssClass!)

	css_class = css_class + " " + htmlUtil.escape(theme_display.getColorScheme().getCssClass()) + " yui3-skin-sam"
/>

<#if layout??>
	<#assign page_group = layout.getGroup() />
</#if>

<#if layoutTypePortlet.hasStateMax()>
	<#assign css_class = css_class + " page-maximized" />
</#if>

<#assign
	css_folder = theme_display.getPathThemeCss()
	images_folder = theme_display.getPathThemeImages()
	javascript_folder = theme_display.getPathThemeJavaScript()
	templates_folder = theme_display.getPathThemeTemplates()

	full_css_path = fullCssPath
	full_templates_path = fullTemplatesPath
/>


<#assign background_color = getterUtil.getString(theme_settings["background-color"]) />


<!-- Message of the day -->
<#assign site_show_motd = getterUtil.getBoolean(theme_settings["site-show-motd"]) />
<#if site_show_motd>
    <#assign site_motd_message = getterUtil.getString(theme_settings["site-motd-message"]) />
    <#assign site_motd_style = getterUtil.getString(theme_settings["site-motd-style"])?lower_case />
    <#assign site_display_public_motd = getterUtil.getBoolean(theme_settings["site-display-public-motd"]) />
</#if>