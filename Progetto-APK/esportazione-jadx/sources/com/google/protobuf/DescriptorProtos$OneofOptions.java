package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DescriptorProtos$OneofOptions extends GeneratedMessageLite$ExtendableMessage<DescriptorProtos$OneofOptions, C2947s0> {
    private static final DescriptorProtos$OneofOptions DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int UNINTERPRETED_OPTION_FIELD_NUMBER = 999;
    private byte memoizedIsInitialized = 2;
    private InterfaceC2956u1 uninterpretedOption_ = AbstractC2909i1.emptyProtobufList();

    static {
        DescriptorProtos$OneofOptions descriptorProtos$OneofOptions = new DescriptorProtos$OneofOptions();
        DEFAULT_INSTANCE = descriptorProtos$OneofOptions;
        AbstractC2909i1.registerDefaultInstance(DescriptorProtos$OneofOptions.class, descriptorProtos$OneofOptions);
    }

    private DescriptorProtos$OneofOptions() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllUninterpretedOption(Iterable<? extends DescriptorProtos$UninterpretedOption> iterable) {
        ensureUninterpretedOptionIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.uninterpretedOption_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUninterpretedOption(DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption) {
        descriptorProtos$UninterpretedOption.getClass();
        ensureUninterpretedOptionIsMutable();
        this.uninterpretedOption_.add(descriptorProtos$UninterpretedOption);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUninterpretedOption() {
        this.uninterpretedOption_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureUninterpretedOptionIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.uninterpretedOption_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.uninterpretedOption_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static DescriptorProtos$OneofOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2947s0 newBuilder() {
        return (C2947s0) DEFAULT_INSTANCE.createBuilder();
    }

    public static DescriptorProtos$OneofOptions parseDelimitedFrom(InputStream inputStream) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$OneofOptions parseFrom(ByteBuffer byteBuffer) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUninterpretedOption(int i8) {
        ensureUninterpretedOptionIsMutable();
        this.uninterpretedOption_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUninterpretedOption(int i8, DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption) {
        descriptorProtos$UninterpretedOption.getClass();
        ensureUninterpretedOptionIsMutable();
        this.uninterpretedOption_.set(i8, descriptorProtos$UninterpretedOption);
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000ϧϧ\u0001\u0000\u0001\u0001ϧЛ", new Object[]{"uninterpretedOption_", DescriptorProtos$UninterpretedOption.class});
            case 3:
                return new DescriptorProtos$OneofOptions();
            case 4:
                return new C2947s0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DescriptorProtos$OneofOptions.class) {
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

    public DescriptorProtos$UninterpretedOption getUninterpretedOption(int i8) {
        return (DescriptorProtos$UninterpretedOption) this.uninterpretedOption_.get(i8);
    }

    public int getUninterpretedOptionCount() {
        return this.uninterpretedOption_.size();
    }

    public List<DescriptorProtos$UninterpretedOption> getUninterpretedOptionList() {
        return this.uninterpretedOption_;
    }

    public C0 getUninterpretedOptionOrBuilder(int i8) {
        return (C0) this.uninterpretedOption_.get(i8);
    }

    public List<? extends C0> getUninterpretedOptionOrBuilderList() {
        return this.uninterpretedOption_;
    }

    public static C2947s0 newBuilder(DescriptorProtos$OneofOptions descriptorProtos$OneofOptions) {
        return (C2947s0) DEFAULT_INSTANCE.createBuilder(descriptorProtos$OneofOptions);
    }

    public static DescriptorProtos$OneofOptions parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$OneofOptions parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DescriptorProtos$OneofOptions parseFrom(r rVar) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUninterpretedOption(int i8, DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption) {
        descriptorProtos$UninterpretedOption.getClass();
        ensureUninterpretedOptionIsMutable();
        this.uninterpretedOption_.add(i8, descriptorProtos$UninterpretedOption);
    }

    public static DescriptorProtos$OneofOptions parseFrom(r rVar, O0 o4) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DescriptorProtos$OneofOptions parseFrom(byte[] bArr) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DescriptorProtos$OneofOptions parseFrom(byte[] bArr, O0 o4) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DescriptorProtos$OneofOptions parseFrom(InputStream inputStream) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$OneofOptions parseFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$OneofOptions parseFrom(AbstractC2961w abstractC2961w) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DescriptorProtos$OneofOptions parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DescriptorProtos$OneofOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
