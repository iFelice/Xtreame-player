package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class DescriptorProtos$DescriptorProto extends AbstractC2909i1 implements F {
    private static final DescriptorProtos$DescriptorProto DEFAULT_INSTANCE;
    public static final int ENUM_TYPE_FIELD_NUMBER = 4;
    public static final int EXTENSION_FIELD_NUMBER = 6;
    public static final int EXTENSION_RANGE_FIELD_NUMBER = 5;
    public static final int FIELD_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int NESTED_TYPE_FIELD_NUMBER = 3;
    public static final int ONEOF_DECL_FIELD_NUMBER = 8;
    public static final int OPTIONS_FIELD_NUMBER = 7;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int RESERVED_NAME_FIELD_NUMBER = 10;
    public static final int RESERVED_RANGE_FIELD_NUMBER = 9;
    private int bitField0_;
    private DescriptorProtos$MessageOptions options_;
    private byte memoizedIsInitialized = 2;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 field_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 extension_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 nestedType_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 enumType_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 extensionRange_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 oneofDecl_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 reservedRange_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 reservedName_ = AbstractC2909i1.emptyProtobufList();

    public static final class ExtensionRange extends AbstractC2909i1 implements C {
        private static final ExtensionRange DEFAULT_INSTANCE;
        public static final int END_FIELD_NUMBER = 2;
        public static final int OPTIONS_FIELD_NUMBER = 3;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int START_FIELD_NUMBER = 1;
        private int bitField0_;
        private int end_;
        private byte memoizedIsInitialized = 2;
        private DescriptorProtos$ExtensionRangeOptions options_;
        private int start_;

        static {
            ExtensionRange extensionRange = new ExtensionRange();
            DEFAULT_INSTANCE = extensionRange;
            AbstractC2909i1.registerDefaultInstance(ExtensionRange.class, extensionRange);
        }

        private ExtensionRange() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEnd() {
            this.bitField0_ &= -3;
            this.end_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOptions() {
            this.options_ = null;
            this.bitField0_ &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStart() {
            this.bitField0_ &= -2;
            this.start_ = 0;
        }

        public static ExtensionRange getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOptions(DescriptorProtos$ExtensionRangeOptions descriptorProtos$ExtensionRangeOptions) {
            descriptorProtos$ExtensionRangeOptions.getClass();
            DescriptorProtos$ExtensionRangeOptions descriptorProtos$ExtensionRangeOptions2 = this.options_;
            if (descriptorProtos$ExtensionRangeOptions2 == null || descriptorProtos$ExtensionRangeOptions2 == DescriptorProtos$ExtensionRangeOptions.getDefaultInstance()) {
                this.options_ = descriptorProtos$ExtensionRangeOptions;
            } else {
                O oNewBuilder = DescriptorProtos$ExtensionRangeOptions.newBuilder(this.options_);
                oNewBuilder.g(descriptorProtos$ExtensionRangeOptions);
                this.options_ = (DescriptorProtos$ExtensionRangeOptions) oNewBuilder.c();
            }
            this.bitField0_ |= 4;
        }

        public static B newBuilder() {
            return (B) DEFAULT_INSTANCE.createBuilder();
        }

        public static ExtensionRange parseDelimitedFrom(InputStream inputStream) {
            return (ExtensionRange) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExtensionRange parseFrom(ByteBuffer byteBuffer) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEnd(int i8) {
            this.bitField0_ |= 2;
            this.end_ = i8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOptions(DescriptorProtos$ExtensionRangeOptions descriptorProtos$ExtensionRangeOptions) {
            descriptorProtos$ExtensionRangeOptions.getClass();
            this.options_ = descriptorProtos$ExtensionRangeOptions;
            this.bitField0_ |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStart(int i8) {
            this.bitField0_ |= 1;
            this.start_ = i8;
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
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001င\u0000\u0002င\u0001\u0003ᐉ\u0002", new Object[]{"bitField0_", "start_", "end_", "options_"});
                case 3:
                    return new ExtensionRange();
                case 4:
                    return new B(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (ExtensionRange.class) {
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

        public int getEnd() {
            return this.end_;
        }

        public DescriptorProtos$ExtensionRangeOptions getOptions() {
            DescriptorProtos$ExtensionRangeOptions descriptorProtos$ExtensionRangeOptions = this.options_;
            return descriptorProtos$ExtensionRangeOptions == null ? DescriptorProtos$ExtensionRangeOptions.getDefaultInstance() : descriptorProtos$ExtensionRangeOptions;
        }

        public int getStart() {
            return this.start_;
        }

        public boolean hasEnd() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasOptions() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasStart() {
            return (this.bitField0_ & 1) != 0;
        }

        public static B newBuilder(ExtensionRange extensionRange) {
            return (B) DEFAULT_INSTANCE.createBuilder(extensionRange);
        }

        public static ExtensionRange parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (ExtensionRange) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static ExtensionRange parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static ExtensionRange parseFrom(r rVar) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static ExtensionRange parseFrom(r rVar, O0 o4) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static ExtensionRange parseFrom(byte[] bArr) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ExtensionRange parseFrom(byte[] bArr, O0 o4) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static ExtensionRange parseFrom(InputStream inputStream) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExtensionRange parseFrom(InputStream inputStream, O0 o4) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static ExtensionRange parseFrom(AbstractC2961w abstractC2961w) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static ExtensionRange parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (ExtensionRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class ReservedRange extends AbstractC2909i1 implements E {
        private static final ReservedRange DEFAULT_INSTANCE;
        public static final int END_FIELD_NUMBER = 2;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int START_FIELD_NUMBER = 1;
        private int bitField0_;
        private int end_;
        private int start_;

        static {
            ReservedRange reservedRange = new ReservedRange();
            DEFAULT_INSTANCE = reservedRange;
            AbstractC2909i1.registerDefaultInstance(ReservedRange.class, reservedRange);
        }

        private ReservedRange() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEnd() {
            this.bitField0_ &= -3;
            this.end_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStart() {
            this.bitField0_ &= -2;
            this.start_ = 0;
        }

        public static ReservedRange getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static D newBuilder() {
            return (D) DEFAULT_INSTANCE.createBuilder();
        }

        public static ReservedRange parseDelimitedFrom(InputStream inputStream) {
            return (ReservedRange) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ReservedRange parseFrom(ByteBuffer byteBuffer) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEnd(int i8) {
            this.bitField0_ |= 2;
            this.end_ = i8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStart(int i8) {
            this.bitField0_ |= 1;
            this.start_ = i8;
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"bitField0_", "start_", "end_"});
                case 3:
                    return new ReservedRange();
                case 4:
                    return new D(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (ReservedRange.class) {
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

        public int getEnd() {
            return this.end_;
        }

        public int getStart() {
            return this.start_;
        }

        public boolean hasEnd() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasStart() {
            return (this.bitField0_ & 1) != 0;
        }

        public static D newBuilder(ReservedRange reservedRange) {
            return (D) DEFAULT_INSTANCE.createBuilder(reservedRange);
        }

        public static ReservedRange parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (ReservedRange) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static ReservedRange parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static ReservedRange parseFrom(r rVar) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static ReservedRange parseFrom(r rVar, O0 o4) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static ReservedRange parseFrom(byte[] bArr) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ReservedRange parseFrom(byte[] bArr, O0 o4) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static ReservedRange parseFrom(InputStream inputStream) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ReservedRange parseFrom(InputStream inputStream, O0 o4) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static ReservedRange parseFrom(AbstractC2961w abstractC2961w) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static ReservedRange parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (ReservedRange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    static {
        DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto = new DescriptorProtos$DescriptorProto();
        DEFAULT_INSTANCE = descriptorProtos$DescriptorProto;
        AbstractC2909i1.registerDefaultInstance(DescriptorProtos$DescriptorProto.class, descriptorProtos$DescriptorProto);
    }

    private DescriptorProtos$DescriptorProto() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllEnumType(Iterable<? extends DescriptorProtos$EnumDescriptorProto> iterable) {
        ensureEnumTypeIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.enumType_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllExtension(Iterable<? extends DescriptorProtos$FieldDescriptorProto> iterable) {
        ensureExtensionIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.extension_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllExtensionRange(Iterable<? extends ExtensionRange> iterable) {
        ensureExtensionRangeIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.extensionRange_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllField(Iterable<? extends DescriptorProtos$FieldDescriptorProto> iterable) {
        ensureFieldIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.field_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllNestedType(Iterable<? extends DescriptorProtos$DescriptorProto> iterable) {
        ensureNestedTypeIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.nestedType_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllOneofDecl(Iterable<? extends DescriptorProtos$OneofDescriptorProto> iterable) {
        ensureOneofDeclIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.oneofDecl_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllReservedName(Iterable<String> iterable) {
        ensureReservedNameIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.reservedName_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllReservedRange(Iterable<? extends ReservedRange> iterable) {
        ensureReservedRangeIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.reservedRange_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEnumType(DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto) {
        descriptorProtos$EnumDescriptorProto.getClass();
        ensureEnumTypeIsMutable();
        this.enumType_.add(descriptorProtos$EnumDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExtension(DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto) {
        descriptorProtos$FieldDescriptorProto.getClass();
        ensureExtensionIsMutable();
        this.extension_.add(descriptorProtos$FieldDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExtensionRange(ExtensionRange extensionRange) {
        extensionRange.getClass();
        ensureExtensionRangeIsMutable();
        this.extensionRange_.add(extensionRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addField(DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto) {
        descriptorProtos$FieldDescriptorProto.getClass();
        ensureFieldIsMutable();
        this.field_.add(descriptorProtos$FieldDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNestedType(DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto) {
        descriptorProtos$DescriptorProto.getClass();
        ensureNestedTypeIsMutable();
        this.nestedType_.add(descriptorProtos$DescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOneofDecl(DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto) {
        descriptorProtos$OneofDescriptorProto.getClass();
        ensureOneofDeclIsMutable();
        this.oneofDecl_.add(descriptorProtos$OneofDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addReservedName(String str) {
        str.getClass();
        ensureReservedNameIsMutable();
        this.reservedName_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addReservedNameBytes(r rVar) {
        ensureReservedNameIsMutable();
        this.reservedName_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addReservedRange(ReservedRange reservedRange) {
        reservedRange.getClass();
        ensureReservedRangeIsMutable();
        this.reservedRange_.add(reservedRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEnumType() {
        this.enumType_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExtension() {
        this.extension_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExtensionRange() {
        this.extensionRange_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearField() {
        this.field_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.bitField0_ &= -2;
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNestedType() {
        this.nestedType_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOneofDecl() {
        this.oneofDecl_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOptions() {
        this.options_ = null;
        this.bitField0_ &= -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearReservedName() {
        this.reservedName_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearReservedRange() {
        this.reservedRange_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureEnumTypeIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.enumType_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.enumType_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureExtensionIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.extension_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.extension_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureExtensionRangeIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.extensionRange_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.extensionRange_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureFieldIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.field_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.field_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureNestedTypeIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.nestedType_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.nestedType_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureOneofDeclIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.oneofDecl_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.oneofDecl_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureReservedNameIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.reservedName_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.reservedName_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureReservedRangeIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.reservedRange_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.reservedRange_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static DescriptorProtos$DescriptorProto getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeOptions(DescriptorProtos$MessageOptions descriptorProtos$MessageOptions) {
        descriptorProtos$MessageOptions.getClass();
        DescriptorProtos$MessageOptions descriptorProtos$MessageOptions2 = this.options_;
        if (descriptorProtos$MessageOptions2 == null || descriptorProtos$MessageOptions2 == DescriptorProtos$MessageOptions.getDefaultInstance()) {
            this.options_ = descriptorProtos$MessageOptions;
        } else {
            C2916k0 c2916k0NewBuilder = DescriptorProtos$MessageOptions.newBuilder(this.options_);
            c2916k0NewBuilder.g(descriptorProtos$MessageOptions);
            this.options_ = (DescriptorProtos$MessageOptions) c2916k0NewBuilder.c();
        }
        this.bitField0_ |= 2;
    }

    public static A newBuilder() {
        return (A) DEFAULT_INSTANCE.createBuilder();
    }

    public static DescriptorProtos$DescriptorProto parseDelimitedFrom(InputStream inputStream) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(ByteBuffer byteBuffer) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeEnumType(int i8) {
        ensureEnumTypeIsMutable();
        this.enumType_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeExtension(int i8) {
        ensureExtensionIsMutable();
        this.extension_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeExtensionRange(int i8) {
        ensureExtensionRangeIsMutable();
        this.extensionRange_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeField(int i8) {
        ensureFieldIsMutable();
        this.field_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNestedType(int i8) {
        ensureNestedTypeIsMutable();
        this.nestedType_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOneofDecl(int i8) {
        ensureOneofDeclIsMutable();
        this.oneofDecl_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeReservedRange(int i8) {
        ensureReservedRangeIsMutable();
        this.reservedRange_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnumType(int i8, DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto) {
        descriptorProtos$EnumDescriptorProto.getClass();
        ensureEnumTypeIsMutable();
        this.enumType_.set(i8, descriptorProtos$EnumDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExtension(int i8, DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto) {
        descriptorProtos$FieldDescriptorProto.getClass();
        ensureExtensionIsMutable();
        this.extension_.set(i8, descriptorProtos$FieldDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExtensionRange(int i8, ExtensionRange extensionRange) {
        extensionRange.getClass();
        ensureExtensionRangeIsMutable();
        this.extensionRange_.set(i8, extensionRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setField(int i8, DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto) {
        descriptorProtos$FieldDescriptorProto.getClass();
        ensureFieldIsMutable();
        this.field_.set(i8, descriptorProtos$FieldDescriptorProto);
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
    public void setNestedType(int i8, DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto) {
        descriptorProtos$DescriptorProto.getClass();
        ensureNestedTypeIsMutable();
        this.nestedType_.set(i8, descriptorProtos$DescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOneofDecl(int i8, DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto) {
        descriptorProtos$OneofDescriptorProto.getClass();
        ensureOneofDeclIsMutable();
        this.oneofDecl_.set(i8, descriptorProtos$OneofDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptions(DescriptorProtos$MessageOptions descriptorProtos$MessageOptions) {
        descriptorProtos$MessageOptions.getClass();
        this.options_ = descriptorProtos$MessageOptions;
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReservedName(int i8, String str) {
        str.getClass();
        ensureReservedNameIsMutable();
        this.reservedName_.set(i8, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReservedRange(int i8, ReservedRange reservedRange) {
        reservedRange.getClass();
        ensureReservedRangeIsMutable();
        this.reservedRange_.set(i8, reservedRange);
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\n\u0000\u0001\u0001\n\n\u0000\b\u0007\u0001ဈ\u0000\u0002Л\u0003Л\u0004Л\u0005Л\u0006Л\u0007ᐉ\u0001\bЛ\t\u001b\n\u001a", new Object[]{"bitField0_", "name_", "field_", DescriptorProtos$FieldDescriptorProto.class, "nestedType_", DescriptorProtos$DescriptorProto.class, "enumType_", DescriptorProtos$EnumDescriptorProto.class, "extensionRange_", ExtensionRange.class, "extension_", DescriptorProtos$FieldDescriptorProto.class, "options_", "oneofDecl_", DescriptorProtos$OneofDescriptorProto.class, "reservedRange_", ReservedRange.class, "reservedName_"});
            case 3:
                return new DescriptorProtos$DescriptorProto();
            case 4:
                return new A(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (DescriptorProtos$DescriptorProto.class) {
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

    public DescriptorProtos$EnumDescriptorProto getEnumType(int i8) {
        return (DescriptorProtos$EnumDescriptorProto) this.enumType_.get(i8);
    }

    public int getEnumTypeCount() {
        return this.enumType_.size();
    }

    public List<DescriptorProtos$EnumDescriptorProto> getEnumTypeList() {
        return this.enumType_;
    }

    public J getEnumTypeOrBuilder(int i8) {
        return (J) this.enumType_.get(i8);
    }

    public List<? extends J> getEnumTypeOrBuilderList() {
        return this.enumType_;
    }

    public DescriptorProtos$FieldDescriptorProto getExtension(int i8) {
        return (DescriptorProtos$FieldDescriptorProto) this.extension_.get(i8);
    }

    public int getExtensionCount() {
        return this.extension_.size();
    }

    public List<DescriptorProtos$FieldDescriptorProto> getExtensionList() {
        return this.extension_;
    }

    public V getExtensionOrBuilder(int i8) {
        return (V) this.extension_.get(i8);
    }

    public List<? extends V> getExtensionOrBuilderList() {
        return this.extension_;
    }

    public ExtensionRange getExtensionRange(int i8) {
        return (ExtensionRange) this.extensionRange_.get(i8);
    }

    public int getExtensionRangeCount() {
        return this.extensionRange_.size();
    }

    public List<ExtensionRange> getExtensionRangeList() {
        return this.extensionRange_;
    }

    public C getExtensionRangeOrBuilder(int i8) {
        return (C) this.extensionRange_.get(i8);
    }

    public List<? extends C> getExtensionRangeOrBuilderList() {
        return this.extensionRange_;
    }

    public DescriptorProtos$FieldDescriptorProto getField(int i8) {
        return (DescriptorProtos$FieldDescriptorProto) this.field_.get(i8);
    }

    public int getFieldCount() {
        return this.field_.size();
    }

    public List<DescriptorProtos$FieldDescriptorProto> getFieldList() {
        return this.field_;
    }

    public V getFieldOrBuilder(int i8) {
        return (V) this.field_.get(i8);
    }

    public List<? extends V> getFieldOrBuilderList() {
        return this.field_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public DescriptorProtos$DescriptorProto getNestedType(int i8) {
        return (DescriptorProtos$DescriptorProto) this.nestedType_.get(i8);
    }

    public int getNestedTypeCount() {
        return this.nestedType_.size();
    }

    public List<DescriptorProtos$DescriptorProto> getNestedTypeList() {
        return this.nestedType_;
    }

    public F getNestedTypeOrBuilder(int i8) {
        return (F) this.nestedType_.get(i8);
    }

    public List<? extends F> getNestedTypeOrBuilderList() {
        return this.nestedType_;
    }

    public DescriptorProtos$OneofDescriptorProto getOneofDecl(int i8) {
        return (DescriptorProtos$OneofDescriptorProto) this.oneofDecl_.get(i8);
    }

    public int getOneofDeclCount() {
        return this.oneofDecl_.size();
    }

    public List<DescriptorProtos$OneofDescriptorProto> getOneofDeclList() {
        return this.oneofDecl_;
    }

    public InterfaceC2943r0 getOneofDeclOrBuilder(int i8) {
        return (InterfaceC2943r0) this.oneofDecl_.get(i8);
    }

    public List<? extends InterfaceC2943r0> getOneofDeclOrBuilderList() {
        return this.oneofDecl_;
    }

    public DescriptorProtos$MessageOptions getOptions() {
        DescriptorProtos$MessageOptions descriptorProtos$MessageOptions = this.options_;
        return descriptorProtos$MessageOptions == null ? DescriptorProtos$MessageOptions.getDefaultInstance() : descriptorProtos$MessageOptions;
    }

    public String getReservedName(int i8) {
        return (String) this.reservedName_.get(i8);
    }

    public r getReservedNameBytes(int i8) {
        return r.l((String) this.reservedName_.get(i8));
    }

    public int getReservedNameCount() {
        return this.reservedName_.size();
    }

    public List<String> getReservedNameList() {
        return this.reservedName_;
    }

    public ReservedRange getReservedRange(int i8) {
        return (ReservedRange) this.reservedRange_.get(i8);
    }

    public int getReservedRangeCount() {
        return this.reservedRange_.size();
    }

    public List<ReservedRange> getReservedRangeList() {
        return this.reservedRange_;
    }

    public E getReservedRangeOrBuilder(int i8) {
        return (E) this.reservedRange_.get(i8);
    }

    public List<? extends E> getReservedRangeOrBuilderList() {
        return this.reservedRange_;
    }

    public boolean hasName() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasOptions() {
        return (this.bitField0_ & 2) != 0;
    }

    public static A newBuilder(DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto) {
        return (A) DEFAULT_INSTANCE.createBuilder(descriptorProtos$DescriptorProto);
    }

    public static DescriptorProtos$DescriptorProto parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(r rVar) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEnumType(int i8, DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto) {
        descriptorProtos$EnumDescriptorProto.getClass();
        ensureEnumTypeIsMutable();
        this.enumType_.add(i8, descriptorProtos$EnumDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExtension(int i8, DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto) {
        descriptorProtos$FieldDescriptorProto.getClass();
        ensureExtensionIsMutable();
        this.extension_.add(i8, descriptorProtos$FieldDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExtensionRange(int i8, ExtensionRange extensionRange) {
        extensionRange.getClass();
        ensureExtensionRangeIsMutable();
        this.extensionRange_.add(i8, extensionRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addField(int i8, DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto) {
        descriptorProtos$FieldDescriptorProto.getClass();
        ensureFieldIsMutable();
        this.field_.add(i8, descriptorProtos$FieldDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNestedType(int i8, DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto) {
        descriptorProtos$DescriptorProto.getClass();
        ensureNestedTypeIsMutable();
        this.nestedType_.add(i8, descriptorProtos$DescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOneofDecl(int i8, DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto) {
        descriptorProtos$OneofDescriptorProto.getClass();
        ensureOneofDeclIsMutable();
        this.oneofDecl_.add(i8, descriptorProtos$OneofDescriptorProto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addReservedRange(int i8, ReservedRange reservedRange) {
        reservedRange.getClass();
        ensureReservedRangeIsMutable();
        this.reservedRange_.add(i8, reservedRange);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(r rVar, O0 o4) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(byte[] bArr) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(byte[] bArr, O0 o4) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(InputStream inputStream) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(InputStream inputStream, O0 o4) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(AbstractC2961w abstractC2961w) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (DescriptorProtos$DescriptorProto) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
