package com.google.firebase.inappmessaging.internal;

import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p022c5.d;

/* JADX INFO: loaded from: classes.dex */
public final class RateLimitProto$Counter extends AbstractC2909i1 implements R1 {
    private static final RateLimitProto$Counter DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int START_TIME_EPOCH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 1;
    private long startTimeEpoch_;
    private long value_;

    static {
        RateLimitProto$Counter rateLimitProto$Counter = new RateLimitProto$Counter();
        DEFAULT_INSTANCE = rateLimitProto$Counter;
        AbstractC2909i1.registerDefaultInstance(RateLimitProto$Counter.class, rateLimitProto$Counter);
    }

    private RateLimitProto$Counter() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStartTimeEpoch() {
        this.startTimeEpoch_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValue() {
        this.value_ = 0L;
    }

    public static RateLimitProto$Counter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static d newBuilder() {
        return (d) DEFAULT_INSTANCE.createBuilder();
    }

    public static RateLimitProto$Counter parseDelimitedFrom(InputStream inputStream) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RateLimitProto$Counter parseFrom(ByteBuffer byteBuffer) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStartTimeEpoch(long j8) {
        this.startTimeEpoch_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(long j8) {
        this.value_ = j8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002", new Object[]{"value_", "startTimeEpoch_"});
            case 3:
                return new RateLimitProto$Counter();
            case 4:
                return new d(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (RateLimitProto$Counter.class) {
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

    public long getStartTimeEpoch() {
        return this.startTimeEpoch_;
    }

    public long getValue() {
        return this.value_;
    }

    public static d newBuilder(RateLimitProto$Counter rateLimitProto$Counter) {
        return (d) DEFAULT_INSTANCE.createBuilder(rateLimitProto$Counter);
    }

    public static RateLimitProto$Counter parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static RateLimitProto$Counter parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static RateLimitProto$Counter parseFrom(r rVar) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static RateLimitProto$Counter parseFrom(r rVar, O0 o4) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static RateLimitProto$Counter parseFrom(byte[] bArr) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static RateLimitProto$Counter parseFrom(byte[] bArr, O0 o4) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static RateLimitProto$Counter parseFrom(InputStream inputStream) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static RateLimitProto$Counter parseFrom(InputStream inputStream, O0 o4) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static RateLimitProto$Counter parseFrom(AbstractC2961w abstractC2961w) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static RateLimitProto$Counter parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (RateLimitProto$Counter) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
