<#if getterUtil.getBoolean(theme_settings["use-collapsed-menu"]!"", false)>
	<#assign css_class = css_class + " collapsed-menu" />
</#if> 


<#assign nav_header_profile_menu =  getterUtil.getString(theme_settings["profile-left-header-menu"]!"", "") />
<#assign footer = getterUtil.getString(theme_settings["footer"]!"", "") />
<#assign rightsidebar = getterUtil.getString(theme_settings["right_sidebar"]!"", "") />


<#if journalContentUtil??>
	<#if journalContentUtil.getContent(group_id?long,  nav_header_profile_menu , "", "${locale}", theme_display) != null >
		<#assign nav_header_profile_menu = journalContentUtil.getContent(group_id?long,  nav_header_profile_menu, "", "${locale}", theme_display) />
	</#if>

	<#if getterUtil.getBoolean(theme_settings["use-global-footer"]!"", false)>
		<#if journalContentUtil.getContent(theme_display.companyGroupId?long, footer, "", "${locale}", theme_display)>
			<#assign footer = journalContentUtil.getContent(theme_display.companyGroupId?long, footer, "", "${locale}", theme_display) />
		<#elseif journalContentUtil.getContent(group_id?long, footer, "", "${locale}", theme_display) >
			<#assign footer = journalContentUtil.getContent(group_id?long, footer, "", "${locale}", theme_display) />
		</#if>
	<#else>
		<#if journalContentUtil.getContent(group_id?long, footer, "", "${locale}", theme_display) >
			<#assign footer = journalContentUtil.getContent(group_id?long, footer, "", "${locale}", theme_display) />
		</#if>
	</#if>	
</#if>
<#assign
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
/>


