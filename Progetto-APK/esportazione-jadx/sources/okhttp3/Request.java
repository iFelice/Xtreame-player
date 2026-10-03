package okhttp3;

import I6.k;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import p000a.r;
import p027d2.v;
import p155t6.c;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Request {
    private final RequestBody body;
    private final Headers headers;
    private CacheControl lazyCacheControl;
    private final String method;
    private final Map<Class<?>, Object> tags;
    private final HttpUrl url;

    public static class Builder {
        private RequestBody body;
        private Headers.Builder headers;
        private String method;
        private Map<Class<?>, Object> tags;
        private HttpUrl url;

        public Builder() {
            this.tags = new LinkedHashMap();
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i8, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i8 & 1) != 0) {
                requestBody = Util.EMPTY_REQUEST;
            }
            return builder.delete(requestBody);
        }

        public Builder addHeader(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            this.headers.add(str, str2);
            return this;
        }

        public Request build() {
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new Request(httpUrl, this.method, this.headers.build(), this.body, Util.toImmutableMap(this.tags));
            }
            throw new IllegalStateException("url == null".toString());
        }

        public Builder cacheControl(CacheControl cacheControl) {
            q0.h(cacheControl, "cacheControl");
            String string = cacheControl.toString();
            return string.length() == 0 ? removeHeader("Cache-Control") : header("Cache-Control", string);
        }

        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        public Builder get() {
            return method("GET", null);
        }

        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        public final String getMethod$okhttp() {
            return this.method;
        }

        public final Map<Class<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        public Builder head() {
            return method("HEAD", null);
        }

        public Builder header(String str, String str2) {
            q0.h(str, "name");
            q0.h(str2, "value");
            this.headers.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            q0.h(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder method(String str, RequestBody requestBody) {
            q0.h(str, "method");
            if (str.length() <= 0) {
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            if (requestBody == null) {
                if (!(!HttpMethod.requiresRequestBody(str))) {
                    throw new IllegalArgumentException(r.g("method ", str, " must have a request body.").toString());
                }
            } else if (!HttpMethod.permitsRequestBody(str)) {
                throw new IllegalArgumentException(r.g("method ", str, " must not have a request body.").toString());
            }
            this.method = str;
            this.body = requestBody;
            return this;
        }

        public Builder patch(RequestBody requestBody) {
            q0.h(requestBody, "body");
            return method("PATCH", requestBody);
        }

        public Builder post(RequestBody requestBody) {
            q0.h(requestBody, "body");
            return method("POST", requestBody);
        }

        public Builder put(RequestBody requestBody) {
            q0.h(requestBody, "body");
            return method("PUT", requestBody);
        }

        public Builder removeHeader(String str) {
            q0.h(str, "name");
            this.headers.removeAll(str);
            return this;
        }

        public final void setBody$okhttp(RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(Headers.Builder builder) {
            q0.h(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(String str) {
            q0.h(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(Map<Class<?>, Object> map) {
            q0.h(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        public Builder tag(Object obj) {
            return tag(Object.class, obj);
        }

        public Builder url(HttpUrl httpUrl) {
            q0.h(httpUrl, "url");
            this.url = httpUrl;
            return this;
        }

        public Builder delete(RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        public <T> Builder tag(Class<? super T> cls, T t7) {
            q0.h(cls, "type");
            if (t7 == null) {
                this.tags.remove(cls);
            } else {
                if (this.tags.isEmpty()) {
                    this.tags = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.tags;
                T tCast = cls.cast(t7);
                q0.e(tCast);
                map.put(cls, tCast);
            }
            return this;
        }

        public Builder url(String str) {
            q0.h(str, "url");
            if (k.U0(str, "ws:", true)) {
                String strSubstring = str.substring(3);
                q0.g(strSubstring, "this as java.lang.String).substring(startIndex)");
                str = "http:".concat(strSubstring);
            } else if (k.U0(str, "wss:", true)) {
                String strSubstring2 = str.substring(4);
                q0.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
                str = "https:".concat(strSubstring2);
            }
            return url(HttpUrl.Companion.get(str));
        }

        public Builder(Request request) {
            LinkedHashMap linkedHashMap;
            q0.h(request, "request");
            this.tags = new LinkedHashMap();
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            if (request.getTags$okhttp().isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> tags$okhttp = request.getTags$okhttp();
                q0.h(tags$okhttp, "<this>");
                linkedHashMap = new LinkedHashMap(tags$okhttp);
            }
            this.tags = linkedHashMap;
            this.headers = request.headers().newBuilder();
        }

        public Builder url(URL url) {
            q0.h(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String string = url.toString();
            q0.g(string, "url.toString()");
            return url(companion.get(string));
        }
    }

    public Request(HttpUrl httpUrl, String str, Headers headers, RequestBody requestBody, Map<Class<?>, ? extends Object> map) {
        q0.h(httpUrl, "url");
        q0.h(str, "method");
        q0.h(headers, "headers");
        q0.h(map, "tags");
        this.url = httpUrl;
        this.method = str;
        this.headers = headers;
        this.body = requestBody;
        this.tags = map;
    }

    /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
    public final RequestBody m123deprecated_body() {
        return this.body;
    }

    /* JADX INFO: renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m124deprecated_cacheControl() {
        return cacheControl();
    }

    /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
    public final Headers m125deprecated_headers() {
        return this.headers;
    }

    /* JADX INFO: renamed from: -deprecated_method, reason: not valid java name */
    public final String m126deprecated_method() {
        return this.method;
    }

    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final HttpUrl m127deprecated_url() {
        return this.url;
    }

    public final RequestBody body() {
        return this.body;
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    public final Map<Class<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    public final String header(String str) {
        q0.h(str, "name");
        return this.headers.get(str);
    }

    public final Headers headers() {
        return this.headers;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    public final String method() {
        return this.method;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final Object tag() {
        return tag(Object.class);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        if (this.headers.size() != 0) {
            sb.append(", headers=[");
            int i8 = 0;
            for (c cVar : this.headers) {
                int i9 = i8 + 1;
                if (i8 < 0) {
                    v.u();
                    throw null;
                }
                c cVar2 = cVar;
                String str = (String) cVar2.f30311G;
                String str2 = (String) cVar2.f30312H;
                if (i8 > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                sb.append(str2);
                i8 = i9;
            }
            sb.append(']');
        }
        if (!this.tags.isEmpty()) {
            sb.append(", tags=");
            sb.append(this.tags);
        }
        sb.append('}');
        String string = sb.toString();
        q0.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final HttpUrl url() {
        return this.url;
    }

    public final List<String> headers(String str) {
        q0.h(str, "name");
        return this.headers.values(str);
    }

    public final <T> T tag(Class<? extends T> cls) {
        q0.h(cls, "type");
        return cls.cast(this.tags.get(cls));
    }
}
