package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class DescriptorProtos$OneofDescriptorProto extends AbstractC2909i1 implements InterfaceC2943r0 {
    private static final DescriptorProtos$OneofDescriptorProto DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER;
    private int bitField0_;
    private byte memoizedIsInitialized = 2;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private DescriptorProtos$OneofOptions options_;

    static {
        DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto = new DescriptorProtos$OneofDescriptorProto();
        DEFAULT_INSTANCE = descriptorProtos$OneofDescriptorProto;
        AbstractC2909i1.registerDefaultInstance(DescriptorProtos$OneofDescriptorProto.class, descriptorProtos$OneofDescriptorProto);
    }

    private DescriptorProtos$OneofDescriptorProto() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.bitField0_ &= -2;
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOptions() {
        this.options_ = null;
        this.bitField0_ &= -3;
    }

    public static DescriptorProtos$OneofDescriptorProto getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeOptions(DescriptorProtos$OneofOptions descriptorProtos$OneofOptions) {
        descriptorProtos$OneofOptions.getClass();
        DescriptorProtos$OneofOptions descriptorProtos$OneofOptions2 = this.options_;
        if (descriptorProtos$OneofOptions2 == null || descriptorProtos$OneofOptions2 == DescriptorProtos$OneofOptions.getDefaultInstance()) {
            this.options_ = descriptorProtos$OneofOptions;
        } else {
            C2947s0 c2947s0NewBuilder = DescriptorProtos$OneofOptions.newBuilder(this.options_);
            c2947s0NewBuilder.g(descriptorProtos$OneofOptions);
            this.options_ = (DescriptorProtos$OneofOptions) c2947s0NewBuilder.c();
        }
        this.bitField0_ |= 2;
    }

    public static C2940q0 newBuilder() {
        return (C2940q0) DEFAULT_INSTANCE.createBuilder();
    }

    public static DescriptorProtos$OneofDescriptorProto parseDelimitedFrom(InputStream inputStream) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(ByteBuffer byteBuffer) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameBytes(r rVar) {
        this.name_ = rVar.t();
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptions(DescriptorProtos$OneofOptions descriptorProtos$OneofOptions) {
        descriptorProtos$OneofOptions.getClass();
        this.options_ = descriptorProtos$OneofOptions;
        this.bitField0_ |= 2;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 1:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ဈ\u0000\u0002ᐉ\u0001", new Object[]{"bitField0_", "name_", "options_"});
            case 3:
                return new DescriptorProtos$OneofDescriptorProto();
            case 4:
                return new C2940q0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DescriptorProtos$OneofDescriptorProto.class) {
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

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public DescriptorProtos$OneofOptions getOptions() {
        DescriptorProtos$OneofOptions descriptorProtos$OneofOptions = this.options_;
        return descriptorProtos$OneofOptions == null ? DescriptorProtos$OneofOptions.getDefaultInstance() : descriptorProtos$OneofOptions;
    }

    public boolean hasName() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasOptions() {
        return (this.bitField0_ & 2) != 0;
    }

    public static C2940q0 newBuilder(DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto) {
        return (C2940q0) DEFAULT_INSTANCE.createBuilder(descriptorProtos$OneofDescriptorProto);
    }

    public static DescriptorProtos$OneofDescriptorProto parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(r rVar) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(r rVar, O0 o4) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(byte[] bArr) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(byte[] bArr, O0 o4) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(InputStream inputStream) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(AbstractC2961w abstractC2961w) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DescriptorProtos$OneofDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
