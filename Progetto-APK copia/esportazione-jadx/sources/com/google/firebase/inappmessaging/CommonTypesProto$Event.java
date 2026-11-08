package com.google.firebase.inappmessaging;

import V4.C0359g;
import V4.InterfaceC0365m;
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

/* JADX INFO: loaded from: classes.dex */
public final class CommonTypesProto$Event extends AbstractC2909i1 implements R1 {
    public static final int COUNT_FIELD_NUMBER = 5;
    private static final CommonTypesProto$Event DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
    public static final int TIMESTAMP_MILLIS_FIELD_NUMBER = 3;
    public static final int TRIGGER_PARAMS_FIELD_NUMBER = 1;
    private int count_;
    private long previousTimestampMillis_;
    private long timestampMillis_;
    private InterfaceC2956u1 triggerParams_ = AbstractC2909i1.emptyProtobufList();
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        CommonTypesProto$Event commonTypesProto$Event = new CommonTypesProto$Event();
        DEFAULT_INSTANCE = commonTypesProto$Event;
        AbstractC2909i1.registerDefaultInstance(CommonTypesProto$Event.class, commonTypesProto$Event);
    }

    private CommonTypesProto$Event() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllTriggerParams(Iterable<? extends CommonTypesProto$TriggerParam> iterable) {
        ensureTriggerParamsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.triggerParams_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTriggerParams(CommonTypesProto$TriggerParam commonTypesProto$TriggerParam) {
        commonTypesProto$TriggerParam.getClass();
        ensureTriggerParamsIsMutable();
        this.triggerParams_.add(commonTypesProto$TriggerParam);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCount() {
        this.count_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPreviousTimestampMillis() {
        this.previousTimestampMillis_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimestampMillis() {
        this.timestampMillis_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTriggerParams() {
        this.triggerParams_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureTriggerParamsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.triggerParams_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.triggerParams_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static CommonTypesProto$Event getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C0359g newBuilder() {
        return (C0359g) DEFAULT_INSTANCE.createBuilder();
    }

    public static CommonTypesProto$Event parseDelimitedFrom(InputStream inputStream) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$Event parseFrom(ByteBuffer byteBuffer) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTriggerParams(int i8) {
        ensureTriggerParamsIsMutable();
        this.triggerParams_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCount(int i8) {
        this.count_ = i8;
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
    public void setPreviousTimestampMillis(long j8) {
        this.previousTimestampMillis_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestampMillis(long j8) {
        this.timestampMillis_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTriggerParams(int i8, CommonTypesProto$TriggerParam commonTypesProto$TriggerParam) {
        commonTypesProto$TriggerParam.getClass();
        ensureTriggerParamsIsMutable();
        this.triggerParams_.set(i8, commonTypesProto$TriggerParam);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002Ȉ\u0003\u0002\u0004\u0002\u0005\u0004", new Object[]{"triggerParams_", CommonTypesProto$TriggerParam.class, "name_", "timestampMillis_", "previousTimestampMillis_", "count_"});
            case 3:
                return new CommonTypesProto$Event();
            case 4:
                return new C0359g(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CommonTypesProto$Event.class) {
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

    public int getCount() {
        return this.count_;
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public long getPreviousTimestampMillis() {
        return this.previousTimestampMillis_;
    }

    public long getTimestampMillis() {
        return this.timestampMillis_;
    }

    public CommonTypesProto$TriggerParam getTriggerParams(int i8) {
        return (CommonTypesProto$TriggerParam) this.triggerParams_.get(i8);
    }

    public int getTriggerParamsCount() {
        return this.triggerParams_.size();
    }

    public List<CommonTypesProto$TriggerParam> getTriggerParamsList() {
        return this.triggerParams_;
    }

    public InterfaceC0365m getTriggerParamsOrBuilder(int i8) {
        return (InterfaceC0365m) this.triggerParams_.get(i8);
    }

    public List<? extends InterfaceC0365m> getTriggerParamsOrBuilderList() {
        return this.triggerParams_;
    }

    public static C0359g newBuilder(CommonTypesProto$Event commonTypesProto$Event) {
        return (C0359g) DEFAULT_INSTANCE.createBuilder(commonTypesProto$Event);
    }

    public static CommonTypesProto$Event parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$Event parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CommonTypesProto$Event parseFrom(r rVar) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTriggerParams(int i8, CommonTypesProto$TriggerParam commonTypesProto$TriggerParam) {
        commonTypesProto$TriggerParam.getClass();
        ensureTriggerParamsIsMutable();
        this.triggerParams_.add(i8, commonTypesProto$TriggerParam);
    }

    public static CommonTypesProto$Event parseFrom(r rVar, O0 o4) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CommonTypesProto$Event parseFrom(byte[] bArr) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CommonTypesProto$Event parseFrom(byte[] bArr, O0 o4) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CommonTypesProto$Event parseFrom(InputStream inputStream) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$Event parseFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$Event parseFrom(AbstractC2961w abstractC2961w) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CommonTypesProto$Event parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CommonTypesProto$Event) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
