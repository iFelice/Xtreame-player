package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class DescriptorProtos$ServiceDescriptorProto extends AbstractC2909i1 implements InterfaceC2955u0 {
    private static final DescriptorProtos$ServiceDescriptorProto DEFAULT_INSTANCE;
    public static final int METHOD_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER;
    private int bitField0_;
    private DescriptorProtos$ServiceOptions options_;
    private byte memoizedIsInitialized = 2;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 method_ = AbstractC2909i1.emptyProtobufList();

    static {
        DescriptorProtos$ServiceDescriptorProto descriptorProtos$ServiceDescriptorProto = new DescriptorProtos$ServiceDescriptorProto();
        DEFAULT_INSTANCE = descriptorProtos$ServiceDescriptorProto;
        AbstractC2909i1.registerDefaultInstance(DescriptorProtos$ServiceDescriptorProto.class, descriptorProtos$ServiceDescriptorProto);
    }

    private DescriptorProtos$ServiceDescriptorProto() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllMethod(Iterable<? extends DescriptorProtos$MethodDescriptorProto> iterable) {
        ensureMethodIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.method_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMethod(DescriptorProtos$MethodDescriptorProto descriptorProtos$MethodDescriptorProto) {
        descriptorProtos$MethodDescriptorProto.getClass();
        ensureMethodIsMutable();
        this.method_.add(descriptorProtos$MethodDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMethod() {
        this.method_ = AbstractC2909i1.emptyProtobufList();
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

    private void ensureMethodIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.method_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.method_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static DescriptorProtos$ServiceDescriptorProto getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeOptions(DescriptorProtos$ServiceOptions descriptorProtos$ServiceOptions) {
        descriptorProtos$ServiceOptions.getClass();
        DescriptorProtos$ServiceOptions descriptorProtos$ServiceOptions2 = this.options_;
        if (descriptorProtos$ServiceOptions2 == null || descriptorProtos$ServiceOptions2 == DescriptorProtos$ServiceOptions.getDefaultInstance()) {
            this.options_ = descriptorProtos$ServiceOptions;
        } else {
            C2959v0 c2959v0NewBuilder = DescriptorProtos$ServiceOptions.newBuilder(this.options_);
            c2959v0NewBuilder.g(descriptorProtos$ServiceOptions);
            this.options_ = (DescriptorProtos$ServiceOptions) c2959v0NewBuilder.c();
        }
        this.bitField0_ |= 2;
    }

    public static C2951t0 newBuilder() {
        return (C2951t0) DEFAULT_INSTANCE.createBuilder();
    }

    public static DescriptorProtos$ServiceDescriptorProto parseDelimitedFrom(InputStream inputStream) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(ByteBuffer byteBuffer) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMethod(int i8) {
        ensureMethodIsMutable();
        this.method_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMethod(int i8, DescriptorProtos$MethodDescriptorProto descriptorProtos$MethodDescriptorProto) {
        descriptorProtos$MethodDescriptorProto.getClass();
        ensureMethodIsMutable();
        this.method_.set(i8, descriptorProtos$MethodDescriptorProto);
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
    public void setOptions(DescriptorProtos$ServiceOptions descriptorProtos$ServiceOptions) {
        descriptorProtos$ServiceOptions.getClass();
        this.options_ = descriptorProtos$ServiceOptions;
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0002\u0001ဈ\u0000\u0002Л\u0003ᐉ\u0001", new Object[]{"bitField0_", "name_", "method_", DescriptorProtos$MethodDescriptorProto.class, "options_"});
            case 3:
                return new DescriptorProtos$ServiceDescriptorProto();
            case 4:
                return new C2951t0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DescriptorProtos$ServiceDescriptorProto.class) {
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

    public DescriptorProtos$MethodDescriptorProto getMethod(int i8) {
        return (DescriptorProtos$MethodDescriptorProto) this.method_.get(i8);
    }

    public int getMethodCount() {
        return this.method_.size();
    }

    public List<DescriptorProtos$MethodDescriptorProto> getMethodList() {
        return this.method_;
    }

    public InterfaceC2924m0 getMethodOrBuilder(int i8) {
        return (InterfaceC2924m0) this.method_.get(i8);
    }

    public List<? extends InterfaceC2924m0> getMethodOrBuilderList() {
        return this.method_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public DescriptorProtos$ServiceOptions getOptions() {
        DescriptorProtos$ServiceOptions descriptorProtos$ServiceOptions = this.options_;
        return descriptorProtos$ServiceOptions == null ? DescriptorProtos$ServiceOptions.getDefaultInstance() : descriptorProtos$ServiceOptions;
    }

    public boolean hasName() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasOptions() {
        return (this.bitField0_ & 2) != 0;
    }

    public static C2951t0 newBuilder(DescriptorProtos$ServiceDescriptorProto descriptorProtos$ServiceDescriptorProto) {
        return (C2951t0) DEFAULT_INSTANCE.createBuilder(descriptorProtos$ServiceDescriptorProto);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(r rVar) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMethod(int i8, DescriptorProtos$MethodDescriptorProto descriptorProtos$MethodDescriptorProto) {
        descriptorProtos$MethodDescriptorProto.getClass();
        ensureMethodIsMutable();
        this.method_.add(i8, descriptorProtos$MethodDescriptorProto);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(r rVar, O0 o4) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(byte[] bArr) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(byte[] bArr, O0 o4) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(InputStream inputStream) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(AbstractC2961w abstractC2961w) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DescriptorProtos$ServiceDescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
