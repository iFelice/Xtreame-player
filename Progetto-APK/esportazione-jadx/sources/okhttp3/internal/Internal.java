package okhttp3.internal;

import javax.net.ssl.SSLSocket;
import okhttp3.Cache;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Internal {
    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String str) {
        q0.h(builder, "builder");
        q0.h(str, "line");
        return builder.addLenient$okhttp(str);
    }

    public static final void applyConnectionSpec(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z7) {
        q0.h(connectionSpec, "connectionSpec");
        q0.h(sSLSocket, "sslSocket");
        connectionSpec.apply$okhttp(sSLSocket, z7);
    }

    public static final Response cacheGet(Cache cache, Request request) {
        q0.h(cache, "cache");
        q0.h(request, "request");
        return cache.get$okhttp(request);
    }

    public static final String cookieToString(Cookie cookie, boolean z7) {
        q0.h(cookie, "cookie");
        return cookie.toString$okhttp(z7);
    }

    public static final Cookie parseCookie(long j8, HttpUrl httpUrl, String str) {
        q0.h(httpUrl, "url");
        q0.h(str, "setCookie");
        return Cookie.Companion.parse$okhttp(j8, httpUrl, str);
    }

    public static final Headers.Builder addHeaderLenient(Headers.Builder builder, String str, String str2) {
        q0.h(builder, "builder");
        q0.h(str, "name");
        q0.h(str2, "value");
        return builder.addLenient$okhttp(str, str2);
    }
}
