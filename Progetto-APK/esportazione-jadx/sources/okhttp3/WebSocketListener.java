package okhttp3;

import Q6.m;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i8, String str) {
        q0.h(webSocket, "webSocket");
        q0.h(str, "reason");
    }

    public void onClosing(WebSocket webSocket, int i8, String str) {
        q0.h(webSocket, "webSocket");
        q0.h(str, "reason");
    }

    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
        q0.h(webSocket, "webSocket");
        q0.h(th, "t");
    }

    public void onMessage(WebSocket webSocket, m mVar) {
        q0.h(webSocket, "webSocket");
        q0.h(mVar, "bytes");
    }

    public void onOpen(WebSocket webSocket, Response response) {
        q0.h(webSocket, "webSocket");
        q0.h(response, "response");
    }

    public void onMessage(WebSocket webSocket, String str) {
        q0.h(webSocket, "webSocket");
        q0.h(str, "text");
    }
}
