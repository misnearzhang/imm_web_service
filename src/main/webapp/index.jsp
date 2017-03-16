<!DOCTYPE html>
<html>
<head>
    <title>WebSocket/SockJS Echo Sample (Adapted from Tomcat's echo sample)</title>
    <script type="application/javascript" src="resource/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        var  wsServer = 'ws://localhost:8080/connection.htm';
        jQuery(document).ready(function(){
            var  websocket = new WebSocket(wsServer);
            websocket.onopen = function (evt) {
                onOpen(evt)
            };
            websocket.onclose = function (evt) { onClose(evt) };
            websocket.onmessage = function (evt) { onMessage(evt) };
            websocket.onerror = function (evt) { onError(evt) };
            function onOpen(evt) {
                console.log("Connected to WebSocket server.");
                jQuery("#status").val("已经链接");
            }
            function onClose(evt) {
                console.log("Disconnected");
                jQuery("#status").val("链接终止");
            }
            function onMessage(evt) {
                console.log('Retrieved data from server: ' + evt.data);
            }
            function onError(evt) {
                console.log('Error occured: ' + evt.data);
                jQuery("#status").val("链接失败");
            }
        });

    </script>
</head>
<body>
<div>
    <div>
        <p id="status">等待链接...</p>
    </div>
</div>
</body>
</html>