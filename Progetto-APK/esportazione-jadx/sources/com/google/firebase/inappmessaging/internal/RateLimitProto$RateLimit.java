package com.google.firebase.inappmessaging.internal;

import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.K1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
import p022c5.e;
import p022c5.f;

/* JADX INFO: loaded from: classes.dex */
public final class RateLimitProto$RateLimit extends AbstractC2909i1 implements R1 {
    private static final RateLimitProto$RateLimit DEFAULT_INSTANCE;
    public static final int LIMITS_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private K1 limits_ = K1.f24267H;

    static {
        RateLimitProto$RateLimit rateLimitProto$RateLimit = new RateLimitProto$RateLimit();
        DEFAULT_INSTANCE = rateLimitProto$RateLimit;
        AbstractC2909i1.registerDefaultInstance(RateLimitProto$RateLimit.class, rateLimitProto$RateLimit);
    }

    private RateLimitProto$RateLimit() {
    }

    public static RateLimitProto$RateLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, RateLimitProto$Counter> getMutableLimitsMap() {
        return internalGetMutableLimits();
    }

    private K1 internalGetLimits() {
        return this.limits_;
    }

    private K1 internalGetMutableLimits() {
        K1 k8 = this.limits_;
        if (!k8.f24268G) {
            this.limits_ = k8.c();
        }
        return this.limits_;
    }

    public static e newBuilder() {
        return (e) DEFAULT_INSTANCE.createBuilder();
    }

    public static RateLimitProto$RateLimit parseDelimitedFrom(InputStream inputStream) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RateLimitProto$RateLimit parseFrom(ByteBuffer byteBuffer) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public boolean containsLimits(String str) {
        str.getClass();
        return internalGetLimits().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"limits_", f.f11427a});
            case 3:
                return new RateLimitProto$RateLimit();
            case 4:
                return new e(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (RateLimitProto$RateLimit.class) {
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

    @Deprecated
    public Map<String, RateLimitProto$Counter> getLimits() {
        return getLimitsMap();
    }

    public int getLimitsCount() {
        return internalGetLimits().size();
    }

    public Map<String, RateLimitProto$Counter> getLimitsMap() {
        return Collections.unmodifiableMap(internalGetLimits());
    }

    public RateLimitProto$Counter getLimitsOrDefault(String str, RateLimitProto$Counter rateLimitProto$Counter) {
        str.getClass();
        K1 k1InternalGetLimits = internalGetLimits();
        return k1InternalGetLimits.containsKey(str) ? (RateLimitProto$Counter) k1InternalGetLimits.get(str) : rateLimitProto$Counter;
    }

    public RateLimitProto$Counter getLimitsOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetLimits = internalGetLimits();
        if (k1InternalGetLimits.containsKey(str)) {
            return (RateLimitProto$Counter) k1InternalGetLimits.get(str);
        }
        throw new IllegalArgumentException();
    }

    public static e newBuilder(RateLimitProto$RateLimit rateLimitProto$RateLimit) {
        return (e) DEFAULT_INSTANCE.createBuilder(rateLimitProto$RateLimit);
    }

    public static RateLimitProto$RateLimit parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static RateLimitProto$RateLimit parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static RateLimitProto$RateLimit parseFrom(r rVar) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static RateLimitProto$RateLimit parseFrom(r rVar, O0 o4) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static RateLimitProto$RateLimit parseFrom(byte[] bArr) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static RateLimitProto$RateLimit parseFrom(byte[] bArr, O0 o4) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static RateLimitProto$RateLimit parseFrom(InputStream inputStream) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RateLimitProto$RateLimit parseFrom(InputStream inputStream, O0 o4) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static RateLimitProto$RateLimit parseFrom(AbstractC2961w abstractC2961w) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static RateLimitProto$RateLimit parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (RateLimitProto$RateLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
