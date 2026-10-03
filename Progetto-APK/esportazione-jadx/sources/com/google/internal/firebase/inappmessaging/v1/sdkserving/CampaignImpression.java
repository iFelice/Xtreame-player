package com.google.internal.firebase.inappmessaging.v1.sdkserving;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import p091l5.a;
import p091l5.c;

/* JADX INFO: loaded from: classes.dex */
public final class CampaignImpression extends AbstractC2909i1 implements c {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    private static final CampaignImpression DEFAULT_INSTANCE;
    public static final int IMPRESSION_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER;
    private String campaignId_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private long impressionTimestampMillis_;

    static {
        CampaignImpression campaignImpression = new CampaignImpression();
        DEFAULT_INSTANCE = campaignImpression;
        AbstractC2909i1.registerDefaultInstance(CampaignImpression.class, campaignImpression);
    }

    private CampaignImpression() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCampaignId() {
        this.campaignId_ = getDefaultInstance().getCampaignId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearImpressionTimestampMillis() {
        this.impressionTimestampMillis_ = 0L;
    }

    public static CampaignImpression getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static a newBuilder() {
        return (a) DEFAULT_INSTANCE.createBuilder();
    }

    public static CampaignImpression parseDelimitedFrom(InputStream inputStream) {
        return (CampaignImpression) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignImpression parseFrom(ByteBuffer byteBuffer) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCampaignId(String str) {
        str.getClass();
        this.campaignId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCampaignIdBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.campaignId_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImpressionTimestampMillis(long j8) {
        this.impressionTimestampMillis_ = j8;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"campaignId_", "impressionTimestampMillis_"});
            case 3:
                return new CampaignImpression();
            case 4:
                return new a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CampaignImpression.class) {
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

    public long getImpressionTimestampMillis() {
        return this.impressionTimestampMillis_;
    }

    public static a newBuilder(CampaignImpression campaignImpression) {
        return (a) DEFAULT_INSTANCE.createBuilder(campaignImpression);
    }

    public static CampaignImpression parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CampaignImpression) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignImpression parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CampaignImpression parseFrom(r rVar) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static CampaignImpression parseFrom(r rVar, O0 o4) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CampaignImpression parseFrom(byte[] bArr) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CampaignImpression parseFrom(byte[] bArr, O0 o4) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CampaignImpression parseFrom(InputStream inputStream) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignImpression parseFrom(InputStream inputStream, O0 o4) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignImpression parseFrom(AbstractC2961w abstractC2961w) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CampaignImpression parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CampaignImpression) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
