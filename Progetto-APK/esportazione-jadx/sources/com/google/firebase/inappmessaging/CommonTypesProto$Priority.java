package com.google.firebase.inappmessaging;

import V4.C0361i;
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

/* JADX INFO: loaded from: classes.dex */
public final class CommonTypesProto$Priority extends AbstractC2909i1 implements R1 {
    private static final CommonTypesProto$Priority DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private int value_;

    static {
        CommonTypesProto$Priority commonTypesProto$Priority = new CommonTypesProto$Priority();
        DEFAULT_INSTANCE = commonTypesProto$Priority;
        AbstractC2909i1.registerDefaultInstance(CommonTypesProto$Priority.class, commonTypesProto$Priority);
    }

    private CommonTypesProto$Priority() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValue() {
        this.value_ = 0;
    }

    public static CommonTypesProto$Priority getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C0361i newBuilder() {
        return (C0361i) DEFAULT_INSTANCE.createBuilder();
    }

    public static CommonTypesProto$Priority parseDelimitedFrom(InputStream inputStream) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$Priority parseFrom(ByteBuffer byteBuffer) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i8) {
        this.value_ = i8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004", new Object[]{"value_"});
            case 3:
                return new CommonTypesProto$Priority();
            case 4:
                return new C0361i(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CommonTypesProto$Priority.class) {
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

    public int getValue() {
        return this.value_;
    }

    public static C0361i newBuilder(CommonTypesProto$Priority commonTypesProto$Priority) {
        return (C0361i) DEFAULT_INSTANCE.createBuilder(commonTypesProto$Priority);
    }

    public static CommonTypesProto$Priority parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$Priority parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CommonTypesProto$Priority parseFrom(r rVar) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CommonTypesProto$Priority parseFrom(r rVar, O0 o4) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CommonTypesProto$Priority parseFrom(byte[] bArr) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CommonTypesProto$Priority parseFrom(byte[] bArr, O0 o4) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CommonTypesProto$Priority parseFrom(InputStream inputStream) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$Priority parseFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$Priority parseFrom(AbstractC2961w abstractC2961w) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CommonTypesProto$Priority parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CommonTypesProto$Priority) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
