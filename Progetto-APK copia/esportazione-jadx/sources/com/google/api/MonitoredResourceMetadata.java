package com.google.api;

import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.C2945r2;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.K1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.Struct;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
import p175w4.C3207d0;
import p175w4.e0;

/* JADX INFO: loaded from: classes.dex */
public final class MonitoredResourceMetadata extends AbstractC2909i1 implements R1 {
    private static final MonitoredResourceMetadata DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int SYSTEM_LABELS_FIELD_NUMBER = 1;
    public static final int USER_LABELS_FIELD_NUMBER = 2;
    private int bitField0_;
    private Struct systemLabels_;
    private K1 userLabels_ = K1.f24267H;

    static {
        MonitoredResourceMetadata monitoredResourceMetadata = new MonitoredResourceMetadata();
        DEFAULT_INSTANCE = monitoredResourceMetadata;
        AbstractC2909i1.registerDefaultInstance(MonitoredResourceMetadata.class, monitoredResourceMetadata);
    }

    private MonitoredResourceMetadata() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSystemLabels() {
        this.systemLabels_ = null;
        this.bitField0_ &= -2;
    }

    public static MonitoredResourceMetadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getMutableUserLabelsMap() {
        return internalGetMutableUserLabels();
    }

    private K1 internalGetMutableUserLabels() {
        K1 k8 = this.userLabels_;
        if (!k8.f24268G) {
            this.userLabels_ = k8.c();
        }
        return this.userLabels_;
    }

    private K1 internalGetUserLabels() {
        return this.userLabels_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeSystemLabels(Struct struct) {
        struct.getClass();
        Struct struct2 = this.systemLabels_;
        if (struct2 == null || struct2 == Struct.getDefaultInstance()) {
            this.systemLabels_ = struct;
        } else {
            C2945r2 c2945r2NewBuilder = Struct.newBuilder(this.systemLabels_);
            c2945r2NewBuilder.g(struct);
            this.systemLabels_ = (Struct) c2945r2NewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static C3207d0 newBuilder() {
        return (C3207d0) DEFAULT_INSTANCE.createBuilder();
    }

    public static MonitoredResourceMetadata parseDelimitedFrom(InputStream inputStream) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MonitoredResourceMetadata parseFrom(ByteBuffer byteBuffer) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSystemLabels(Struct struct) {
        struct.getClass();
        this.systemLabels_ = struct;
        this.bitField0_ |= 1;
    }

    public boolean containsUserLabels(String str) {
        str.getClass();
        return internalGetUserLabels().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001ဉ\u0000\u00022", new Object[]{"bitField0_", "systemLabels_", "userLabels_", e0.f31056a});
            case 3:
                return new MonitoredResourceMetadata();
            case 4:
                return new C3207d0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MonitoredResourceMetadata.class) {
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

    public Struct getSystemLabels() {
        Struct struct = this.systemLabels_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    @Deprecated
    public Map<String, String> getUserLabels() {
        return getUserLabelsMap();
    }

    public int getUserLabelsCount() {
        return internalGetUserLabels().size();
    }

    public Map<String, String> getUserLabelsMap() {
        return Collections.unmodifiableMap(internalGetUserLabels());
    }

    public String getUserLabelsOrDefault(String str, String str2) {
        str.getClass();
        K1 k1InternalGetUserLabels = internalGetUserLabels();
        return k1InternalGetUserLabels.containsKey(str) ? (String) k1InternalGetUserLabels.get(str) : str2;
    }

    public String getUserLabelsOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetUserLabels = internalGetUserLabels();
        if (k1InternalGetUserLabels.containsKey(str)) {
            return (String) k1InternalGetUserLabels.get(str);
        }
        throw new IllegalArgumentException();
    }

    public boolean hasSystemLabels() {
        return (this.bitField0_ & 1) != 0;
    }

    public static C3207d0 newBuilder(MonitoredResourceMetadata monitoredResourceMetadata) {
        return (C3207d0) DEFAULT_INSTANCE.createBuilder(monitoredResourceMetadata);
    }

    public static MonitoredResourceMetadata parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MonitoredResourceMetadata parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MonitoredResourceMetadata parseFrom(r rVar) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MonitoredResourceMetadata parseFrom(r rVar, O0 o4) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MonitoredResourceMetadata parseFrom(byte[] bArr) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MonitoredResourceMetadata parseFrom(byte[] bArr, O0 o4) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MonitoredResourceMetadata parseFrom(InputStream inputStream) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MonitoredResourceMetadata parseFrom(InputStream inputStream, O0 o4) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MonitoredResourceMetadata parseFrom(AbstractC2961w abstractC2961w) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MonitoredResourceMetadata parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MonitoredResourceMetadata) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
