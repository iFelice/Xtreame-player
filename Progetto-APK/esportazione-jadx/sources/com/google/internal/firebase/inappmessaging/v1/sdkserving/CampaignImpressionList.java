package com.google.internal.firebase.inappmessaging.v1.sdkserving;

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
import p091l5.b;
import p091l5.c;

/* JADX INFO: loaded from: classes.dex */
public final class CampaignImpressionList extends AbstractC2909i1 implements R1 {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 1;
    private static final CampaignImpressionList DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER;
    private InterfaceC2956u1 alreadySeenCampaigns_ = AbstractC2909i1.emptyProtobufList();

    static {
        CampaignImpressionList campaignImpressionList = new CampaignImpressionList();
        DEFAULT_INSTANCE = campaignImpressionList;
        AbstractC2909i1.registerDefaultInstance(CampaignImpressionList.class, campaignImpressionList);
    }

    private CampaignImpressionList() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllAlreadySeenCampaigns(Iterable<? extends CampaignImpression> iterable) {
        ensureAlreadySeenCampaignsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.alreadySeenCampaigns_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAlreadySeenCampaigns(CampaignImpression campaignImpression) {
        campaignImpression.getClass();
        ensureAlreadySeenCampaignsIsMutable();
        this.alreadySeenCampaigns_.add(campaignImpression);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAlreadySeenCampaigns() {
        this.alreadySeenCampaigns_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureAlreadySeenCampaignsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.alreadySeenCampaigns_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.alreadySeenCampaigns_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static CampaignImpressionList getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static b newBuilder() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public static CampaignImpressionList parseDelimitedFrom(InputStream inputStream) {
        return (CampaignImpressionList) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignImpressionList parseFrom(ByteBuffer byteBuffer) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAlreadySeenCampaigns(int i8) {
        ensureAlreadySeenCampaignsIsMutable();
        this.alreadySeenCampaigns_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAlreadySeenCampaigns(int i8, CampaignImpression campaignImpression) {
        campaignImpression.getClass();
        ensureAlreadySeenCampaignsIsMutable();
        this.alreadySeenCampaigns_.set(i8, campaignImpression);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"alreadySeenCampaigns_", CampaignImpression.class});
            case 3:
                return new CampaignImpressionList();
            case 4:
                return new b(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CampaignImpressionList.class) {
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

    public CampaignImpression getAlreadySeenCampaigns(int i8) {
        return (CampaignImpression) this.alreadySeenCampaigns_.get(i8);
    }

    public int getAlreadySeenCampaignsCount() {
        return this.alreadySeenCampaigns_.size();
    }

    public List<CampaignImpression> getAlreadySeenCampaignsList() {
        return this.alreadySeenCampaigns_;
    }

    public c getAlreadySeenCampaignsOrBuilder(int i8) {
        return (c) this.alreadySeenCampaigns_.get(i8);
    }

    public List<? extends c> getAlreadySeenCampaignsOrBuilderList() {
        return this.alreadySeenCampaigns_;
    }

    public static b newBuilder(CampaignImpressionList campaignImpressionList) {
        return (b) DEFAULT_INSTANCE.createBuilder(campaignImpressionList);
    }

    public static CampaignImpressionList parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CampaignImpressionList) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignImpressionList parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CampaignImpressionList parseFrom(r rVar) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAlreadySeenCampaigns(int i8, CampaignImpression campaignImpression) {
        campaignImpression.getClass();
        ensureAlreadySeenCampaignsIsMutable();
        this.alreadySeenCampaigns_.add(i8, campaignImpression);
    }

    public static CampaignImpressionList parseFrom(r rVar, O0 o4) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CampaignImpressionList parseFrom(byte[] bArr) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CampaignImpressionList parseFrom(byte[] bArr, O0 o4) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CampaignImpressionList parseFrom(InputStream inputStream) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignImpressionList parseFrom(InputStream inputStream, O0 o4) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignImpressionList parseFrom(AbstractC2961w abstractC2961w) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CampaignImpressionList parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CampaignImpressionList) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
