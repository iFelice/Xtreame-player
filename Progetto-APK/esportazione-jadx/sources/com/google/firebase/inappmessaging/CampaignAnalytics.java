package com.google.firebase.inappmessaging;

import V4.C0353a;
import V4.C0355c;
import V4.EnumC0354b;
import V4.N;
import V4.O;
import V4.q;
import V4.s;
import V4.t;
import V4.y;
import V4.z;
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

/* JADX INFO: loaded from: classes.dex */
public final class CampaignAnalytics extends AbstractC2909i1 implements R1 {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 2;
    public static final int CLIENT_APP_FIELD_NUMBER = 3;
    public static final int CLIENT_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
    private static final CampaignAnalytics DEFAULT_INSTANCE;
    public static final int DISMISS_TYPE_FIELD_NUMBER = 6;
    public static final int ENGAGEMENTMETRICS_DELIVERY_RETRY_COUNT_FIELD_NUMBER = 10;
    public static final int EVENT_TYPE_FIELD_NUMBER = 5;
    public static final int FETCH_ERROR_REASON_FIELD_NUMBER = 8;
    public static final int FIAM_SDK_VERSION_FIELD_NUMBER = 9;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int RENDER_ERROR_REASON_FIELD_NUMBER = 7;
    private int bitField0_;
    private ClientAppInfo clientApp_;
    private long clientTimestampMillis_;
    private int engagementMetricsDeliveryRetryCount_;
    private Object event_;
    private int eventCase_ = 0;
    private String projectNumber_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String campaignId_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String fiamSdkVersion_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        CampaignAnalytics campaignAnalytics = new CampaignAnalytics();
        DEFAULT_INSTANCE = campaignAnalytics;
        AbstractC2909i1.registerDefaultInstance(CampaignAnalytics.class, campaignAnalytics);
    }

    private CampaignAnalytics() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCampaignId() {
        this.bitField0_ &= -3;
        this.campaignId_ = getDefaultInstance().getCampaignId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearClientApp() {
        this.clientApp_ = null;
        this.bitField0_ &= -5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearClientTimestampMillis() {
        this.bitField0_ &= -9;
        this.clientTimestampMillis_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDismissType() {
        if (this.eventCase_ == 6) {
            this.eventCase_ = 0;
            this.event_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEngagementMetricsDeliveryRetryCount() {
        this.bitField0_ &= -33;
        this.engagementMetricsDeliveryRetryCount_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEvent() {
        this.eventCase_ = 0;
        this.event_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearEventType() {
        if (this.eventCase_ == 5) {
            this.eventCase_ = 0;
            this.event_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFetchErrorReason() {
        if (this.eventCase_ == 8) {
            this.eventCase_ = 0;
            this.event_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFiamSdkVersion() {
        this.bitField0_ &= -17;
        this.fiamSdkVersion_ = getDefaultInstance().getFiamSdkVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProjectNumber() {
        this.bitField0_ &= -2;
        this.projectNumber_ = getDefaultInstance().getProjectNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRenderErrorReason() {
        if (this.eventCase_ == 7) {
            this.eventCase_ = 0;
            this.event_ = null;
        }
    }

    public static CampaignAnalytics getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeClientApp(ClientAppInfo clientAppInfo) {
        clientAppInfo.getClass();
        ClientAppInfo clientAppInfo2 = this.clientApp_;
        if (clientAppInfo2 == null || clientAppInfo2 == ClientAppInfo.getDefaultInstance()) {
            this.clientApp_ = clientAppInfo;
        } else {
            C0355c c0355cNewBuilder = ClientAppInfo.newBuilder(this.clientApp_);
            c0355cNewBuilder.g(clientAppInfo);
            this.clientApp_ = (ClientAppInfo) c0355cNewBuilder.k();
        }
        this.bitField0_ |= 4;
    }

    public static C0353a newBuilder() {
        return (C0353a) DEFAULT_INSTANCE.createBuilder();
    }

    public static CampaignAnalytics parseDelimitedFrom(InputStream inputStream) {
        return (CampaignAnalytics) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignAnalytics parseFrom(ByteBuffer byteBuffer) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCampaignId(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.campaignId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCampaignIdBytes(r rVar) {
        this.campaignId_ = rVar.t();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClientApp(ClientAppInfo clientAppInfo) {
        clientAppInfo.getClass();
        this.clientApp_ = clientAppInfo;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClientTimestampMillis(long j8) {
        this.bitField0_ |= 8;
        this.clientTimestampMillis_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDismissType(V4.r rVar) {
        this.event_ = Integer.valueOf(rVar.f7153G);
        this.eventCase_ = 6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEngagementMetricsDeliveryRetryCount(int i8) {
        this.bitField0_ |= 32;
        this.engagementMetricsDeliveryRetryCount_ = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEventType(t tVar) {
        this.event_ = Integer.valueOf(tVar.f7159G);
        this.eventCase_ = 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFetchErrorReason(z zVar) {
        this.event_ = Integer.valueOf(zVar.f7172G);
        this.eventCase_ = 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFiamSdkVersion(String str) {
        str.getClass();
        this.bitField0_ |= 16;
        this.fiamSdkVersion_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFiamSdkVersionBytes(r rVar) {
        this.fiamSdkVersion_ = rVar.t();
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProjectNumber(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.projectNumber_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProjectNumberBytes(r rVar) {
        this.projectNumber_ = rVar.t();
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRenderErrorReason(O o4) {
        this.event_ = Integer.valueOf(o4.f7130G);
        this.eventCase_ = 7;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0001\n\u0001\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဂ\u0003\u0005\u083f\u0000\u0006\u083f\u0000\u0007\u083f\u0000\b\u083f\u0000\tဈ\u0004\nင\u0005", new Object[]{"event_", "eventCase_", "bitField0_", "projectNumber_", "campaignId_", "clientApp_", "clientTimestampMillis_", s.f7154a, q.f7147a, N.f7124a, y.f7166a, "fiamSdkVersion_", "engagementMetricsDeliveryRetryCount_"});
            case 3:
                return new CampaignAnalytics();
            case 4:
                return new C0353a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CampaignAnalytics.class) {
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

    public String getCampaignId() {
        return this.campaignId_;
    }

    public r getCampaignIdBytes() {
        return r.l(this.campaignId_);
    }

    public ClientAppInfo getClientApp() {
        ClientAppInfo clientAppInfo = this.clientApp_;
        return clientAppInfo == null ? ClientAppInfo.getDefaultInstance() : clientAppInfo;
    }

    public long getClientTimestampMillis() {
        return this.clientTimestampMillis_;
    }

    public V4.r getDismissType() {
        V4.r rVarB;
        int i8 = this.eventCase_;
        V4.r rVar = V4.r.UNKNOWN_DISMISS_TYPE;
        return (i8 != 6 || (rVarB = V4.r.b(((Integer) this.event_).intValue())) == null) ? rVar : rVarB;
    }

    public int getEngagementMetricsDeliveryRetryCount() {
        return this.engagementMetricsDeliveryRetryCount_;
    }

    public EnumC0354b getEventCase() {
        int i8 = this.eventCase_;
        if (i8 == 0) {
            return EnumC0354b.f7135K;
        }
        if (i8 == 5) {
            return EnumC0354b.f7131G;
        }
        if (i8 == 6) {
            return EnumC0354b.f7132H;
        }
        if (i8 == 7) {
            return EnumC0354b.f7133I;
        }
        if (i8 != 8) {
            return null;
        }
        return EnumC0354b.f7134J;
    }

    public t getEventType() {
        t tVarB;
        int i8 = this.eventCase_;
        t tVar = t.UNKNOWN_EVENT_TYPE;
        return (i8 != 5 || (tVarB = t.b(((Integer) this.event_).intValue())) == null) ? tVar : tVarB;
    }

    public z getFetchErrorReason() {
        z zVarB;
        int i8 = this.eventCase_;
        z zVar = z.UNSPECIFIED_FETCH_ERROR;
        return (i8 != 8 || (zVarB = z.b(((Integer) this.event_).intValue())) == null) ? zVar : zVarB;
    }

    public String getFiamSdkVersion() {
        return this.fiamSdkVersion_;
    }

    public r getFiamSdkVersionBytes() {
        return r.l(this.fiamSdkVersion_);
    }

    public String getProjectNumber() {
        return this.projectNumber_;
    }

    public r getProjectNumberBytes() {
        return r.l(this.projectNumber_);
    }

    public O getRenderErrorReason() {
        O oB;
        int i8 = this.eventCase_;
        O o4 = O.UNSPECIFIED_RENDER_ERROR;
        return (i8 != 7 || (oB = O.b(((Integer) this.event_).intValue())) == null) ? o4 : oB;
    }

    public boolean hasCampaignId() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean hasClientApp() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean hasClientTimestampMillis() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean hasDismissType() {
        return this.eventCase_ == 6;
    }

    public boolean hasEngagementMetricsDeliveryRetryCount() {
        return (this.bitField0_ & 32) != 0;
    }

    public boolean hasEventType() {
        return this.eventCase_ == 5;
    }

    public boolean hasFetchErrorReason() {
        return this.eventCase_ == 8;
    }

    public boolean hasFiamSdkVersion() {
        return (this.bitField0_ & 16) != 0;
    }

    public boolean hasProjectNumber() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasRenderErrorReason() {
        return this.eventCase_ == 7;
    }

    public static C0353a newBuilder(CampaignAnalytics campaignAnalytics) {
        return (C0353a) DEFAULT_INSTANCE.createBuilder(campaignAnalytics);
    }

    public static CampaignAnalytics parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CampaignAnalytics) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignAnalytics parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CampaignAnalytics parseFrom(r rVar) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CampaignAnalytics parseFrom(r rVar, O0 o4) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CampaignAnalytics parseFrom(byte[] bArr) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CampaignAnalytics parseFrom(byte[] bArr, O0 o4) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CampaignAnalytics parseFrom(InputStream inputStream) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignAnalytics parseFrom(InputStream inputStream, O0 o4) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignAnalytics parseFrom(AbstractC2961w abstractC2961w) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CampaignAnalytics parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CampaignAnalytics) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
