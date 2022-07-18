(function (window, document, JSON) {
    'use strict';

    var url = 'ws://' + window.location.host + '/KatMiau/chat',
            ws = new WebSocket(url),
            mensajes = document.getElementById('conversacion'),
            boton = document.getElementById('btnEnviar'),
            nombre = document.getElementById('usuario'),
            mensaje = document.getElementById('mensaje');
    var condicion = true;
    /*Método open, está marcado con la anotación @OnOpen y se ejecutara cada 
     * vez que una nueva conexión se establezca con el servidor, el parámetro Session 
     * representa la conexión la almacenamos en el Set de sesiones.*/
    ws.onopen = onOpen;
    /*Método close, esta anotado con @OnClose y se ejecutara cada vez que una sesión se desconecte. 
     * Recibe el objeto Session que se desconectó para poder identificarla.
     */
    ws.onclose = onClose;
    ws.onmessage = onMessage;
    boton.addEventListener('click', enviar);

    function onOpen(evt) {
        var obj = JSON.parse(evt.data);
       
        console.log('Conectado...');
    }

    function onClose(evt) {
        var obj = JSON.parse(evt.data);
         msg = obj.nombre + 'Se a desconectado';

        mensajes.innerHTML += msg + '\n';
        console.log('Desconectado...');
    }

    function enviar() {
        var msg = {
            nombre: nombre.value,
            mensaje: mensaje.value
        };

        ws.send(JSON.stringify(msg));
    }

    function onMessage(evt) {
        var obj = JSON.parse(evt.data),
            msg = obj.nombre + ' dice: ' + obj.mensaje;


        mensajes.innerHTML += msg + '\n';
    }

})(window, document, JSON);