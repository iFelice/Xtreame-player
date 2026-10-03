package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class Empty extends AbstractC2909i1 implements R1 {
    private static final Empty DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER;

    static {
        Empty empty = new Empty();
        DEFAULT_INSTANCE = empty;
        AbstractC2909i1.registerDefaultInstance(Empty.class, empty);
    }

    private Empty() {
    }

    public static Empty getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static G0 newBuilder() {
        return (G0) DEFAULT_INSTANCE.createBuilder();
    }

    public static Empty parseDelimitedFrom(InputStream inputStream) {
        return (Empty) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Empty parseFrom(ByteBuffer byteBuffer) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0000", null);
            case 3:
                return new Empty();
            case 4:
                return new G0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Empty.class) {
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

    public static G0 newBuilder(Empty empty) {
        return (G0) DEFAULT_INSTANCE.createBuilder(empty);
    }

    public static Empty parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Empty) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Empty parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Empty parseFrom(r rVar) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static Empty parseFrom(r rVar, O0 o4) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Empty parseFrom(byte[] bArr) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Empty parseFrom(byte[] bArr, O0 o4) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Empty parseFrom(InputStream inputStream) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Empty parseFrom(InputStream inputStream, O0 o4) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Empty parseFrom(AbstractC2961w abstractC2961w) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Empty parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Empty) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
