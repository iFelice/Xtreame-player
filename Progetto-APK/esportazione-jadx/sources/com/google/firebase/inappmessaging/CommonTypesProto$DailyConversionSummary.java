package com.google.firebase.inappmessaging;

import V4.C0358f;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class CommonTypesProto$DailyConversionSummary extends AbstractC2909i1 implements R1 {
    public static final int CONVERSIONS_FIELD_NUMBER = 2;
    private static final CommonTypesProto$DailyConversionSummary DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int START_OF_DAY_MILLIS_FIELD_NUMBER = 1;
    private int conversions_;
    private long startOfDayMillis_;

    static {
        CommonTypesProto$DailyConversionSummary commonTypesProto$DailyConversionSummary = new CommonTypesProto$DailyConversionSummary();
        DEFAULT_INSTANCE = commonTypesProto$DailyConversionSummary;
        AbstractC2909i1.registerDefaultInstance(CommonTypesProto$DailyConversionSummary.class, commonTypesProto$DailyConversionSummary);
    }

    private CommonTypesProto$DailyConversionSummary() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearConversions() {
        this.conversions_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStartOfDayMillis() {
        this.startOfDayMillis_ = 0L;
    }

    public static CommonTypesProto$DailyConversionSummary getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C0358f newBuilder() {
        return (C0358f) DEFAULT_INSTANCE.createBuilder();
    }

    public static CommonTypesProto$DailyConversionSummary parseDelimitedFrom(InputStream inputStream) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(ByteBuffer byteBuffer) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConversions(int i8) {
        this.conversions_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStartOfDayMillis(long j8) {
        this.startOfDayMillis_ = j8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"startOfDayMillis_", "conversions_"});
            case 3:
                return new CommonTypesProto$DailyConversionSummary();
            case 4:
                return new C0358f(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CommonTypesProto$DailyConversionSummary.class) {
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

    public int getConversions() {
        return this.conversions_;
    }

    public long getStartOfDayMillis() {
        return this.startOfDayMillis_;
    }

    public static C0358f newBuilder(CommonTypesProto$DailyConversionSummary commonTypesProto$DailyConversionSummary) {
        return (C0358f) DEFAULT_INSTANCE.createBuilder(commonTypesProto$DailyConversionSummary);
    }

    public static CommonTypesProto$DailyConversionSummary parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(r rVar) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(r rVar, O0 o4) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(byte[] bArr) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(byte[] bArr, O0 o4) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(InputStream inputStream) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(AbstractC2961w abstractC2961w) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CommonTypesProto$DailyConversionSummary parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CommonTypesProto$DailyConversionSummary) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
