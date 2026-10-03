package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class Enum extends AbstractC2909i1 implements I0 {
    private static final Enum DEFAULT_INSTANCE;
    public static final int EDITION_FIELD_NUMBER = 6;
    public static final int ENUMVALUE_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 5;
    private int bitField0_;
    private SourceContext sourceContext_;
    private int syntax_;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 enumvalue_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 options_ = AbstractC2909i1.emptyProtobufList();
    private String edition_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        Enum r7 = new Enum();
        DEFAULT_INSTANCE = r7;
        AbstractC2909i1.registerDefaultInstance(Enum.class, r7);
    }

    private Enum() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllEnumvalue(Iterable<? extends EnumValue> iterable) {
        ensureEnumvalueIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.enumvalue_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllOptions(Iterable<? extends Option> iterable) {
        ensureOptionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.options_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEnumvalue(EnumValue enumValue) {
        enumValue.getClass();
        ensureEnumvalueIsMutable();
        this.enumvalue_.add(enumValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOptions(Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.add(option);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEdition() {
        this.edition_ = getDefaultInstance().getEdition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEnumvalue() {
        this.enumvalue_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOptions() {
        this.options_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSourceContext() {
        this.sourceContext_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSyntax() {
        this.syntax_ = 0;
    }

    private void ensureEnumvalueIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.enumvalue_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.enumvalue_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureOptionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.options_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.options_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Enum getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeSourceContext(SourceContext sourceContext) {
        sourceContext.getClass();
        SourceContext sourceContext2 = this.sourceContext_;
        if (sourceContext2 == null || sourceContext2 == SourceContext.getDefaultInstance()) {
            this.sourceContext_ = sourceContext;
        } else {
            C2938p2 c2938p2NewBuilder = SourceContext.newBuilder(this.sourceContext_);
            c2938p2NewBuilder.g(sourceContext);
            this.sourceContext_ = (SourceContext) c2938p2NewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static H0 newBuilder() {
        return (H0) DEFAULT_INSTANCE.createBuilder();
    }

    public static Enum parseDelimitedFrom(InputStream inputStream) {
        return (Enum) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Enum parseFrom(ByteBuffer byteBuffer) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeEnumvalue(int i8) {
        ensureEnumvalueIsMutable();
        this.enumvalue_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOptions(int i8) {
        ensureOptionsIsMutable();
        this.options_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEdition(String str) {
        str.getClass();
        this.edition_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEditionBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.edition_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnumvalue(int i8, EnumValue enumValue) {
        enumValue.getClass();
        ensureEnumvalueIsMutable();
        this.enumvalue_.set(i8, enumValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.name_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptions(int i8, Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.set(i8, option);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSourceContext(SourceContext sourceContext) {
        sourceContext.getClass();
        this.sourceContext_ = sourceContext;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSyntax(EnumC2953t2 enumC2953t2) {
        this.syntax_ = enumC2953t2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSyntaxValue(int i8) {
        this.syntax_ = i8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001Ȉ\u0002\u001b\u0003\u001b\u0004ဉ\u0000\u0005\f\u0006Ȉ", new Object[]{"bitField0_", "name_", "enumvalue_", EnumValue.class, "options_", Option.class, "sourceContext_", "syntax_", "edition_"});
            case 3:
                return new Enum();
            case 4:
                return new H0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Enum.class) {
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

    public String getEdition() {
        return this.edition_;
    }

    public r getEditionBytes() {
        return r.l(this.edition_);
    }

    public EnumValue getEnumvalue(int i8) {
        return (EnumValue) this.enumvalue_.get(i8);
    }

    public int getEnumvalueCount() {
        return this.enumvalue_.size();
    }

    public List<EnumValue> getEnumvalueList() {
        return this.enumvalue_;
    }

    public K0 getEnumvalueOrBuilder(int i8) {
        return (K0) this.enumvalue_.get(i8);
    }

    public List<? extends K0> getEnumvalueOrBuilderList() {
        return this.enumvalue_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public Option getOptions(int i8) {
        return (Option) this.options_.get(i8);
    }

    public int getOptionsCount() {
        return this.options_.size();
    }

    public List<Option> getOptionsList() {
        return this.options_;
    }

    public InterfaceC2890d2 getOptionsOrBuilder(int i8) {
        return (InterfaceC2890d2) this.options_.get(i8);
    }

    public List<? extends InterfaceC2890d2> getOptionsOrBuilderList() {
        return this.options_;
    }

    public SourceContext getSourceContext() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    public EnumC2953t2 getSyntax() {
        EnumC2953t2 enumC2953t2B = EnumC2953t2.b(this.syntax_);
        return enumC2953t2B == null ? EnumC2953t2.UNRECOGNIZED : enumC2953t2B;
    }

    public int getSyntaxValue() {
        return this.syntax_;
    }

    public boolean hasSourceContext() {
        return (this.bitField0_ & 1) != 0;
    }

    public static H0 newBuilder(Enum r7) {
        return (H0) DEFAULT_INSTANCE.createBuilder(r7);
    }

    public static Enum parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Enum) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Enum parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Enum parseFrom(r rVar) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEnumvalue(int i8, EnumValue enumValue) {
        enumValue.getClass();
        ensureEnumvalueIsMutable();
        this.enumvalue_.add(i8, enumValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOptions(int i8, Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.add(i8, option);
    }

    public static Enum parseFrom(r rVar, O0 o4) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Enum parseFrom(byte[] bArr) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Enum parseFrom(byte[] bArr, O0 o4) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Enum parseFrom(InputStream inputStream) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Enum parseFrom(InputStream inputStream, O0 o4) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Enum parseFrom(AbstractC2961w abstractC2961w) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Enum parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Enum) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
