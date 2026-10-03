package com.google.internal.firebase.inappmessaging.v1;

import V4.C0356d;
import V4.C0361i;
import com.google.firebase.inappmessaging.CommonTypesProto$CampaignTime;
import com.google.firebase.inappmessaging.CommonTypesProto$Priority;
import com.google.protobuf.AbstractC2879b;
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
import okhttp3.HttpUrl;
import p084k5.b;

/* JADX INFO: loaded from: classes.dex */
public final class CampaignProto$ExperimentalCampaignRollout extends AbstractC2909i1 implements R1 {
    private static final CampaignProto$ExperimentalCampaignRollout DEFAULT_INSTANCE;
    public static final int END_TIME_FIELD_NUMBER = 5;
    public static final int EXPERIMENT_ID_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PRIORITY_FIELD_NUMBER = 3;
    public static final int SELECTED_VARIANT_INDEX_FIELD_NUMBER = 2;
    public static final int START_TIME_FIELD_NUMBER = 4;
    private int bitField0_;
    private CommonTypesProto$CampaignTime endTime_;
    private String experimentId_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private CommonTypesProto$Priority priority_;
    private int selectedVariantIndex_;
    private CommonTypesProto$CampaignTime startTime_;

    static {
        CampaignProto$ExperimentalCampaignRollout campaignProto$ExperimentalCampaignRollout = new CampaignProto$ExperimentalCampaignRollout();
        DEFAULT_INSTANCE = campaignProto$ExperimentalCampaignRollout;
        AbstractC2909i1.registerDefaultInstance(CampaignProto$ExperimentalCampaignRollout.class, campaignProto$ExperimentalCampaignRollout);
    }

    private CampaignProto$ExperimentalCampaignRollout() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEndTime() {
        this.endTime_ = null;
        this.bitField0_ &= -5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExperimentId() {
        this.experimentId_ = getDefaultInstance().getExperimentId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPriority() {
        this.priority_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelectedVariantIndex() {
        this.selectedVariantIndex_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearStartTime() {
        this.startTime_ = null;
        this.bitField0_ &= -3;
    }

    public static CampaignProto$ExperimentalCampaignRollout getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeEndTime(CommonTypesProto$CampaignTime commonTypesProto$CampaignTime) {
        commonTypesProto$CampaignTime.getClass();
        CommonTypesProto$CampaignTime commonTypesProto$CampaignTime2 = this.endTime_;
        if (commonTypesProto$CampaignTime2 == null || commonTypesProto$CampaignTime2 == CommonTypesProto$CampaignTime.getDefaultInstance()) {
            this.endTime_ = commonTypesProto$CampaignTime;
        } else {
            C0356d c0356dNewBuilder = CommonTypesProto$CampaignTime.newBuilder(this.endTime_);
            c0356dNewBuilder.g(commonTypesProto$CampaignTime);
            this.endTime_ = (CommonTypesProto$CampaignTime) c0356dNewBuilder.k();
        }
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergePriority(CommonTypesProto$Priority commonTypesProto$Priority) {
        commonTypesProto$Priority.getClass();
        CommonTypesProto$Priority commonTypesProto$Priority2 = this.priority_;
        if (commonTypesProto$Priority2 == null || commonTypesProto$Priority2 == CommonTypesProto$Priority.getDefaultInstance()) {
            this.priority_ = commonTypesProto$Priority;
        } else {
            C0361i c0361iNewBuilder = CommonTypesProto$Priority.newBuilder(this.priority_);
            c0361iNewBuilder.g(commonTypesProto$Priority);
            this.priority_ = (CommonTypesProto$Priority) c0361iNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeStartTime(CommonTypesProto$CampaignTime commonTypesProto$CampaignTime) {
        commonTypesProto$CampaignTime.getClass();
        CommonTypesProto$CampaignTime commonTypesProto$CampaignTime2 = this.startTime_;
        if (commonTypesProto$CampaignTime2 == null || commonTypesProto$CampaignTime2 == CommonTypesProto$CampaignTime.getDefaultInstance()) {
            this.startTime_ = commonTypesProto$CampaignTime;
        } else {
            C0356d c0356dNewBuilder = CommonTypesProto$CampaignTime.newBuilder(this.startTime_);
            c0356dNewBuilder.g(commonTypesProto$CampaignTime);
            this.startTime_ = (CommonTypesProto$CampaignTime) c0356dNewBuilder.k();
        }
        this.bitField0_ |= 2;
    }

    public static b newBuilder() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public static CampaignProto$ExperimentalCampaignRollout parseDelimitedFrom(InputStream inputStream) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(ByteBuffer byteBuffer) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndTime(CommonTypesProto$CampaignTime commonTypesProto$CampaignTime) {
        commonTypesProto$CampaignTime.getClass();
        this.endTime_ = commonTypesProto$CampaignTime;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExperimentId(String str) {
        str.getClass();
        this.experimentId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExperimentIdBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.experimentId_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPriority(CommonTypesProto$Priority commonTypesProto$Priority) {
        commonTypesProto$Priority.getClass();
        this.priority_ = commonTypesProto$Priority;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelectedVariantIndex(int i8) {
        this.selectedVariantIndex_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStartTime(CommonTypesProto$CampaignTime commonTypesProto$CampaignTime) {
        commonTypesProto$CampaignTime.getClass();
        this.startTime_ = commonTypesProto$CampaignTime;
        this.bitField0_ |= 2;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003ဉ\u0000\u0004ဉ\u0001\u0005ဉ\u0002", new Object[]{"bitField0_", "experimentId_", "selectedVariantIndex_", "priority_", "startTime_", "endTime_"});
            case 3:
                return new CampaignProto$ExperimentalCampaignRollout();
            case 4:
                return new b(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CampaignProto$ExperimentalCampaignRollout.class) {
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

    public CommonTypesProto$CampaignTime getEndTime() {
        CommonTypesProto$CampaignTime commonTypesProto$CampaignTime = this.endTime_;
        return commonTypesProto$CampaignTime == null ? CommonTypesProto$CampaignTime.getDefaultInstance() : commonTypesProto$CampaignTime;
    }

    public String getExperimentId() {
        return this.experimentId_;
    }

    public r getExperimentIdBytes() {
        return r.l(this.experimentId_);
    }

    public CommonTypesProto$Priority getPriority() {
        CommonTypesProto$Priority commonTypesProto$Priority = this.priority_;
        return commonTypesProto$Priority == null ? CommonTypesProto$Priority.getDefaultInstance() : commonTypesProto$Priority;
    }

    public int getSelectedVariantIndex() {
        return this.selectedVariantIndex_;
    }

    public CommonTypesProto$CampaignTime getStartTime() {
        CommonTypesProto$CampaignTime commonTypesProto$CampaignTime = this.startTime_;
        return commonTypesProto$CampaignTime == null ? CommonTypesProto$CampaignTime.getDefaultInstance() : commonTypesProto$CampaignTime;
    }

    public boolean hasEndTime() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean hasPriority() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasStartTime() {
        return (this.bitField0_ & 2) != 0;
    }

    public static b newBuilder(CampaignProto$ExperimentalCampaignRollout campaignProto$ExperimentalCampaignRollout) {
        return (b) DEFAULT_INSTANCE.createBuilder(campaignProto$ExperimentalCampaignRollout);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(r rVar) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(r rVar, O0 o4) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(byte[] bArr) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(byte[] bArr, O0 o4) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(InputStream inputStream) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(InputStream inputStream, O0 o4) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(AbstractC2961w abstractC2961w) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CampaignProto$ExperimentalCampaignRollout parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CampaignProto$ExperimentalCampaignRollout) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
