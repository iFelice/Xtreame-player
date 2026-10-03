package okhttp3;

import Q6.m;

/* JADX INFO: loaded from: classes2.dex */
public interface WebSocket {

    public interface Factory {
        WebSocket newWebSocket(Request request, WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i8, String str);

    long queueSize();

    Request request();

    boolean send(m mVar);

    boolean send(String str);
}
