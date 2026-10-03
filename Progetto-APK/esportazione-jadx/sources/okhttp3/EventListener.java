package okhttp3;

import D6.e;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response response) {
        q0.h(call, "call");
        q0.h(response, "cachedResponse");
    }

    public void cacheHit(Call call, Response response) {
        q0.h(call, "call");
        q0.h(response, "response");
    }

    public void cacheMiss(Call call) {
        q0.h(call, "call");
    }

    public void callEnd(Call call) {
        q0.h(call, "call");
    }

    public void callFailed(Call call, IOException iOException) {
        q0.h(call, "call");
        q0.h(iOException, "ioe");
    }

    public void callStart(Call call) {
        q0.h(call, "call");
    }

    public void canceled(Call call) {
        q0.h(call, "call");
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        q0.h(call, "call");
        q0.h(inetSocketAddress, "inetSocketAddress");
        q0.h(proxy, "proxy");
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        q0.h(call, "call");
        q0.h(inetSocketAddress, "inetSocketAddress");
        q0.h(proxy, "proxy");
        q0.h(iOException, "ioe");
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        q0.h(call, "call");
        q0.h(inetSocketAddress, "inetSocketAddress");
        q0.h(proxy, "proxy");
    }

    public void connectionAcquired(Call call, Connection connection) {
        q0.h(call, "call");
        q0.h(connection, "connection");
    }

    public void connectionReleased(Call call, Connection connection) {
        q0.h(call, "call");
        q0.h(connection, "connection");
    }

    public void dnsEnd(Call call, String str, List<InetAddress> list) {
        q0.h(call, "call");
        q0.h(str, "domainName");
        q0.h(list, "inetAddressList");
    }

    public void dnsStart(Call call, String str) {
        q0.h(call, "call");
        q0.h(str, "domainName");
    }

    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<Proxy> list) {
        q0.h(call, "call");
        q0.h(httpUrl, "url");
        q0.h(list, "proxies");
    }

    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        q0.h(call, "call");
        q0.h(httpUrl, "url");
    }

    public void requestBodyEnd(Call call, long j8) {
        q0.h(call, "call");
    }

    public void requestBodyStart(Call call) {
        q0.h(call, "call");
    }

    public void requestFailed(Call call, IOException iOException) {
        q0.h(call, "call");
        q0.h(iOException, "ioe");
    }

    public void requestHeadersEnd(Call call, Request request) {
        q0.h(call, "call");
        q0.h(request, "request");
    }

    public void requestHeadersStart(Call call) {
        q0.h(call, "call");
    }

    public void responseBodyEnd(Call call, long j8) {
        q0.h(call, "call");
    }

    public void responseBodyStart(Call call) {
        q0.h(call, "call");
    }

    public void responseFailed(Call call, IOException iOException) {
        q0.h(call, "call");
        q0.h(iOException, "ioe");
    }

    public void responseHeadersEnd(Call call, Response response) {
        q0.h(call, "call");
        q0.h(response, "response");
    }

    public void responseHeadersStart(Call call) {
        q0.h(call, "call");
    }

    public void satisfactionFailure(Call call, Response response) {
        q0.h(call, "call");
        q0.h(response, "response");
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        q0.h(call, "call");
    }

    public void secureConnectStart(Call call) {
        q0.h(call, "call");
    }
}
