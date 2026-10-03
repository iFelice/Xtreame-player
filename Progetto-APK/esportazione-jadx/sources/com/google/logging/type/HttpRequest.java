package com.google.logging.type;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.Duration;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.F0;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import p099m5.a;

/* JADX INFO: loaded from: classes.dex */
public final class HttpRequest extends AbstractC2909i1 implements R1 {
    public static final int CACHE_FILL_BYTES_FIELD_NUMBER = 12;
    public static final int CACHE_HIT_FIELD_NUMBER = 9;
    public static final int CACHE_LOOKUP_FIELD_NUMBER = 11;
    public static final int CACHE_VALIDATED_WITH_ORIGIN_SERVER_FIELD_NUMBER = 10;
    private static final HttpRequest DEFAULT_INSTANCE;
    public static final int LATENCY_FIELD_NUMBER = 14;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PROTOCOL_FIELD_NUMBER = 15;
    public static final int REFERER_FIELD_NUMBER = 8;
    public static final int REMOTE_IP_FIELD_NUMBER = 7;
    public static final int REQUEST_METHOD_FIELD_NUMBER = 1;
    public static final int REQUEST_SIZE_FIELD_NUMBER = 3;
    public static final int REQUEST_URL_FIELD_NUMBER = 2;
    public static final int RESPONSE_SIZE_FIELD_NUMBER = 5;
    public static final int SERVER_IP_FIELD_NUMBER = 13;
    public static final int STATUS_FIELD_NUMBER = 4;
    public static final int USER_AGENT_FIELD_NUMBER = 6;
    private int bitField0_;
    private long cacheFillBytes_;
    private boolean cacheHit_;
    private boolean cacheLookup_;
    private boolean cacheValidatedWithOriginServer_;
    private Duration latency_;
    private long requestSize_;
    private long responseSize_;
    private int status_;
    private String requestMethod_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String requestUrl_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String userAgent_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String remoteIp_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String serverIp_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String referer_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String protocol_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        HttpRequest httpRequest = new HttpRequest();
        DEFAULT_INSTANCE = httpRequest;
        AbstractC2909i1.registerDefaultInstance(HttpRequest.class, httpRequest);
    }

    private HttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCacheFillBytes() {
        this.cacheFillBytes_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCacheHit() {
        this.cacheHit_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCacheLookup() {
        this.cacheLookup_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCacheValidatedWithOriginServer() {
        this.cacheValidatedWithOriginServer_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLatency() {
        this.latency_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProtocol() {
        this.protocol_ = getDefaultInstance().getProtocol();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearReferer() {
        this.referer_ = getDefaultInstance().getReferer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRemoteIp() {
        this.remoteIp_ = getDefaultInstance().getRemoteIp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestMethod() {
        this.requestMethod_ = getDefaultInstance().getRequestMethod();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestSize() {
        this.requestSize_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequestUrl() {
        this.requestUrl_ = getDefaultInstance().getRequestUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearResponseSize() {
        this.responseSize_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearServerIp() {
        this.serverIp_ = getDefaultInstance().getServerIp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStatus() {
        this.status_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUserAgent() {
        this.userAgent_ = getDefaultInstance().getUserAgent();
    }

    public static HttpRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeLatency(Duration duration) {
        duration.getClass();
        Duration duration2 = this.latency_;
        if (duration2 == null || duration2 == Duration.getDefaultInstance()) {
            this.latency_ = duration;
        } else {
            F0 f0NewBuilder = Duration.newBuilder(this.latency_);
            f0NewBuilder.g(duration);
            this.latency_ = (Duration) f0NewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static a newBuilder() {
        return (a) DEFAULT_INSTANCE.createBuilder();
    }

    public static HttpRequest parseDelimitedFrom(InputStream inputStream) {
        return (HttpRequest) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static HttpRequest parseFrom(ByteBuffer byteBuffer) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCacheFillBytes(long j8) {
        this.cacheFillBytes_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCacheHit(boolean z7) {
        this.cacheHit_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCacheLookup(boolean z7) {
        this.cacheLookup_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCacheValidatedWithOriginServer(boolean z7) {
        this.cacheValidatedWithOriginServer_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLatency(Duration duration) {
        duration.getClass();
        this.latency_ = duration;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProtocol(String str) {
        str.getClass();
        this.protocol_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProtocolBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.protocol_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReferer(String str) {
        str.getClass();
        this.referer_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRefererBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.referer_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRemoteIp(String str) {
        str.getClass();
        this.remoteIp_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRemoteIpBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.remoteIp_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestMethod(String str) {
        str.getClass();
        this.requestMethod_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestMethodBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.requestMethod_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestSize(long j8) {
        this.requestSize_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestUrl(String str) {
        str.getClass();
        this.requestUrl_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequestUrlBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.requestUrl_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResponseSize(long j8) {
        this.responseSize_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setServerIp(String str) {
        str.getClass();
        this.serverIp_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setServerIpBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.serverIp_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatus(int i8) {
        this.status_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserAgent(String str) {
        str.getClass();
        this.userAgent_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserAgentBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.userAgent_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0004\u0005\u0002\u0006Ȉ\u0007Ȉ\bȈ\t\u0007\n\u0007\u000b\u0007\f\u0002\rȈ\u000eဉ\u0000\u000fȈ", new Object[]{"bitField0_", "requestMethod_", "requestUrl_", "requestSize_", "status_", "responseSize_", "userAgent_", "remoteIp_", "referer_", "cacheHit_", "cacheValidatedWithOriginServer_", "cacheLookup_", "cacheFillBytes_", "serverIp_", "latency_", "protocol_"});
            case 3:
                return new HttpRequest();
            case 4:
                return new a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (HttpRequest.class) {
                        try {
                            c2885c1 = PARSER;
                            if (c2885c1 == null) {
                                c2885c1 = new C2885c1(DEFAULT_INSTANCE);
                                PARSER = c2885c1;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c2885c1;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public long getCacheFillBytes() {
        return this.cacheFillBytes_;
    }

    public boolean getCacheHit() {
        return this.cacheHit_;
    }

    public boolean getCacheLookup() {
        return this.cacheLookup_;
    }

    public boolean getCacheValidatedWithOriginServer() {
        return this.cacheValidatedWithOriginServer_;
    }

    public Duration getLatency() {
        Duration duration = this.latency_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public String getProtocol() {
        return this.protocol_;
    }

    public r getProtocolBytes() {
        return r.l(this.protocol_);
    }

    public String getReferer() {
        return this.referer_;
    }

    public r getRefererBytes() {
        return r.l(this.referer_);
    }

    public String getRemoteIp() {
        return this.remoteIp_;
    }

    public r getRemoteIpBytes() {
        return r.l(this.remoteIp_);
    }

    public String getRequestMethod() {
        return this.requestMethod_;
    }

    public r getRequestMethodBytes() {
        return r.l(this.requestMethod_);
    }

    public long getRequestSize() {
        return this.requestSize_;
    }

    public String getRequestUrl() {
        return this.requestUrl_;
    }

    public r getRequestUrlBytes() {
        return r.l(this.requestUrl_);
    }

    public long getResponseSize() {
        return this.responseSize_;
    }

    public String getServerIp() {
        return this.serverIp_;
    }

    public r getServerIpBytes() {
        return r.l(this.serverIp_);
    }

    public int getStatus() {
        return this.status_;
    }

    public String getUserAgent() {
        return this.userAgent_;
    }

    public r getUserAgentBytes() {
        return r.l(this.userAgent_);
    }

    public boolean hasLatency() {
        return (this.bitField0_ & 1) != 0;
    }

    public static a newBuilder(HttpRequest httpRequest) {
        return (a) DEFAULT_INSTANCE.createBuilder(httpRequest);
    }

    public static HttpRequest parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (HttpRequest) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static HttpRequest parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static HttpRequest parseFrom(r rVar) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static HttpRequest parseFrom(r rVar, O0 o4) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static HttpRequest parseFrom(byte[] bArr) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static HttpRequest parseFrom(byte[] bArr, O0 o4) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static HttpRequest parseFrom(InputStream inputStream) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static HttpRequest parseFrom(InputStream inputStream, O0 o4) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static HttpRequest parseFrom(AbstractC2961w abstractC2961w) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static HttpRequest parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (HttpRequest) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
