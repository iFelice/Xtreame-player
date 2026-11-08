package com.google.api;

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
import p175w4.B0;
import p175w4.D0;

/* JADX INFO: loaded from: classes.dex */
public final class Usage extends AbstractC2909i1 implements R1 {
    private static final Usage DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int PRODUCER_NOTIFICATION_CHANNEL_FIELD_NUMBER = 7;
    public static final int REQUIREMENTS_FIELD_NUMBER = 1;
    public static final int RULES_FIELD_NUMBER = 6;
    private InterfaceC2956u1 requirements_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 rules_ = AbstractC2909i1.emptyProtobufList();
    private String producerNotificationChannel_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        Usage usage = new Usage();
        DEFAULT_INSTANCE = usage;
        AbstractC2909i1.registerDefaultInstance(Usage.class, usage);
    }

    private Usage() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRequirements(Iterable<String> iterable) {
        ensureRequirementsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.requirements_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllRules(Iterable<? extends UsageRule> iterable) {
        ensureRulesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.rules_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRequirements(String str) {
        str.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.add(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRequirementsBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        ensureRequirementsIsMutable();
        this.requirements_.add(rVar.t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(UsageRule usageRule) {
        usageRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(usageRule);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProducerNotificationChannel() {
        this.producerNotificationChannel_ = getDefaultInstance().getProducerNotificationChannel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRequirements() {
        this.requirements_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRules() {
        this.rules_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureRequirementsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.requirements_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.requirements_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureRulesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.rules_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.rules_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Usage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static B0 newBuilder() {
        return (B0) DEFAULT_INSTANCE.createBuilder();
    }

    public static Usage parseDelimitedFrom(InputStream inputStream) {
        return (Usage) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Usage parseFrom(ByteBuffer byteBuffer) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeRules(int i8) {
        ensureRulesIsMutable();
        this.rules_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProducerNotificationChannel(String str) {
        str.getClass();
        this.producerNotificationChannel_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProducerNotificationChannelBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.producerNotificationChannel_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRequirements(int i8, String str) {
        str.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.set(i8, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRules(int i8, UsageRule usageRule) {
        usageRule.getClass();
        ensureRulesIsMutable();
        this.rules_.set(i8, usageRule);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0007\u0003\u0000\u0002\u0000\u0001Ț\u0006\u001b\u0007Ȉ", new Object[]{"requirements_", "rules_", UsageRule.class, "producerNotificationChannel_"});
            case 3:
                return new Usage();
            case 4:
                return new B0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Usage.class) {
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

    public String getProducerNotificationChannel() {
        return this.producerNotificationChannel_;
    }

    public r getProducerNotificationChannelBytes() {
        return r.l(this.producerNotificationChannel_);
    }

    public String getRequirements(int i8) {
        return (String) this.requirements_.get(i8);
    }

    public r getRequirementsBytes(int i8) {
        return r.l((String) this.requirements_.get(i8));
    }

    public int getRequirementsCount() {
        return this.requirements_.size();
    }

    public List<String> getRequirementsList() {
        return this.requirements_;
    }

    public UsageRule getRules(int i8) {
        return (UsageRule) this.rules_.get(i8);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<UsageRule> getRulesList() {
        return this.rules_;
    }

    public D0 getRulesOrBuilder(int i8) {
        return (D0) this.rules_.get(i8);
    }

    public List<? extends D0> getRulesOrBuilderList() {
        return this.rules_;
    }

    public static B0 newBuilder(Usage usage) {
        return (B0) DEFAULT_INSTANCE.createBuilder(usage);
    }

    public static Usage parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Usage) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Usage parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Usage parseFrom(r rVar) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRules(int i8, UsageRule usageRule) {
        usageRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(i8, usageRule);
    }

    public static Usage parseFrom(r rVar, O0 o4) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Usage parseFrom(byte[] bArr) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Usage parseFrom(byte[] bArr, O0 o4) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Usage parseFrom(InputStream inputStream) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Usage parseFrom(InputStream inputStream, O0 o4) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Usage parseFrom(AbstractC2961w abstractC2961w) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Usage parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Usage) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
