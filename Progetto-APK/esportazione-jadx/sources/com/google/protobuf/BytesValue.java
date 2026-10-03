package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class BytesValue extends AbstractC2909i1 implements R1 {
    private static final BytesValue DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private r value_ = r.f24491H;

    static {
        BytesValue bytesValue = new BytesValue();
        DEFAULT_INSTANCE = bytesValue;
        AbstractC2909i1.registerDefaultInstance(BytesValue.class, bytesValue);
    }

    private BytesValue() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValue() {
        this.value_ = getDefaultInstance().getValue();
    }

    public static BytesValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2946s newBuilder() {
        return (C2946s) DEFAULT_INSTANCE.createBuilder();
    }

    public static BytesValue of(r rVar) {
        C2946s c2946sNewBuilder = newBuilder();
        c2946sNewBuilder.d();
        ((BytesValue) c2946sNewBuilder.f24413H).setValue(rVar);
        return (BytesValue) c2946sNewBuilder.b();
    }

    public static BytesValue parseDelimitedFrom(InputStream inputStream) {
        return (BytesValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BytesValue parseFrom(ByteBuffer byteBuffer) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(r rVar) {
        rVar.getClass();
        this.value_ = rVar;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"value_"});
            case 3:
                return new BytesValue();
            case 4:
                return new C2946s(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (BytesValue.class) {
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

    public r getValue() {
        return this.value_;
    }

    public static C2946s newBuilder(BytesValue bytesValue) {
        return (C2946s) DEFAULT_INSTANCE.createBuilder(bytesValue);
    }

    public static BytesValue parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (BytesValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static BytesValue parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static BytesValue parseFrom(r rVar) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static BytesValue parseFrom(r rVar, O0 o4) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static BytesValue parseFrom(byte[] bArr) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BytesValue parseFrom(byte[] bArr, O0 o4) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static BytesValue parseFrom(InputStream inputStream) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BytesValue parseFrom(InputStream inputStream, O0 o4) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static BytesValue parseFrom(AbstractC2961w abstractC2961w) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static BytesValue parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (BytesValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
