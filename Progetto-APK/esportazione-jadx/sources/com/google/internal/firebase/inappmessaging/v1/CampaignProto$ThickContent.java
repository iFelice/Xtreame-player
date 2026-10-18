package com.google.internal.firebase.inappmessaging.v1;

import V4.C0361i;
import V4.I;
import V4.p;
import com.google.firebase.inappmessaging.CommonTypesProto$Priority;
import com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition;
import com.google.firebase.inappmessaging.MessagesProto$Content;
import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.K1;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p084k5.a;
import p084k5.c;
import p084k5.d;
import p084k5.e;
import p084k5.f;
import p084k5.g;

/* JADX INFO: loaded from: classes.dex */
public final class CampaignProto$ThickContent extends AbstractC2909i1 implements f {
    public static final int CONTENT_FIELD_NUMBER = 3;
    public static final int DATA_BUNDLE_FIELD_NUMBER = 8;
    private static final CampaignProto$ThickContent DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_PAYLOAD_FIELD_NUMBER = 2;
    public static final int IS_TEST_CAMPAIGN_FIELD_NUMBER = 7;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PRIORITY_FIELD_NUMBER = 4;
    public static final int TRIGGERING_CONDITIONS_FIELD_NUMBER = 5;
    public static final int VANILLA_PAYLOAD_FIELD_NUMBER = 1;
    private int bitField0_;
    private MessagesProto$Content content_;
    private boolean isTestCampaign_;
    private Object payload_;
    private CommonTypesProto$Priority priority_;
    private int payloadCase_ = 0;
    private K1 dataBundle_ = K1.f24267H;
    private InterfaceC2956u1 triggeringConditions_ = AbstractC2909i1.emptyProtobufList();

    static {
        CampaignProto$ThickContent campaignProto$ThickContent = new CampaignProto$ThickContent();
        DEFAULT_INSTANCE = campaignProto$ThickContent;
        AbstractC2909i1.registerDefaultInstance(CampaignProto$ThickContent.class, campaignProto$ThickContent);
    }

    private CampaignProto$ThickContent() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllTriggeringConditions(Iterable<? extends CommonTypesProto$TriggeringCondition> iterable) {
        ensureTriggeringConditionsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.triggeringConditions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTriggeringConditions(CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition) {
        commonTypesProto$TriggeringCondition.getClass();
        ensureTriggeringConditionsIsMutable();
        this.triggeringConditions_.add(commonTypesProto$TriggeringCondition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearContent() {
        this.content_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExperimentalPayload() {
        if (this.payloadCase_ == 2) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearIsTestCampaign() {
        this.isTestCampaign_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPayload() {
        this.payloadCase_ = 0;
        this.payload_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPriority() {
        this.priority_ = null;
        this.bitField0_ &= -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTriggeringConditions() {
        this.triggeringConditions_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVanillaPayload() {
        if (this.payloadCase_ == 1) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    private void ensureTriggeringConditionsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.triggeringConditions_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.triggeringConditions_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static CampaignProto$ThickContent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getMutableDataBundleMap() {
        return internalGetMutableDataBundle();
    }

    private K1 internalGetDataBundle() {
        return this.dataBundle_;
    }

    private K1 internalGetMutableDataBundle() {
        K1 k8 = this.dataBundle_;
        if (!k8.f24268G) {
            this.dataBundle_ = k8.c();
        }
        return this.dataBundle_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeContent(MessagesProto$Content messagesProto$Content) {
        messagesProto$Content.getClass();
        MessagesProto$Content messagesProto$Content2 = this.content_;
        if (messagesProto$Content2 == null || messagesProto$Content2 == MessagesProto$Content.getDefaultInstance()) {
            this.content_ = messagesProto$Content;
        } else {
            I iNewBuilder = MessagesProto$Content.newBuilder(this.content_);
            iNewBuilder.g(messagesProto$Content);
            this.content_ = (MessagesProto$Content) iNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeExperimentalPayload(CampaignProto$ExperimentalCampaignPayload campaignProto$ExperimentalCampaignPayload) {
        campaignProto$ExperimentalCampaignPayload.getClass();
        if (this.payloadCase_ != 2 || this.payload_ == CampaignProto$ExperimentalCampaignPayload.getDefaultInstance()) {
            this.payload_ = campaignProto$ExperimentalCampaignPayload;
        } else {
            a aVarNewBuilder = CampaignProto$ExperimentalCampaignPayload.newBuilder((CampaignProto$ExperimentalCampaignPayload) this.payload_);
            aVarNewBuilder.g(campaignProto$ExperimentalCampaignPayload);
            this.payload_ = aVarNewBuilder.k();
        }
        this.payloadCase_ = 2;
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
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeVanillaPayload(CampaignProto$VanillaCampaignPayload campaignProto$VanillaCampaignPayload) {
        campaignProto$VanillaCampaignPayload.getClass();
        if (this.payloadCase_ != 1 || this.payload_ == CampaignProto$VanillaCampaignPayload.getDefaultInstance()) {
            this.payload_ = campaignProto$VanillaCampaignPayload;
        } else {
            g gVarNewBuilder = CampaignProto$VanillaCampaignPayload.newBuilder((CampaignProto$VanillaCampaignPayload) this.payload_);
            gVarNewBuilder.g(campaignProto$VanillaCampaignPayload);
            this.payload_ = gVarNewBuilder.k();
        }
        this.payloadCase_ = 1;
    }

    public static c newBuilder() {
        return (c) DEFAULT_INSTANCE.createBuilder();
    }

    public static CampaignProto$ThickContent parseDelimitedFrom(InputStream inputStream) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignProto$ThickContent parseFrom(ByteBuffer byteBuffer) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTriggeringConditions(int i8) {
        ensureTriggeringConditionsIsMutable();
        this.triggeringConditions_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContent(MessagesProto$Content messagesProto$Content) {
        messagesProto$Content.getClass();
        this.content_ = messagesProto$Content;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExperimentalPayload(CampaignProto$ExperimentalCampaignPayload campaignProto$ExperimentalCampaignPayload) {
        campaignProto$ExperimentalCampaignPayload.getClass();
        this.payload_ = campaignProto$ExperimentalCampaignPayload;
        this.payloadCase_ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIsTestCampaign(boolean z7) {
        this.isTestCampaign_ = z7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPriority(CommonTypesProto$Priority commonTypesProto$Priority) {
        commonTypesProto$Priority.getClass();
        this.priority_ = commonTypesProto$Priority;
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTriggeringConditions(int i8, CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition) {
        commonTypesProto$TriggeringCondition.getClass();
        ensureTriggeringConditionsIsMutable();
        this.triggeringConditions_.set(i8, commonTypesProto$TriggeringCondition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVanillaPayload(CampaignProto$VanillaCampaignPayload campaignProto$VanillaCampaignPayload) {
        campaignProto$VanillaCampaignPayload.getClass();
        this.payload_ = campaignProto$VanillaCampaignPayload;
        this.payloadCase_ = 1;
    }

    public boolean containsDataBundle(String str) {
        str.getClass();
        return internalGetDataBundle().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0001\u0001\b\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003ဉ\u0000\u0004ဉ\u0001\u0005\u001b\u0007\u0007\b2", new Object[]{"payload_", "payloadCase_", "bitField0_", CampaignProto$VanillaCampaignPayload.class, CampaignProto$ExperimentalCampaignPayload.class, "content_", "priority_", "triggeringConditions_", CommonTypesProto$TriggeringCondition.class, "isTestCampaign_", "dataBundle_", d.f26010a});
            case 3:
                return new CampaignProto$ThickContent();
            case 4:
                return new c(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (CampaignProto$ThickContent.class) {
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

    public MessagesProto$Content getContent() {
        MessagesProto$Content messagesProto$Content = this.content_;
        return messagesProto$Content == null ? MessagesProto$Content.getDefaultInstance() : messagesProto$Content;
    }

    @Deprecated
    public Map<String, String> getDataBundle() {
        return getDataBundleMap();
    }

    public int getDataBundleCount() {
        return internalGetDataBundle().size();
    }

    public Map<String, String> getDataBundleMap() {
        return Collections.unmodifiableMap(internalGetDataBundle());
    }

    public String getDataBundleOrDefault(String str, String str2) {
        str.getClass();
        K1 k1InternalGetDataBundle = internalGetDataBundle();
        return k1InternalGetDataBundle.containsKey(str) ? (String) k1InternalGetDataBundle.get(str) : str2;
    }

    public String getDataBundleOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetDataBundle = internalGetDataBundle();
        if (k1InternalGetDataBundle.containsKey(str)) {
            return (String) k1InternalGetDataBundle.get(str);
        }
        throw new IllegalArgumentException();
    }

    public CampaignProto$ExperimentalCampaignPayload getExperimentalPayload() {
        return this.payloadCase_ == 2 ? (CampaignProto$ExperimentalCampaignPayload) this.payload_ : CampaignProto$ExperimentalCampaignPayload.getDefaultInstance();
    }

    public boolean getIsTestCampaign() {
        return this.isTestCampaign_;
    }

    public e getPayloadCase() {
        int i8 = this.payloadCase_;
        if (i8 == 0) {
            return e.f26013I;
        }
        if (i8 == 1) {
            return e.f26011G;
        }
        if (i8 != 2) {
            return null;
        }
        return e.f26012H;
    }

    public CommonTypesProto$Priority getPriority() {
        CommonTypesProto$Priority commonTypesProto$Priority = this.priority_;
        return commonTypesProto$Priority == null ? CommonTypesProto$Priority.getDefaultInstance() : commonTypesProto$Priority;
    }

    public CommonTypesProto$TriggeringCondition getTriggeringConditions(int i8) {
        return (CommonTypesProto$TriggeringCondition) this.triggeringConditions_.get(i8);
    }

    public int getTriggeringConditionsCount() {
        return this.triggeringConditions_.size();
    }

    public List<CommonTypesProto$TriggeringCondition> getTriggeringConditionsList() {
        return this.triggeringConditions_;
    }

    public p getTriggeringConditionsOrBuilder(int i8) {
        return (p) this.triggeringConditions_.get(i8);
    }

    public List<? extends p> getTriggeringConditionsOrBuilderList() {
        return this.triggeringConditions_;
    }

    public CampaignProto$VanillaCampaignPayload getVanillaPayload() {
        return this.payloadCase_ == 1 ? (CampaignProto$VanillaCampaignPayload) this.payload_ : CampaignProto$VanillaCampaignPayload.getDefaultInstance();
    }

    public boolean hasContent() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean hasExperimentalPayload() {
        return this.payloadCase_ == 2;
    }

    public boolean hasPriority() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean hasVanillaPayload() {
        return this.payloadCase_ == 1;
    }

    public static c newBuilder(CampaignProto$ThickContent campaignProto$ThickContent) {
        return (c) DEFAULT_INSTANCE.createBuilder(campaignProto$ThickContent);
    }

    public static CampaignProto$ThickContent parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignProto$ThickContent parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static CampaignProto$ThickContent parseFrom(r rVar) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTriggeringConditions(int i8, CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition) {
        commonTypesProto$TriggeringCondition.getClass();
        ensureTriggeringConditionsIsMutable();
        this.triggeringConditions_.add(i8, commonTypesProto$TriggeringCondition);
    }

    public static CampaignProto$ThickContent parseFrom(r rVar, O0 o4) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static CampaignProto$ThickContent parseFrom(byte[] bArr) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CampaignProto$ThickContent parseFrom(byte[] bArr, O0 o4) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static CampaignProto$ThickContent parseFrom(InputStream inputStream) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CampaignProto$ThickContent parseFrom(InputStream inputStream, O0 o4) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static CampaignProto$ThickContent parseFrom(AbstractC2961w abstractC2961w) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static CampaignProto$ThickContent parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (CampaignProto$ThickContent) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
