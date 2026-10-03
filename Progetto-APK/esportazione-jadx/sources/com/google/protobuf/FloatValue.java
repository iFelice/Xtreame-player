package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatValue extends AbstractC2909i1 implements R1 {
    private static final FloatValue DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private float value_;

    static {
        FloatValue floatValue = new FloatValue();
        DEFAULT_INSTANCE = floatValue;
        AbstractC2909i1.registerDefaultInstance(FloatValue.class, floatValue);
    }

    private FloatValue() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValue() {
        this.value_ = 0.0f;
    }

    public static FloatValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Z0 newBuilder() {
        return (Z0) DEFAULT_INSTANCE.createBuilder();
    }

    public static FloatValue of(float f8) {
        Z0 z0NewBuilder = newBuilder();
        z0NewBuilder.d();
        ((FloatValue) z0NewBuilder.f24413H).setValue(f8);
        return (FloatValue) z0NewBuilder.b();
    }

    public static FloatValue parseDelimitedFrom(InputStream inputStream) {
        return (FloatValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FloatValue parseFrom(ByteBuffer byteBuffer) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(float f8) {
        this.value_ = f8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001", new Object[]{"value_"});
            case 3:
                return new FloatValue();
            case 4:
                return new Z0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (FloatValue.class) {
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

    public float getValue() {
        return this.value_;
    }

    public static Z0 newBuilder(FloatValue floatValue) {
        return (Z0) DEFAULT_INSTANCE.createBuilder(floatValue);
    }

    public static FloatValue parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (FloatValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static FloatValue parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static FloatValue parseFrom(r rVar) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static FloatValue parseFrom(r rVar, O0 o4) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static FloatValue parseFrom(byte[] bArr) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static FloatValue parseFrom(byte[] bArr, O0 o4) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static FloatValue parseFrom(InputStream inputStream) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FloatValue parseFrom(InputStream inputStream, O0 o4) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static FloatValue parseFrom(AbstractC2961w abstractC2961w) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static FloatValue parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (FloatValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
