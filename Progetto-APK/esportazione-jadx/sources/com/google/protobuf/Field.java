package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class Field extends AbstractC2909i1 implements V0 {
    public static final int CARDINALITY_FIELD_NUMBER = 2;
    private static final Field DEFAULT_INSTANCE;
    public static final int DEFAULT_VALUE_FIELD_NUMBER = 11;
    public static final int JSON_NAME_FIELD_NUMBER = 10;
    public static final int KIND_FIELD_NUMBER = 1;
    public static final int NAME_FIELD_NUMBER = 4;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int ONEOF_INDEX_FIELD_NUMBER = 7;
    public static final int OPTIONS_FIELD_NUMBER = 9;
    public static final int PACKED_FIELD_NUMBER = 8;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 6;
    private int cardinality_;
    private int kind_;
    private int number_;
    private int oneofIndex_;
    private boolean packed_;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String typeUrl_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 options_ = AbstractC2909i1.emptyProtobufList();
    private String jsonName_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String defaultValue_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        Field field = new Field();
        DEFAULT_INSTANCE = field;
        AbstractC2909i1.registerDefaultInstance(Field.class, field);
    }

    private Field() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllOptions(Iterable<? extends Option> iterable) {
        ensureOptionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.options_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOptions(Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.add(option);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCardinality() {
        this.cardinality_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDefaultValue() {
        this.defaultValue_ = getDefaultInstance().getDefaultValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearJsonName() {
        this.jsonName_ = getDefaultInstance().getJsonName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearKind() {
        this.kind_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNumber() {
        this.number_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOneofIndex() {
        this.oneofIndex_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOptions() {
        this.options_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPacked() {
        this.packed_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTypeUrl() {
        this.typeUrl_ = getDefaultInstance().getTypeUrl();
    }

    private void ensureOptionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.options_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.options_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Field getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static R0 newBuilder() {
        return (R0) DEFAULT_INSTANCE.createBuilder();
    }

    public static Field parseDelimitedFrom(InputStream inputStream) {
        return (Field) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Field parseFrom(ByteBuffer byteBuffer) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOptions(int i8) {
        ensureOptionsIsMutable();
        this.options_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCardinality(S0 s7) {
        this.cardinality_ = s7.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCardinalityValue(int i8) {
        this.cardinality_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultValue(String str) {
        str.getClass();
        this.defaultValue_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultValueBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.defaultValue_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJsonName(String str) {
        str.getClass();
        this.jsonName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJsonNameBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.jsonName_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKind(T0 t7) {
        this.kind_ = t7.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKindValue(int i8) {
        this.kind_ = i8;
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
    public void setNumber(int i8) {
        this.number_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOneofIndex(int i8) {
        this.oneofIndex_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOptions(int i8, Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.set(i8, option);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPacked(boolean z7) {
        this.packed_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeUrl(String str) {
        str.getClass();
        this.typeUrl_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTypeUrlBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.typeUrl_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\u000b\n\u0000\u0001\u0000\u0001\f\u0002\f\u0003\u0004\u0004Ȉ\u0006Ȉ\u0007\u0004\b\u0007\t\u001b\nȈ\u000bȈ", new Object[]{"kind_", "cardinality_", "number_", "name_", "typeUrl_", "oneofIndex_", "packed_", "options_", Option.class, "jsonName_", "defaultValue_"});
            case 3:
                return new Field();
            case 4:
                return new R0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Field.class) {
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

    public S0 getCardinality() {
        S0 s7;
        int i8 = this.cardinality_;
        if (i8 == 0) {
            s7 = S0.CARDINALITY_UNKNOWN;
        } else if (i8 == 1) {
            s7 = S0.CARDINALITY_OPTIONAL;
        } else if (i8 != 2) {
            s7 = i8 != 3 ? null : S0.CARDINALITY_REPEATED;
        } else {
            s7 = S0.CARDINALITY_REQUIRED;
        }
        return s7 == null ? S0.UNRECOGNIZED : s7;
    }

    public int getCardinalityValue() {
        return this.cardinality_;
    }

    public String getDefaultValue() {
        return this.defaultValue_;
    }

    public r getDefaultValueBytes() {
        return r.l(this.defaultValue_);
    }

    public String getJsonName() {
        return this.jsonName_;
    }

    public r getJsonNameBytes() {
        return r.l(this.jsonName_);
    }

    public T0 getKind() {
        T0 t0B = T0.b(this.kind_);
        return t0B == null ? T0.UNRECOGNIZED : t0B;
    }

    public int getKindValue() {
        return this.kind_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public int getNumber() {
        return this.number_;
    }

    public int getOneofIndex() {
        return this.oneofIndex_;
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

    public boolean getPacked() {
        return this.packed_;
    }

    public String getTypeUrl() {
        return this.typeUrl_;
    }

    public r getTypeUrlBytes() {
        return r.l(this.typeUrl_);
    }

    public static R0 newBuilder(Field field) {
        return (R0) DEFAULT_INSTANCE.createBuilder(field);
    }

    public static Field parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Field) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Field parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Field parseFrom(r rVar) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOptions(int i8, Option option) {
        option.getClass();
        ensureOptionsIsMutable();
        this.options_.add(i8, option);
    }

    public static Field parseFrom(r rVar, O0 o4) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Field parseFrom(byte[] bArr) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Field parseFrom(byte[] bArr, O0 o4) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Field parseFrom(InputStream inputStream) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Field parseFrom(InputStream inputStream, O0 o4) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Field parseFrom(AbstractC2961w abstractC2961w) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Field parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Field) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
