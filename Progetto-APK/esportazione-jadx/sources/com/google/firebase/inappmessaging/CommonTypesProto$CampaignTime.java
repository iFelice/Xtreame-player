package com.google.firebase.inappmessaging;

import V4.C0356d;
import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.r;
import com.google.type.Date;
import com.google.type.TimeOfDay;
import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import p122p5.b;
import p122p5.k;

/* JADX INFO: loaded from: classes.dex */
public final class CommonTypesProto$CampaignTime extends AbstractC2909i1 implements R1 {
    public static final int DATE_FIELD_NUMBER = 1;
    private static final CommonTypesProto$CampaignTime DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int TIME_FIELD_NUMBER = 2;
    public static final int TIME_ZONE_FIELD_NUMBER = 3;
    private int bitField0_;
    private Date date_;
    private String timeZone_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private TimeOfDay time_;

    static {
        CommonTypesProto$CampaignTime commonTypesProto$CampaignTime = new CommonTypesProto$CampaignTime();
        DEFAULT_INSTANCE = commonTypesProto$CampaignTime;
        AbstractC2909i1.registerDefaultInstance(CommonTypesProto$CampaignTime.class, commonTypesProto$CampaignTime);
    }

    private CommonTypesProto$CampaignTime() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDate() {
        this.date_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTime() {
        this.time_ = null;
        this.bitField0_ &= -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTimeZone() {
        this.timeZone_ = getDefaultInstance().getTimeZone();
    }

    public static CommonTypesProto$CampaignTime getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeDate(Date date) {
        date.getClass();
        Date date2 = this.date_;
        if (date2 == null || date2 == Date.getDefaultInstance()) {
            this.date_ = date;
        } else {
            b bVarNewBuilder = Date.newBuilder(this.date_);
            bVarNewBuilder.g(date);
            this.date_ = (Date) bVarNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeTime(TimeOfDay timeOfDay) {
        timeOfDay.getClass();
        TimeOfDay timeOfDay2 = this.time_;
        if (timeOfDay2 == null || timeOfDay2 == TimeOfDay.getDefaultInstance()) {
            this.time_ = timeOfDay;
        } else {
            k kVarNewBuilder = TimeOfDay.newBuilder(this.time_);
            kVarNewBuilder.g(timeOfDay);
            this.time_ = (TimeOfDay) kVarNewBuilder.k();
        }
        this.bitField0_ |= 2;
    }

    public static C0356d newBuilder() {
        return (C0356d) DEFAULT_INSTANCE.createBuilder();
    }

    public static CommonTypesProto$CampaignTime parseDelimitedFrom(InputStream inputStream) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$CampaignTime parseFrom(ByteBuffer byteBuffer) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDate(Date date) {
        date.getClass();
        this.date_ = date;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTime(TimeOfDay timeOfDay) {
        timeOfDay.getClass();
        this.time_ = timeOfDay;
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimeZone(String str) {
        str.getClass();
        this.timeZone_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimeZoneBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.timeZone_ = rVar.t();
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003Ȉ", new Object[]{"bitField0_", "date_", "time_", "timeZone_"});
            case 3:
                return new CommonTypesProto$CampaignTime();
            case 4:
                return new C0356d(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CommonTypesProto$CampaignTime.class) {
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

    public Date getDate() {
        Date date = this.date_;
        return date == null ? Date.getDefaultInstance() : date;
    }

    public TimeOfDay getTime() {
        TimeOfDay timeOfDay = this.time_;
        return timeOfDay == null ? TimeOfDay.getDefaultInstance() : timeOfDay;
    }

    public String getTimeZone() {
        return this.timeZone_;
    }

    public r getTimeZoneBytes() {
        return r.l(this.timeZone_);
    }

    public boolean hasDate() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasTime() {
        return (this.bitField0_ & 2) != 0;
    }

    public static C0356d newBuilder(CommonTypesProto$CampaignTime commonTypesProto$CampaignTime) {
        return (C0356d) DEFAULT_INSTANCE.createBuilder(commonTypesProto$CampaignTime);
    }

    public static CommonTypesProto$CampaignTime parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$CampaignTime parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CommonTypesProto$CampaignTime parseFrom(r rVar) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CommonTypesProto$CampaignTime parseFrom(r rVar, O0 o4) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CommonTypesProto$CampaignTime parseFrom(byte[] bArr) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CommonTypesProto$CampaignTime parseFrom(byte[] bArr, O0 o4) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CommonTypesProto$CampaignTime parseFrom(InputStream inputStream) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CommonTypesProto$CampaignTime parseFrom(InputStream inputStream, O0 o4) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CommonTypesProto$CampaignTime parseFrom(AbstractC2961w abstractC2961w) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CommonTypesProto$CampaignTime parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CommonTypesProto$CampaignTime) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
