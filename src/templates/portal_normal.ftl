<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

	<head>
		<title>${the_title} - ${company_name}</title>
		<meta content="initial-scale=1.0, width=device-width" name="viewport" />

		<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
		
		<link href="${themeDisplay.getPathThemeRoot()}/font-awesome/css/font-awesome.css" rel="stylesheet" /> 

		<!-- Toastr style -->
		<link href="${themeDisplay.getPathThemeRoot()}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

		<!-- Gritter -->
		<!-- <link href="${themeDisplay.getPathThemeRoot()}/js/plugins/gritter/jquery.gritter.css" rel="stylesheet"> -->
		
		<link href="${themeDisplay.getPathThemeRoot()}/css/animate.css" rel="stylesheet" />
		<link href="${themeDisplay.getPathThemeRoot()}/css/plugins/iCheck/custom.css" rel="stylesheet" />
		
		<@liferay_util["include"] page=top_head_include />
		
		<#assign current = portalUtil.getCurrentCompleteURL(request) />

	
		<!-- Mainly scripts -->
		<script>
			window.__define = window.define;
			window.__require = window.require;
			window.define = undefined;
			window.require = undefined;
		</script>
		
		<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/jquery-ui/jquery-ui.min.js"></script>
		<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-min-css.js"></script>
		<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQTpXj82d8UpCi97wzo_nKXL7nYrd4G70" type="text/javascript"></script>
		<!-- Toastr -->
		<script src="/o/inspinia-theme/js/plugins/toastr/toastr.min.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="${themeDisplay.getPathThemeRoot()}/js/custom.js"></script>
		<script>
			window.define = window.__define;
			window.require = window.__require;
			window.__define = undefined;
			window.__require = undefined;
		</script>
		
	</head>

	<#if getterUtil.getBoolean(theme_settings["show-welcome-message"]!"", false)>
		<script>
			$(document).ready(function() {
				setTimeout(function() {
					toastr.options = {closeButton: true,progressBar: true,showMethod: 'slideDown',timeOut: 4000};
					toastr.success('${user.getFullName()}', 'Bienvenido a ${company_name}');
				}, 1300);
			});
		</script>
	</#if>


	<#if getterUtil.getBoolean(theme_settings["no-left-menu"]!"", false)>
		<#assign css_class = css_class +" top-navigation" />
	</#if>
		
	<#if getterUtil.getBoolean(theme_settings['use-full-height']!"", false)>
		<#--  <#assign css_class = css_class + " fixed-sidebar full-height-layout" />  -->
	</#if>
	
	<#if getterUtil.getBoolean(theme_settings['use-navbar-closed']!"", false)>
		<#assign css_class = css_class + " canvas-menu" />
	</#if>
	
	<#if getterUtil.getBoolean(theme_settings['locked-page']!"", false)>
		<#assign css_class = css_class +" gray-bg locked-page" />
	</#if>
	
	<body class="${css_class} site-body" id="style-scrollbar">
		<@liferay_util["include"] page=body_top_include />
		<@liferay.control_menu />
		
		<#if getterUtil.getBoolean(theme_settings['locked-page']!"", false) == false>
						
			<div id="wrapper" class="scroll-bar-global">
				
				<#if getterUtil.getBoolean(theme_settings['right-sidebar-fixed']!"", false) == true>
					<#--  Menu responsivo: ID page-wrapper -->
					<div id="page-wrapper" class="gray-bg sidebar-content" style="margin: 0px !important;">
				<#else>
					<#--  Menu responsivo: ID page-wrapper -->
					<div id="page-wrapper" class="gray-bg" style="margin: 0px !important;">			
				</#if>

				<#--  Show header  -->
				<#if show_header>
					<#include "${full_templates_path}/top_header.ftl" />
				</#if>
		
				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}
		
					${portletDisplay.setTitle(the_title)}
		
					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>

				<#--  Show footer  -->
				<#if show_footer>
					<#include "${full_templates_path}/footer.ftl" />
				</#if>

				<#if getterUtil.getBoolean(theme_settings['display-footer']!"", false) == true>
					
				</#if>
				</div><!-- End page-wrapper -->	
			</div><!-- End wrapper -->	
			
			<#if getterUtil.getBoolean(theme_settings["display-right-sidebar-toggle"]!"", false) == true>
				<div id="right-sidebar">
					
					<#assign preferences = freeMarkerPortletPreferences.getPreferences("articleId", "${rightsidebar}") />
					<@liferay_portlet["runtime"]
						defaultPreferences="${preferences}"
						portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" 
						instanceId="rightsidebar"
					/>
				</div>
			</#if>
			
			<!-- Custom and plugin javascript -->
			<script>
				window.__define = window.define;
				window.__require = window.require;
				window.define = undefined;
				window.require = undefined;
			</script>
			
			<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/pace/pace.min.js"></script>
			
			<!-- Peity -->
			<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/peity/jquery.peity.min.js"></script>
			
			<!-- iCheck -->
			<script src="${themeDisplay.getPathThemeRoot()}/js/plugins/iCheck/icheck.min.js"></script>
			
			<!-- jQuery UI custom -->
			<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-ui.custom.min.js"></script>
			<script src="${themeDisplay.getPathThemeRoot()}/js/inspinia.js" ></script>
			
			<script>
				window.define = window.__define;
				window.require = window.__require;
				window.__define = undefined;
				window.__require = undefined;
			</script>
		<#else>
			<@liferay_util["include"] page=body_top_include />
			<section id="content">
				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}
		
					${portletDisplay.setTitle(the_title)}
		
					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</section>
		</#if>

		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />

	</body>

</html>

<#--  Cierre de sessión automatico  -->
<script>

$(document).ready(function(){

	const valueURLData = window.location.pathname.split('/');
	const newDataUrlData = "/"+valueURLData[1]+"/"+valueURLData[2];

	const timeoutInMiliseconds = 360000;
	let timeoutId; 

	function resetTimer() { 
		window.clearTimeout(timeoutId)
		startTimer();
	}
	
	function startTimer() { 
		// window.setTimeout returns an Id that can be used to start and stop a timer
		timeoutId = window.setTimeout(doInactive, timeoutInMiliseconds)
	}
	
	function doInactive() {

		sessionStorage.clear();
    	localStorage.clear();

		 if (window.location.href.includes('/web/empleador')) {
            localStorage.setItem('sitio', window.location.origin + '/web/empleador');
        }
        else {
            localStorage.setItem('sitio', window.location.origin + '/web/afiliado');
        }


		if (window.location.host === "desa.virtualafpconfia.com"){
			//Desarrollo
			window.location.href = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://desa.virtualafpconfia.com/web/afiliado/redirect.html?logout=https://desa.virtualafpconfia.com/web/confiavirtual';
		} 
		else if (window.location.host === "desaemp.virtualafpconfia.com") {
            //Desarrollo
            window.location.href = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://desaemp.virtualafpconfia.com/web/empleador/redirect.html?logout=https://desaemp.virtualafpconfia.com/web/confiavirtual';
        }
		else if (window.location.host === "virtualafpconfia.com"){
			//Producción
			window.location.href = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://virtualafpconfia.com/web/afiliado/redirect.html?logout=https://virtualafpconfia.com/web/confiavirtual';
		}
		else if (window.location.host === "emp.virtualafpconfia.com"){
			//Producción
			window.location.href = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://emp.virtualafpconfia.com/web/empleador/redirect.html?logout=https://emp.virtualafpconfia.com/web/confiavirtual';
		} else if (window.location.host === "uat.virtualafpconfia.com"){
			//UAT
			window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://uat.virtualafpconfia.com/web/afiliado/redirect.html?logout=https://uat.virtualafpconfia.com/web/confiavirtual';
		}
		 else if (window.location.host === "uatconfia.com") {
			//UAT
			window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://uatconfia.com/web/afiliado/redirect.html?logout=https://uatconfia.com/web/confiavirtual';
    	} 
		 else if (window.location.host === "emp.uatconfia.com") {
			//UAT
			window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://emp.uatconfia.com/web/afiliado/redirect.html?logout=https://emp.uatconfia.com/web/confiavirtual';
    	} 
		else if (window.location.host === "uatemp.virtualafpconfia.com"){
			//UAT
			window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://uatemp.virtualafpconfia.com/web/empleador/redirect.html?logout=https://uatemp.virtualafpconfia.com/web/confiavirtual';
		}
	}
	
	function setupTimers () {
		document.addEventListener("mousemove", resetTimer);
		document.addEventListener("mousedown", resetTimer);
		document.addEventListener("keypress", resetTimer);
		document.addEventListener("touchmove", resetTimer);
		
		startTimer();
	}

	if("/web/afiliado" === newDataUrlData){
		setupTimers();
	}
	if("/web/empleador" === newDataUrlData){
		setupTimers();
	}
	
});
</script>


