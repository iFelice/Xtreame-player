package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class StringValue extends AbstractC2909i1 implements R1 {
    private static final StringValue DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private String value_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        StringValue stringValue = new StringValue();
        DEFAULT_INSTANCE = stringValue;
        AbstractC2909i1.registerDefaultInstance(StringValue.class, stringValue);
    }

    private StringValue() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValue() {
        this.value_ = getDefaultInstance().getValue();
    }

    public static StringValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2942q2 newBuilder() {
        return (C2942q2) DEFAULT_INSTANCE.createBuilder();
    }

    public static StringValue of(String str) {
        C2942q2 c2942q2NewBuilder = newBuilder();
        c2942q2NewBuilder.d();
        ((StringValue) c2942q2NewBuilder.f24413H).setValue(str);
        return (StringValue) c2942q2NewBuilder.b();
    }

    public static StringValue parseDelimitedFrom(InputStream inputStream) {
        return (StringValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static StringValue parseFrom(ByteBuffer byteBuffer) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(String str) {
        str.getClass();
        this.value_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.value_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"value_"});
            case 3:
                return new StringValue();
            case 4:
                return new C2942q2(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (StringValue.class) {
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

    public String getValue() {
        return this.value_;
    }

    public r getValueBytes() {
        return r.l(this.value_);
    }

    public static C2942q2 newBuilder(StringValue stringValue) {
        return (C2942q2) DEFAULT_INSTANCE.createBuilder(stringValue);
    }

    public static StringValue parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (StringValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static StringValue parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static StringValue parseFrom(r rVar) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static StringValue parseFrom(r rVar, O0 o4) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static StringValue parseFrom(byte[] bArr) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static StringValue parseFrom(byte[] bArr, O0 o4) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static StringValue parseFrom(InputStream inputStream) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static StringValue parseFrom(InputStream inputStream, O0 o4) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static StringValue parseFrom(AbstractC2961w abstractC2961w) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static StringValue parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (StringValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
