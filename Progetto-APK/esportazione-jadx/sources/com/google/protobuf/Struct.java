package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Struct extends AbstractC2909i1 implements R1 {
    private static final Struct DEFAULT_INSTANCE;
    public static final int FIELDS_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private K1 fields_ = K1.f24267H;

    static {
        Struct struct = new Struct();
        DEFAULT_INSTANCE = struct;
        AbstractC2909i1.registerDefaultInstance(Struct.class, struct);
    }

    private Struct() {
    }

    public static Struct getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Value> getMutableFieldsMap() {
        return internalGetMutableFields();
    }

    private K1 internalGetFields() {
        return this.fields_;
    }

    private K1 internalGetMutableFields() {
        K1 k8 = this.fields_;
        if (!k8.f24268G) {
            this.fields_ = k8.c();
        }
        return this.fields_;
    }

    public static C2945r2 newBuilder() {
        return (C2945r2) DEFAULT_INSTANCE.createBuilder();
    }

    public static Struct parseDelimitedFrom(InputStream inputStream) {
        return (Struct) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Struct parseFrom(ByteBuffer byteBuffer) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public boolean containsFields(String str) {
        str.getClass();
        return internalGetFields().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"fields_", AbstractC2949s2.f24494a});
            case 3:
                return new Struct();
            case 4:
                return new C2945r2(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Struct.class) {
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
    public Map<String, Value> getFields() {
        return getFieldsMap();
    }

    public int getFieldsCount() {
        return internalGetFields().size();
    }

    public Map<String, Value> getFieldsMap() {
        return Collections.unmodifiableMap(internalGetFields());
    }

    public Value getFieldsOrDefault(String str, Value value) {
        str.getClass();
        K1 k1InternalGetFields = internalGetFields();
        return k1InternalGetFields.containsKey(str) ? (Value) k1InternalGetFields.get(str) : value;
    }

    public Value getFieldsOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetFields = internalGetFields();
        if (k1InternalGetFields.containsKey(str)) {
            return (Value) k1InternalGetFields.get(str);
        }
        throw new IllegalArgumentException();
    }

    public static C2945r2 newBuilder(Struct struct) {
        return (C2945r2) DEFAULT_INSTANCE.createBuilder(struct);
    }

    public static Struct parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Struct) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Struct parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Struct parseFrom(r rVar) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static Struct parseFrom(r rVar, O0 o4) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Struct parseFrom(byte[] bArr) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Struct parseFrom(byte[] bArr, O0 o4) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Struct parseFrom(InputStream inputStream) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Struct parseFrom(InputStream inputStream, O0 o4) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Struct parseFrom(AbstractC2961w abstractC2961w) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Struct parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Struct) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
