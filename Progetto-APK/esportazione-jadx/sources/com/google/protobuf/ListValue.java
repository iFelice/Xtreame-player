package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ListValue extends AbstractC2909i1 implements R1 {
    private static final ListValue DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int VALUES_FIELD_NUMBER = 1;
    private InterfaceC2956u1 values_ = AbstractC2909i1.emptyProtobufList();

    static {
        ListValue listValue = new ListValue();
        DEFAULT_INSTANCE = listValue;
        AbstractC2909i1.registerDefaultInstance(ListValue.class, listValue);
    }

    private ListValue() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllValues(Iterable<? extends Value> iterable) {
        ensureValuesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.values_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addValues(Value value) {
        value.getClass();
        ensureValuesIsMutable();
        this.values_.add(value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearValues() {
        this.values_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureValuesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.values_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.values_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static ListValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static E1 newBuilder() {
        return (E1) DEFAULT_INSTANCE.createBuilder();
    }

    public static ListValue parseDelimitedFrom(InputStream inputStream) {
        return (ListValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListValue parseFrom(ByteBuffer byteBuffer) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeValues(int i8) {
        ensureValuesIsMutable();
        this.values_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValues(int i8, Value value) {
        value.getClass();
        ensureValuesIsMutable();
        this.values_.set(i8, value);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"values_", Value.class});
            case 3:
                return new ListValue();
            case 4:
                return new E1(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (ListValue.class) {
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

    public Value getValues(int i8) {
        return (Value) this.values_.get(i8);
    }

    public int getValuesCount() {
        return this.values_.size();
    }

    public List<Value> getValuesList() {
        return this.values_;
    }

    public N2 getValuesOrBuilder(int i8) {
        return (N2) this.values_.get(i8);
    }

    public List<? extends N2> getValuesOrBuilderList() {
        return this.values_;
    }

    public static E1 newBuilder(ListValue listValue) {
        return (E1) DEFAULT_INSTANCE.createBuilder(listValue);
    }

    public static ListValue parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (ListValue) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ListValue parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static ListValue parseFrom(r rVar) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addValues(int i8, Value value) {
        value.getClass();
        ensureValuesIsMutable();
        this.values_.add(i8, value);
    }

    public static ListValue parseFrom(r rVar, O0 o4) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static ListValue parseFrom(byte[] bArr) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ListValue parseFrom(byte[] bArr, O0 o4) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static ListValue parseFrom(InputStream inputStream) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListValue parseFrom(InputStream inputStream, O0 o4) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ListValue parseFrom(AbstractC2961w abstractC2961w) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static ListValue parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (ListValue) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
