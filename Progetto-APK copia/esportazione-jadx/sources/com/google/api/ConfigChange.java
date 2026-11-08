package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.HttpUrl;
import p175w4.C3220q;
import p175w4.EnumC3219p;
import p175w4.InterfaceC3202b;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigChange extends AbstractC2909i1 implements R1 {
    public static final int ADVICES_FIELD_NUMBER = 5;
    public static final int CHANGE_TYPE_FIELD_NUMBER = 4;
    private static final ConfigChange DEFAULT_INSTANCE;
    public static final int ELEMENT_FIELD_NUMBER = 1;
    public static final int NEW_VALUE_FIELD_NUMBER = 3;
    public static final int OLD_VALUE_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER;
    private int changeType_;
    private String element_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String oldValue_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String newValue_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2956u1 advices_ = AbstractC2909i1.emptyProtobufList();

    static {
        ConfigChange configChange = new ConfigChange();
        DEFAULT_INSTANCE = configChange;
        AbstractC2909i1.registerDefaultInstance(ConfigChange.class, configChange);
    }

    private ConfigChange() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAdvices(Advice advice) {
        advice.getClass();
        ensureAdvicesIsMutable();
        this.advices_.add(advice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllAdvices(Iterable<? extends Advice> iterable) {
        ensureAdvicesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.advices_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAdvices() {
        this.advices_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearChangeType() {
        this.changeType_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearElement() {
        this.element_ = getDefaultInstance().getElement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNewValue() {
        this.newValue_ = getDefaultInstance().getNewValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearOldValue() {
        this.oldValue_ = getDefaultInstance().getOldValue();
    }

    private void ensureAdvicesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.advices_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.advices_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static ConfigChange getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3220q newBuilder() {
        return (C3220q) DEFAULT_INSTANCE.createBuilder();
    }

    public static ConfigChange parseDelimitedFrom(InputStream inputStream) {
        return (ConfigChange) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ConfigChange parseFrom(ByteBuffer byteBuffer) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAdvices(int i8) {
        ensureAdvicesIsMutable();
        this.advices_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdvices(int i8, Advice advice) {
        advice.getClass();
        ensureAdvicesIsMutable();
        this.advices_.set(i8, advice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChangeType(EnumC3219p enumC3219p) {
        this.changeType_ = enumC3219p.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChangeTypeValue(int i8) {
        this.changeType_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setElement(String str) {
        str.getClass();
        this.element_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setElementBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.element_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNewValue(String str) {
        str.getClass();
        this.newValue_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNewValueBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.newValue_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOldValue(String str) {
        str.getClass();
        this.oldValue_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOldValueBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.oldValue_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f\u0005\u001b", new Object[]{"element_", "oldValue_", "newValue_", "changeType_", "advices_", Advice.class});
            case 3:
                return new ConfigChange();
            case 4:
                return new C3220q(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (ConfigChange.class) {
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

    public Advice getAdvices(int i8) {
        return (Advice) this.advices_.get(i8);
    }

    public int getAdvicesCount() {
        return this.advices_.size();
    }

    public List<Advice> getAdvicesList() {
        return this.advices_;
    }

    public InterfaceC3202b getAdvicesOrBuilder(int i8) {
        return (InterfaceC3202b) this.advices_.get(i8);
    }

    public List<? extends InterfaceC3202b> getAdvicesOrBuilderList() {
        return this.advices_;
    }

    public EnumC3219p getChangeType() {
        EnumC3219p enumC3219p;
        int i8 = this.changeType_;
        if (i8 == 0) {
            enumC3219p = EnumC3219p.CHANGE_TYPE_UNSPECIFIED;
        } else if (i8 == 1) {
            enumC3219p = EnumC3219p.ADDED;
        } else if (i8 != 2) {
            enumC3219p = i8 != 3 ? null : EnumC3219p.MODIFIED;
        } else {
            enumC3219p = EnumC3219p.REMOVED;
        }
        return enumC3219p == null ? EnumC3219p.UNRECOGNIZED : enumC3219p;
    }

    public int getChangeTypeValue() {
        return this.changeType_;
    }

    public String getElement() {
        return this.element_;
    }

    public r getElementBytes() {
        return r.l(this.element_);
    }

    public String getNewValue() {
        return this.newValue_;
    }

    public r getNewValueBytes() {
        return r.l(this.newValue_);
    }

    public String getOldValue() {
        return this.oldValue_;
    }

    public r getOldValueBytes() {
        return r.l(this.oldValue_);
    }

    public static C3220q newBuilder(ConfigChange configChange) {
        return (C3220q) DEFAULT_INSTANCE.createBuilder(configChange);
    }

    public static ConfigChange parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (ConfigChange) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ConfigChange parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static ConfigChange parseFrom(r rVar) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAdvices(int i8, Advice advice) {
        advice.getClass();
        ensureAdvicesIsMutable();
        this.advices_.add(i8, advice);
    }

    public static ConfigChange parseFrom(r rVar, O0 o4) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static ConfigChange parseFrom(byte[] bArr) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ConfigChange parseFrom(byte[] bArr, O0 o4) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static ConfigChange parseFrom(InputStream inputStream) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ConfigChange parseFrom(InputStream inputStream, O0 o4) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static ConfigChange parseFrom(AbstractC2961w abstractC2961w) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static ConfigChange parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (ConfigChange) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
