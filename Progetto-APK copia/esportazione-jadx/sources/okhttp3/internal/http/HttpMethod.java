package okhttp3.internal.http;

import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(String str) {
        q0.h(str, "method");
        return (q0.c(str, "GET") || q0.c(str, "HEAD")) ? false : true;
    }

    public static final boolean requiresRequestBody(String str) {
        q0.h(str, "method");
        return q0.c(str, "POST") || q0.c(str, "PUT") || q0.c(str, "PATCH") || q0.c(str, "PROPPATCH") || q0.c(str, "REPORT");
    }

    public final boolean invalidatesCache(String str) {
        q0.h(str, "method");
        return q0.c(str, "POST") || q0.c(str, "PATCH") || q0.c(str, "PUT") || q0.c(str, "DELETE") || q0.c(str, "MOVE");
    }

    public final boolean redirectsToGet(String str) {
        q0.h(str, "method");
        return !q0.c(str, "PROPFIND");
    }

    public final boolean redirectsWithBody(String str) {
        q0.h(str, "method");
        return q0.c(str, "PROPFIND");
    }
}
