package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FieldMask extends AbstractC2909i1 implements R1 {
    private static final FieldMask DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PATHS_FIELD_NUMBER = 1;
    private InterfaceC2956u1 paths_ = AbstractC2909i1.emptyProtobufList();

    static {
        FieldMask fieldMask = new FieldMask();
        DEFAULT_INSTANCE = fieldMask;
        AbstractC2909i1.registerDefaultInstance(FieldMask.class, fieldMask);
    }

    private FieldMask() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllPaths(Iterable<String> iterable) {
        ensurePathsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.paths_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPaths(String str) {
        str.getClass();
        ensurePathsIsMutable();
        this.paths_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPathsBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensurePathsIsMutable();
        this.paths_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPaths() {
        this.paths_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensurePathsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.paths_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.paths_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static FieldMask getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static U0 newBuilder() {
        return (U0) DEFAULT_INSTANCE.createBuilder();
    }

    public static FieldMask parseDelimitedFrom(InputStream inputStream) {
        return (FieldMask) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FieldMask parseFrom(ByteBuffer byteBuffer) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPaths(int i8, String str) {
        str.getClass();
        ensurePathsIsMutable();
        this.paths_.set(i8, str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001Ț", new Object[]{"paths_"});
            case 3:
                return new FieldMask();
            case 4:
                return new U0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (FieldMask.class) {
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

    public String getPaths(int i8) {
        return (String) this.paths_.get(i8);
    }

    public r getPathsBytes(int i8) {
        return r.l((String) this.paths_.get(i8));
    }

    public int getPathsCount() {
        return this.paths_.size();
    }

    public List<String> getPathsList() {
        return this.paths_;
    }

    public static U0 newBuilder(FieldMask fieldMask) {
        return (U0) DEFAULT_INSTANCE.createBuilder(fieldMask);
    }

    public static FieldMask parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (FieldMask) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static FieldMask parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static FieldMask parseFrom(r rVar) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static FieldMask parseFrom(r rVar, O0 o4) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static FieldMask parseFrom(byte[] bArr) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static FieldMask parseFrom(byte[] bArr, O0 o4) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static FieldMask parseFrom(InputStream inputStream) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FieldMask parseFrom(InputStream inputStream, O0 o4) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static FieldMask parseFrom(AbstractC2961w abstractC2961w) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static FieldMask parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (FieldMask) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
