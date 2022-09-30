AUI().ready(function() {});

// Liferay.Portlet.ready(function(portletId, node) {
// 	console.log(portletId);
// 	console.log(node);
// });

Liferay.on('allPortletsReady',function() {});

var apiPrefix = 'https://apiuat.virtualafpconfia.com';

if (window.location.host === "desa.virtualafpconfia.com" || window.location.host === "desaemp.virtualafpconfia.com" || window.location.host === "desaafi.virtualafpconfia.com"){
  //Desarrollo
  apiPrefix = 'https://apidesa.virtualafpconfia.com';
} else if (window.location.host === "virtualafpconfia.com"){
  //Producción
  apiPrefix = 'https://api.virtualafpconfia.com';
} else if (window.location.host === "uat.virtualafpconfia.com"  || window.location.host === "uatconfia.com"){
  //Producción
  apiPrefix = 'https://apiuat.virtualafpconfia.com';
}

var dataURLValue = window.location.pathname.split('/');
var dataURLOrigin = window.location.origin;
var newValueUrlData = dataURLOrigin + "/"+ dataURLValue[1] + "/" + dataURLValue[2];

$( document ).ready(function() {
    $('#button22').click(function() {
        var contador = $('.listDiv').length + 1;
          var bloque = '<li class="active navigator-float-item"><div class="listDiv">group ' + contador + '</div></li>';
        $('#site-list-data').append(bloque);
      });
});