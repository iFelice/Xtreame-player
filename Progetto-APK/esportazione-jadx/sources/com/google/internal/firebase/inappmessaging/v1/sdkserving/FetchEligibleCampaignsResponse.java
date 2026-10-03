package com.google.internal.firebase.inappmessaging.v1.sdkserving;

import com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent;
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
import p091l5.f;

/* JADX INFO: loaded from: classes.dex */
public final class FetchEligibleCampaignsResponse extends AbstractC2909i1 implements R1 {
    private static final FetchEligibleCampaignsResponse DEFAULT_INSTANCE;
    public static final int EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static final int MESSAGES_FIELD_NUMBER = 1;
    private static volatile InterfaceC2894e2 PARSER;
    private long expirationEpochTimestampMillis_;
    private InterfaceC2956u1 messages_ = AbstractC2909i1.emptyProtobufList();

    static {
        FetchEligibleCampaignsResponse fetchEligibleCampaignsResponse = new FetchEligibleCampaignsResponse();
        DEFAULT_INSTANCE = fetchEligibleCampaignsResponse;
        AbstractC2909i1.registerDefaultInstance(FetchEligibleCampaignsResponse.class, fetchEligibleCampaignsResponse);
    }

    private FetchEligibleCampaignsResponse() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllMessages(Iterable<? extends CampaignProto$ThickContent> iterable) {
        ensureMessagesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.messages_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMessages(CampaignProto$ThickContent campaignProto$ThickContent) {
        campaignProto$ThickContent.getClass();
        ensureMessagesIsMutable();
        this.messages_.add(campaignProto$ThickContent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExpirationEpochTimestampMillis() {
        this.expirationEpochTimestampMillis_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessages() {
        this.messages_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureMessagesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.messages_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.messages_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static FetchEligibleCampaignsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static f newBuilder() {
        return (f) DEFAULT_INSTANCE.createBuilder();
    }

    public static FetchEligibleCampaignsResponse parseDelimitedFrom(InputStream inputStream) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FetchEligibleCampaignsResponse parseFrom(ByteBuffer byteBuffer) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMessages(int i8) {
        ensureMessagesIsMutable();
        this.messages_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExpirationEpochTimestampMillis(long j8) {
        this.expirationEpochTimestampMillis_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMessages(int i8, CampaignProto$ThickContent campaignProto$ThickContent) {
        campaignProto$ThickContent.getClass();
        ensureMessagesIsMutable();
        this.messages_.set(i8, campaignProto$ThickContent);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"messages_", CampaignProto$ThickContent.class, "expirationEpochTimestampMillis_"});
            case 3:
                return new FetchEligibleCampaignsResponse();
            case 4:
                return new f(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (FetchEligibleCampaignsResponse.class) {
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

    public long getExpirationEpochTimestampMillis() {
        return this.expirationEpochTimestampMillis_;
    }

    public CampaignProto$ThickContent getMessages(int i8) {
        return (CampaignProto$ThickContent) this.messages_.get(i8);
    }

    public int getMessagesCount() {
        return this.messages_.size();
    }

    public List<CampaignProto$ThickContent> getMessagesList() {
        return this.messages_;
    }

    public p084k5.f getMessagesOrBuilder(int i8) {
        return (p084k5.f) this.messages_.get(i8);
    }

    public List<? extends p084k5.f> getMessagesOrBuilderList() {
        return this.messages_;
    }

    public static f newBuilder(FetchEligibleCampaignsResponse fetchEligibleCampaignsResponse) {
        return (f) DEFAULT_INSTANCE.createBuilder(fetchEligibleCampaignsResponse);
    }

    public static FetchEligibleCampaignsResponse parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static FetchEligibleCampaignsResponse parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static FetchEligibleCampaignsResponse parseFrom(r rVar) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMessages(int i8, CampaignProto$ThickContent campaignProto$ThickContent) {
        campaignProto$ThickContent.getClass();
        ensureMessagesIsMutable();
        this.messages_.add(i8, campaignProto$ThickContent);
    }

    public static FetchEligibleCampaignsResponse parseFrom(r rVar, O0 o4) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static FetchEligibleCampaignsResponse parseFrom(byte[] bArr) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static FetchEligibleCampaignsResponse parseFrom(byte[] bArr, O0 o4) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static FetchEligibleCampaignsResponse parseFrom(InputStream inputStream) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FetchEligibleCampaignsResponse parseFrom(InputStream inputStream, O0 o4) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static FetchEligibleCampaignsResponse parseFrom(AbstractC2961w abstractC2961w) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static FetchEligibleCampaignsResponse parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (FetchEligibleCampaignsResponse) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
