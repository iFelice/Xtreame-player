package com.google.firebase.inappmessaging;

import V4.C0359g;
import V4.C0366n;
import V4.EnumC0363k;
import V4.EnumC0367o;
import V4.p;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class CommonTypesProto$TriggeringCondition extends AbstractC2909i1 implements p {
    private static final CommonTypesProto$TriggeringCondition DEFAULT_INSTANCE;
    public static final int EVENT_FIELD_NUMBER = 2;
    public static final int FIAM_TRIGGER_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private int conditionCase_ = 0;
    private Object condition_;

    static {
        CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition = new CommonTypesProto$TriggeringCondition();
        DEFAULT_INSTANCE = commonTypesProto$TriggeringCondition;
        AbstractC2909i1.registerDefaultInstance(CommonTypesProto$TriggeringCondition.class, commonTypesProto$TriggeringCondition);
    }

    private CommonTypesProto$TriggeringCondition() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCondition() {
        this.conditionCase_ = 0;
        this.condition_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEvent() {
        if (this.conditionCase_ == 2) {
            this.conditionCase_ = 0;
            this.condition_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFiamTrigger() {
        if (this.conditionCase_ == 1) {
            this.conditionCase_ = 0;
            this.condition_ = null;
        }
    }

    public static CommonTypesProto$TriggeringCondition getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeEvent(CommonTypesProto$Event commonTypesProto$Event) {
        commonTypesProto$Event.getClass();
        if (this.conditionCase_ != 2 || this.condition_ == CommonTypesProto$Event.getDefaultInstance()) {
            this.condition_ = commonTypesProto$Event;
        } else {
            C0359g c0359gNewBuilder = CommonTypesProto$Event.newBuilder((CommonTypesProto$Event) this.condition_);
            c0359gNewBuilder.g(commonTypesProto$Event);
            this.condition_ = c0359gNewBuilder.k();
        }
        this.conditionCase_ = 2;
    }

    public static C0366n newBuilder() {
        return (C0366n) DEFAULT_INSTANCE.createBuilder();
    }

    public static CommonTypesProto$TriggeringCondition parseDelimitedFrom(InputStream inputStream) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(ByteBuffer byteBuffer) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEvent(CommonTypesProto$Event commonTypesProto$Event) {
        commonTypesProto$Event.getClass();
        this.condition_ = commonTypesProto$Event;
        this.conditionCase_ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFiamTrigger(EnumC0363k enumC0363k) {
        this.condition_ = Integer.valueOf(enumC0363k.a());
        this.conditionCase_ = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFiamTriggerValue(int i8) {
        this.conditionCase_ = 1;
        this.condition_ = Integer.valueOf(i8);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000", new Object[]{"condition_", "conditionCase_", CommonTypesProto$Event.class});
            case 3:
                return new CommonTypesProto$TriggeringCondition();
            case 4:
                return new C0366n(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CommonTypesProto$TriggeringCondition.class) {
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

    public EnumC0367o getConditionCase() {
        int i8 = this.conditionCase_;
        if (i8 == 0) {
            return EnumC0367o.f7145I;
        }
        if (i8 == 1) {
            return EnumC0367o.f7143G;
        }
        if (i8 != 2) {
            return null;
        }
        return EnumC0367o.f7144H;
    }

    public CommonTypesProto$Event getEvent() {
        return this.conditionCase_ == 2 ? (CommonTypesProto$Event) this.condition_ : CommonTypesProto$Event.getDefaultInstance();
    }

    public EnumC0363k getFiamTrigger() {
        int i8 = this.conditionCase_;
        EnumC0363k enumC0363k = EnumC0363k.UNKNOWN_TRIGGER;
        if (i8 != 1) {
            return enumC0363k;
        }
        int iIntValue = ((Integer) this.condition_).intValue();
        if (iIntValue != 0) {
            if (iIntValue != 1) {
                enumC0363k = iIntValue != 2 ? null : EnumC0363k.ON_FOREGROUND;
            } else {
                enumC0363k = EnumC0363k.APP_LAUNCH;
            }
        }
        return enumC0363k == null ? EnumC0363k.UNRECOGNIZED : enumC0363k;
    }

    public int getFiamTriggerValue() {
        if (this.conditionCase_ == 1) {
            return ((Integer) this.condition_).intValue();
        }
        return 0;
    }

    public boolean hasEvent() {
        return this.conditionCase_ == 2;
    }

    public boolean hasFiamTrigger() {
        return this.conditionCase_ == 1;
    }

    public static C0366n newBuilder(CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition) {
        return (C0366n) DEFAULT_INSTANCE.createBuilder(commonTypesProto$TriggeringCondition);
    }

    public static CommonTypesProto$TriggeringCondition parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(r rVar) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(r rVar, O0 o4) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(byte[] bArr) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(byte[] bArr, O0 o4) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(InputStream inputStream) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(AbstractC2961w abstractC2961w) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CommonTypesProto$TriggeringCondition parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CommonTypesProto$TriggeringCondition) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
