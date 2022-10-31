<div class="row border-bottom" style="background: #184890 !important">
	<div class="header confia-virtual-color header-full max-width" style="padding-bottom: 0px;">
		<div class="response-main-width" style="width: 190px; float: left;">
			<div class="row logo-desktop-responsive">
				<div class="col-12" style="padding: 0px;height: 80px;width: 160px;">
					<div class="redirectURL logo" onclick="goHomePage()">
						<img alt="${logo_description}" src="${site_logo}" class="header-logo" />
					</div>
				</div>
			</div>
			<div class="profile-element text-right">
				<div class="row justify-content-start">
					<div>
						<label for="menu-setup" class="toggle-menu fa fa-bars navigator-float-label d-flex justify-content-center align-items-center" style="color:#50D7F9; font-size:50px;">
							<span style="color:#50D7F9;font-size: 25px;font-family: roboto !important; margin-left: 10px">Menú</span>
						</label>
						<input type="checkbox" id="menu-setup" class="navigator-float-check">
							<nav class="navigator-float">
								<ul class="navigator-float-wrapper">
									<#if nav_items??>
									<#list nav_items as nav_item>
										<#assign nav_item_attr_has_popup="" />
										<#assign nav_item_attr_selected="" />
										<#assign nav_item_css_class="" />
										<#if nav_item.isSelected()>
										<#assign nav_item_attr_selected="aria-selected='true'" />
										<#assign nav_item_css_class="active" />
									</#if>
									<#if ! nav_item.hasChildren()>
									<li class="${nav_item_css_class} navigator-float-item" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
										<a aria-expanded="false" role="button" aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} >
											<span class="nav-label">${nav_item.getName()}</span>
										</a>
										<img class="navigator-logo-item" src="${themeDisplay.getPathThemeRoot()}/images/logo-confia-menu-escritorio.png" alt="logo-confia-menu-item" title="logo-confia-item">
											<div aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle sub-item-menu-dropdown" data-toggle="dropdown">
												<span class="class-button-menu-item" style="background-image: url(${themeDisplay.getPathThemeRoot()}/images/icon-sub-menu.png) !important;margin: auto 0px;"></span>
											</div>
									</li>
									<#else>
										<li class="${nav_item_css_class} dropdown navigator-float-item" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
											<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">
												<span class="nav-label">${nav_item.getName()}</span>
											</a>
											<img class="navigator-logo-item" src="${themeDisplay.getPathThemeRoot()}/images/logo-confia-menu-escritorio.png" alt="logo-confia-menu-item" title="logo-confia-item">
												<div aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle sub-item-menu-dropdown" data-toggle="dropdown">
													<span class="class-button-menu-item" style="background-image: url(${themeDisplay.getPathThemeRoot()}/images/icon-sub-menu.png) !important; margin: auto 0px;"></span>
												</div>
												<ul role="menu" class="dropdown-menu">
													<#list nav_item.getChildren() as nav_child>
													<li>
														<#if  (!nav_child.hasChildren())>
														<a href="${nav_child.getURL()}" style="width: auto !important;"> ${nav_child.getName()} </a>
														<#else>
															<a href="${nav_child.getURL()}" > ${nav_child.getName()} <span class="fa arrow"></span> </a>
															<ul class="nav nav-third-level">
																<#list nav_child.getChildren() as nav_child3 >
																<li><a href="${nav_child3.getURL()}">${nav_child3.getName()}</a></li>
															</#list>
														</ul>
													</#if>
												</li>
											</#list>
										</ul>
									</li>
								</#if>
							</#list>
						</#if>
						<#if ! is_signed_in>
						<li><a data-redirect="false" href="${sign_in_url}" rel="nofollow" id="sign-in-liferay">${sign_in_text}</a></li>
					</#if>
					<li>
						<div id="sign-out-confia" onclick="endSesion()">
							Cerrar sesión
						</div>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</div>
		</div >
	<div class="header-right header-confia">
		<div class="row">
			<div class="col-12" style="padding: 0px;">
				<div onclick="changePassword()" class="chagePass">
					<button type="button" class="white-button btn btn-lg btn-block">
						<div class="text-button-div">
							CAMBIAR CLAVE
						</div>
					</button>
				</div>
				<#assign sign_out_url= htmlUtil.escape("https://virtualafpconfia.com/web/afiliado") />
				<#assign sign_out_text= htmlUtil.escape("Cierre de sesion") />
				<div class="redirectURL d-flex" onclick="endSesion()"
					style="padding-left: 10px !important;" >
					<button type="button" class="white-button btn btn-lg btn-block">
						<div class="text-button-div">
							CERRAR SESIÓN
						</div>
					</button>
				</div>
			</div>
		</div>
		<div class="profile-element text-right mt-3">
			<#--  <label for="toggle-sites" class="d-block">  -->
				<div class="row justify-content-end">
					<div class="col-10">
						<span class="clear text-user-header">
							<span class="block m-t-xs"> <strong class="font-bold">
								<div id="nombreSessionAfiliado"></div>
							</strong></span>
							<#--  <span class="text-muted text-xs block">${user.getJobTitle()}</span>  -->
						</span>
					</div>
					<div class="">
						<span><img alt="image" class="img-circle img-user-info" src="${themeDisplay.getPathThemeRoot()}/images/iconoPerfil.png" /></span>
					</div>
				</div>
				<#--  </label>  -->
			<input type="checkbox" id="toggle-sites" class="navigator-float-check">
				<nav class="navigator-float">
					<ul class="navigator-float-wrapper" id="site-list-data">
						<#--  <li class="active navigator-float-item"><div class="listDiv">group</div></li>  -->
						<#--  <#list user.getGroups()>
						<#items as site>
							<#if !site.isUserPersonalSite()>
							<#if site.hasPrivateLayouts()>
							<li class="active navigator-float-item"><a href="/group${site.friendlyURL}">${site.descriptiveName}</a></li>
						</#if>
						<#if site.hasPublicLayouts()>
						<li class="active navigator-float-item"><a href="/web${site.friendlyURL}">${site.descriptiveName}</a></li>
					</#if>
				</#if>
			</#items>
		</#list>  -->
	</ul>
				</nav >
			</div >
		</div >
	<div class="row logo-mobile-responsive">
		<div class="col-12 logo-mobile-responsive-img" style="padding: 0px;height: 80px;width: 160px;">
			<div class="logo-mobile-header redirectURL" onclick="goHomePage()">
				<img alt="${logo_description}" src="${site_logo}" class="header-logo" />
			</div>
		</div>
	</div>
	</div >
</div >

<script>
    function funcRefreshToken() {
        let url_token = '';
        let client_id_app = '';
        let client_secret_app = '';
        let current_page = window.location;
        //console.log('********** Refrescamiento del token **********');
        if (window.location.host === "desa.virtualafpconfia.com" || window.location.host === "desaemp.virtualafpconfia.com") {
            url_token = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/oauth2/v2.0/token?p=b2c_1a_username_login';
            client_id_app = '491c1251-413f-46ae-81d3-a7a3fb772d75';
            client_secret_app = '4p2l_2gy-9vAwXV8._P-kmLUqT6ce3cQll';
        } else if (window.location.host === "uat.virtualafpconfia.com" || window.location.host === "uatconfia.com" || window.location.host === "emp.uatconfia.com" || window.location.host === "uatemp.virtualafpconfia.com") {
			url_token = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/oauth2/v2.0/token?p=b2c_1a_username_login';
			client_id_app = '6705a6cd-97de-423e-ba86-084cbd91a300';
			client_secret_app = 'sOByHG-q5otu-2iFiZ2Q.k4JRy0-_o1B~G';
		} else if (window.location.host === "virtualafpconfia.com") {
            url_token = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/oauth2/v2.0/token?p=b2c_1a_username_login';
            client_id_app = '303e64dc-5692-4920-b316-a4e4ed076097';
            client_secret_app = 'qG~JYXRQTZ5R.LJ3.6j93BV39Y-_s-5tog';
        }
        else if (window.location.host === "emp.virtualafpconfia.com") {
            url_token = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/oauth2/v2.0/token?p=b2c_1a_username_login';
            client_id_app = '303e64dc-5692-4920-b316-a4e4ed076097';
            client_secret_app = 'qG~JYXRQTZ5R.LJ3.6j93BV39Y-_s-5tog';
        }

        var formdata = new FormData();
        formdata.append("grant_type", "refresh_token");
        formdata.append("refresh_token", localStorage.getItem('refresh'));
        formdata.append("client_id", client_id_app);
        formdata.append("client_secret", client_secret_app);

        let datos
        $.ajax
            ({
                type: 'POST',
                enctype: 'multipart/form-data',
                url: url_token,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 0,
                data: formdata,
                success: function (data) {
                  //  console.log(data)
                    localStorage.setItem("token", data.access_token)
                }

            }).fail(function () {
                console.warn('No fue posible refrescar el token');
            });
        return datos
    }

    function searchName() {
        /*let hostWebNow = 'https://api.virtualafpconfia.com/apix/afiliado/rstaf/consult/consultaNombre';
            if (window.location.host === "desa.virtualafpconfia.com"){
                //Desarrollo
                hostWebNow = 'https://apidesa.virtualafpconfia.com/apix/afiliado/rstaf/consult/consultaNombre';
            } else if (window.location.host === "virtualafpconfia.com"){
                //Producción
                hostWebNow = 'https://api.virtualafpconfia.com/apix/afiliado/rstaf/consult/consultaNombre';
            } else if (window.location.host === "uat.virtualafpconfia.com"){
                //Producción
                hostWebNow = 'https://apiuat.virtualafpconfia.com/apix/afiliado/rstaf/consult/consultaNombre';
            }
	
            const settings = {
                "url": hostWebNow,
                "method": "POST",
                "headers": {
                    "content-type": "application/json",
                    "Authorization": "Bearer " + localStorage.getItem('token'),
                },
                "processData": false,
                "data": "{\r\n  \"id\":\""+localStorage.getItem('id')+"\"\r\n}"
                }
                $.ajax(settings).done(function (response) {*/
        let response = sessionStorage.getItem('sessionInfoPersonalv2');
        const obj = JSON.parse(response);
        const nombreSessionAfiliado = obj.persona.primer_nombre + " " + obj.persona.primer_apellido;
        localStorage.setItem("nombreSessionAfiliado", nombreSessionAfiliado);
        /**});*/
        const nameUser = localStorage.getItem("nombreSessionAfiliado");
        document.getElementById("nombreSessionAfiliado").innerHTML = nameUser;
    }

    if (!localStorage.getItem('nombreSessionAfiliado')) {
        searchName();
        setInterval(funcRefreshToken, 300000);
    } else {
        const nameUser = localStorage.getItem("nombreSessionAfiliado");
        document.getElementById("nombreSessionAfiliado").innerHTML = nameUser;
    }

    function goHomePage() {
        const dataURLValue = window.location.pathname.split('/');
        const dataURLOrigin = window.location.origin;
        const newValueUrlData = dataURLOrigin + "/" + dataURLValue[1] + "/" + dataURLValue[2];
        window.location.href = newValueUrlData;
    }

    function endSesion() {
        clearSessionStorage();
        localStorage.clear();

        if (window.location.href.includes('/web/empleador')) {
            localStorage.setItem('sitio', window.location.origin + '/web/empleador');
        }
        else {
            localStorage.setItem('sitio', window.location.origin + '/web/afiliado');
        }


        if (window.location.host === "desa.virtualafpconfia.com") {
            //Desarrollo
            window.location.href = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://desa.virtualafpconfia.com/web/afiliado/redirect.html?logout=https://desa.virtualafpconfia.com/web/confiavirtual';
        } 
        else if (window.location.host === "desaemp.virtualafpconfia.com") {
            //Desarrollo
            window.location.href = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://desaemp.virtualafpconfia.com/web/empleador/redirect.html?logout=https://desaemp.virtualafpconfia.com/web/confiavirtual';
        }else if (window.location.host === "virtualafpconfia.com") {
            //Producción
            window.location.href = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://virtualafpconfia.com/web/afiliado/redirect.html?logout=https://virtualafpconfia.com/web/confiavirtual';
        } 
        else if (window.location.host === "emp.virtualafpconfia.com") {
            //Producción
            window.location.href = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://emp.virtualafpconfia.com/web/empleador/redirect.html?logout=https://emp.virtualafpconfia.com/web/confiavirtual';
        }
        else if (window.location.host === "uat.virtualafpconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://uat.virtualafpconfia.com/web/afiliado/redirect.html?logout=https://uat.virtualafpconfia.com/web/confiavirtual';
        }
        else if (window.location.host === "uatconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://uatconfia.com/web/afiliado/redirect.html?logout=https://uatconfia.com/web/confiavirtual';
        }
        else if (window.location.host === "emp.uatconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://emp.uatconfia.com/web/empleador/redirect.html?logout=https://emp.uatconfia.com/web/confiavirtual';
        }
        else if (window.location.host === "uatemp.virtualafpconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/b2c_1a_username_login/oauth2/v2.0/logout?post_logout_redirect_uri=https://uatemp.virtualafpconfia.com/web/empleador/redirect.html?logout=https://uatemp.virtualafpconfia.com/web/confiavirtual';
        }

        
    }


    function changePassword() {

        sessionStorage.setItem('cambiarClave', 1);

        if (window.location.host === "desa.virtualafpconfia.com") {
            //Desarrollo
            window.location.href = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=491c1251-413f-46ae-81d3-a7a3fb772d75&nonce=he16hWs0K6rZa8AV_MvexsgC2kA-zHqy45KBqb8Hc6Y&redirect_uri=https%3A%2F%2Fdesa.virtualafpconfia.com%2Fweb%2Fafiliado%2Fredirect.html&scope=profile%20openid%20offline_access%20https://confiadesasso.onmicrosoft.com/491c1251-413f-46ae-81d3-a7a3fb772d75/Files.Read&response_type=code%20id_token';
        }
        else if (window.location.host === "desaemp.virtualafpconfia.com"){
            //Desarrollo
             window.location.href = 'https://confiadesasso.b2clogin.com/confiadesasso.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=491c1251-413f-46ae-81d3-a7a3fb772d75&nonce=he16hWs0K6rZa8AV_MvexsgC2kA-zHqy45KBqb8Hc6Y&redirect_uri=https%3A%2F%2Fdesaemp.virtualafpconfia.com%2Fweb%2Fempleador%2Fredirect.html&scope=profile%20openid%20offline_access%20https://confiadesasso.onmicrosoft.com/491c1251-413f-46ae-81d3-a7a3fb772d75/Files.Read&response_type=code%20id_token';
        }
         else if (window.location.host === "virtualafpconfia.com") {
            //Producción
            window.location.href = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=303e64dc-5692-4920-b316-a4e4ed076097&nonce=defaultNonce&redirect_uri=https%3A%2F%2Fvirtualafpconfia.com%2Fweb%2Fafiliado&scope=openid&response_type=code&prompt=login';
        }else if (window.location.host === "emp.virtualafpconfia.com") {
            //Producción
            window.location.href = 'https://confiaregistro.b2clogin.com/confiaregistro.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=303e64dc-5692-4920-b316-a4e4ed076097&nonce=defaultNonce&redirect_uri=https%3A%2F%2Femp.virtualafpconfia.com%2Fweb%2Fempleador&scope=openid&response_type=code&prompt=login';
        } else if (window.location.host === "uat.virtualafpconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=6705a6cd-97de-423e-ba86-084cbd91a300&nonce=-ACmdkdUmgmUHTNgD7euAuq26esBVvppchdQyZ-wNRk&redirect_uri=https%3A%2F%2Fuat.virtualafpconfia.com%2Fweb%2Fafiliado%2Fredirect.html&scope=profile%20openid%20offline_access%20https://confiaregistrouat.onmicrosoft.com/6705a6cd-97de-423e-ba86-084cbd91a300/Files.Read&response_type=code%20id_token';
        }
        else if (window.location.host === "uatemp.virtualafpconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=6705a6cd-97de-423e-ba86-084cbd91a300&nonce=-ACmdkdUmgmUHTNgD7euAuq26esBVvppchdQyZ-wNRk&redirect_uri=https%3A%2F%2Fuatemp.virtualafpconfia.com%2Fweb%2Fempleador%2Fredirect.html&scope=profile%20openid%20offline_access%20https://confiaregistrouat.onmicrosoft.com/6705a6cd-97de-423e-ba86-084cbd91a300/Files.Read&response_type=code%20id_token';
        }
        else if (window.location.host === "uatconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=6705a6cd-97de-423e-ba86-084cbd91a300&nonce=-ACmdkdUmgmUHTNgD7euAuq26esBVvppchdQyZ-wNRk&redirect_uri=https%3A%2F%2Fuat.virtualafpconfia.com%2Fweb%2Fafiliado%2Fredirect.html&scope=profile%20openid%20offline_access%20https://confiaregistrouat.onmicrosoft.com/6705a6cd-97de-423e-ba86-084cbd91a300/Files.Read&response_type=code%20id_token';
        }
        else if (window.location.host === "emp.uatconfia.com") {
            //UAT
            window.location.href = 'https://confiaregistrouat.b2clogin.com/confiaregistrouat.onmicrosoft.com/oauth2/v2.0/authorize?p=B2C_1A_PasswordReset_UserName_SMSMail&client_id=6705a6cd-97de-423e-ba86-084cbd91a300&nonce=-ACmdkdUmgmUHTNgD7euAuq26esBVvppchdQyZ-wNRk&redirect_uri=https%3A%2F%2Fuat.virtualafpconfia.com%2Fweb%2Fempleador%2Fredirect.html&scope=profile%20openid%20offline_access%20https://confiaregistrouat.onmicrosoft.com/6705a6cd-97de-423e-ba86-084cbd91a300/Files.Read&response_type=code%20id_token';
        }
    }

    function clearSessionStorage() {
        sessionStorage.removeItem('sessionInfoPersonalv2Count');
        sessionStorage.removeItem('sessionInfoPersonalv2');
        sessionStorage.removeItem("sessionSaldoRentaAnios");
        sessionStorage.removeItem('sessionSaldoRentaAniosCount');
        sessionStorage.removeItem("sessionImprimirEDCv1");
        sessionStorage.removeItem('sessionImprimirEDCv1Count');
        sessionStorage.removeItem("sessionBeneficiarios");
        sessionStorage.removeItem('sessionBeneficiariosCount');
        sessionStorage.removeItem("sessionConsultaDevengue");
        sessionStorage.removeItem('sessionConsultaDevengueCount');
        sessionStorage.removeItem("sessionPagosDashboard");
        sessionStorage.removeItem('sessionPagosDashboardCount');
        sessionStorage.removeItem("sessionDatosGeneralesEmp");
        sessionStorage.removeItem('sessionDatosGeneralesEmpCount');
        sessionStorage.removeItem("sessionSaldosInicialesEmp");
        sessionStorage.removeItem('sessionSaldosInicialesEmpCount');


        let items = [
            "apellido_casada",
            "cambios",
            "contacto_direccion_update",
            "datosDocumentos",
            "desc_estado_civil",
            "desc_genero",
            "desc_tipo_id",
            "estado_civil",
            "fecha_emision_inpep",
            "fecha_emision_isss",
            "fecha_emision_nit",
            "fecha_expedicion_id",
            "fecha_expiracion_id",
            "fecha_fallecimiento",
            "fecha_nacimiento",
            "grupo_1",
            "grupo_2",
            "grupo_3",
            "idModalImagenFrente",
            "info_grupos",
            "info_persona",
            "lugar_expedicion_id",
            "newObject",
            "nombre_completo",
            "nombre_conyuge",
            "nombre_madre",
            "nombre_padre",
            "numero_inpep",
            "numero_isss",
            "pag_contacto",
            "pag_contacto2",
            "primer_apellido",
            "primer_nombre",
            "profesion_afiliado",
            "segundo_apellido",
            "segundo_nombre",
            "tipo_id",
            "update_direccion",
            "DUI_FRENTE",
            "DUI_REVERSO",
            "idModalImagenFrenteV",
            "idModalImagenReverso",
            "idModalImagenReversoV",
            "infoUpdateDirect",
            "num_id",
            "numerosCie",
            "contacto_dias",
            "ApiSelectselectEstadoCivil",
            "ApiSelectselectGenero",
            "ApiSelectselectTipoDoc",
            "contacto_horas",
            "contacto_dias",
            "contacto_direccion_update",
            "contacto_selectDepa",
            "contacto_selectEstadoCivil",
            "contacto_selectGenero",
            "contacto_SelectMun",
            "contacto_selectTipoDireccion",
            "contacto_selectTipoDoc",
            "contacto_telefono_update",
            "contacto_tipo",
        ];
        items.map((item) => {
            if (localStorage.hasOwnProperty(item)) {
                localStorage.removeItem(item);
            }
        });
    }
</script>