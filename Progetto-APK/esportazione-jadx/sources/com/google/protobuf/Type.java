package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class Type extends AbstractC2909i1 implements w2 {
    private static final Type DEFAULT_INSTANCE;
    public static final int EDITION_FIELD_NUMBER = 7;
    public static final int FIELDS_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ONEOFS_FIELD_NUMBER = 3;
    public static final int OPTIONS_FIELD_NUMBER = 4;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 6;
    private int bitField0_;
    private SourceContext sourceContext_;
    private int syntax_;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 fields_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 oneofs_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 options_ = AbstractC2909i1.emptyProtobufList();
    private String edition_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        Type type = new Type();
        DEFAULT_INSTANCE = type;
        AbstractC2909i1.registerDefaultInstance(Type.class, type);
    }

    private Type() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllFields(Iterable<? extends Field> iterable) {
        ensureFieldsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.fields_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllOneofs(Iterable<String> iterable) {
        ensureOneofsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.oneofs_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllOptions(Iterable<? extends Option> iterable) {
        ensureOptionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.options_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFields(Field field) {
        field.getClass();
        ensureFieldsIsMutable();
        this.fields_.add(field);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOneofs(String str) {
        str.getClass();
        ensureOneofsIsMutable();
        this.oneofs_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOneofsBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureOneofsIsMutable();
        this.oneofs_.add(rVar.t());
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
    public void clearFields() {
        this.fields_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOneofs() {
        this.oneofs_ = AbstractC2909i1.emptyProtobufList();
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

    private void ensureFieldsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.fields_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.fields_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureOneofsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.oneofs_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.oneofs_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureOptionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.options_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.options_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Type getDefaultInstance() {
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

    public static v2 newBuilder() {
        return (v2) DEFAULT_INSTANCE.createBuilder();
    }

    public static Type parseDelimitedFrom(InputStream inputStream) {
        return (Type) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Type parseFrom(ByteBuffer byteBuffer) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFields(int i8) {
        ensureFieldsIsMutable();
        this.fields_.remove(i8);
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
    public void setFields(int i8, Field field) {
        field.getClass();
        ensureFieldsIsMutable();
        this.fields_.set(i8, field);
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
    public void setOneofs(int i8, String str) {
        str.getClass();
        ensureOneofsIsMutable();
        this.oneofs_.set(i8, str);
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
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0003\u0000\u0001Ȉ\u0002\u001b\u0003Ț\u0004\u001b\u0005ဉ\u0000\u0006\f\u0007Ȉ", new Object[]{"bitField0_", "name_", "fields_", Field.class, "oneofs_", "options_", Option.class, "sourceContext_", "syntax_", "edition_"});
            case 3:
                return new Type();
            case 4:
                return new v2(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Type.class) {
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

    public Field getFields(int i8) {
        return (Field) this.fields_.get(i8);
    }

    public int getFieldsCount() {
        return this.fields_.size();
    }

    public List<Field> getFieldsList() {
        return this.fields_;
    }

    public V0 getFieldsOrBuilder(int i8) {
        return (V0) this.fields_.get(i8);
    }

    public List<? extends V0> getFieldsOrBuilderList() {
        return this.fields_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public String getOneofs(int i8) {
        return (String) this.oneofs_.get(i8);
    }

    public r getOneofsBytes(int i8) {
        return r.l((String) this.oneofs_.get(i8));
    }

    public int getOneofsCount() {
        return this.oneofs_.size();
    }

    public List<String> getOneofsList() {
        return this.oneofs_;
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

    public static v2 newBuilder(Type type) {
        return (v2) DEFAULT_INSTANCE.createBuilder(type);
    }

    public static Type parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Type) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Type parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Type parseFrom(r rVar) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFields(int i8, Field field) {
        field.getClass();
        ensureFieldsIsMutable();
        this.fields_.add(i8, field);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOptions(int i8, Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.add(i8, option);
    }

    public static Type parseFrom(r rVar, O0 o4) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Type parseFrom(byte[] bArr) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Type parseFrom(byte[] bArr, O0 o4) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Type parseFrom(InputStream inputStream) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Type parseFrom(InputStream inputStream, O0 o4) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Type parseFrom(AbstractC2961w abstractC2961w) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Type parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Type) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
