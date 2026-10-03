package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2885c1;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.K1;
import com.google.protobuf.O0;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
import okhttp3.HttpUrl;
import p175w4.o0;
import p175w4.p0;
import p175w4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class QuotaLimit extends AbstractC2909i1 implements q0 {
    private static final QuotaLimit DEFAULT_INSTANCE;
    public static final int DEFAULT_LIMIT_FIELD_NUMBER = 3;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 12;
    public static final int DURATION_FIELD_NUMBER = 5;
    public static final int FREE_TIER_FIELD_NUMBER = 7;
    public static final int MAX_LIMIT_FIELD_NUMBER = 4;
    public static final int METRIC_FIELD_NUMBER = 8;
    public static final int NAME_FIELD_NUMBER = 6;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int UNIT_FIELD_NUMBER = 9;
    public static final int VALUES_FIELD_NUMBER = 10;
    private long defaultLimit_;
    private long freeTier_;
    private long maxLimit_;
    private K1 values_ = K1.f24267H;
    private String name_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String description_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String duration_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String metric_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String unit_ = HttpUrl.FRAGMENT_ENCODE_SET;
    private String displayName_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        QuotaLimit quotaLimit = new QuotaLimit();
        DEFAULT_INSTANCE = quotaLimit;
        AbstractC2909i1.registerDefaultInstance(QuotaLimit.class, quotaLimit);
    }

    private QuotaLimit() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDefaultLimit() {
        this.defaultLimit_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDescription() {
        this.description_ = getDefaultInstance().getDescription();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDisplayName() {
        this.displayName_ = getDefaultInstance().getDisplayName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDuration() {
        this.duration_ = getDefaultInstance().getDuration();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFreeTier() {
        this.freeTier_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMaxLimit() {
        this.maxLimit_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMetric() {
        this.metric_ = getDefaultInstance().getMetric();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearUnit() {
        this.unit_ = getDefaultInstance().getUnit();
    }

    public static QuotaLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Long> getMutableValuesMap() {
        return internalGetMutableValues();
    }

    private K1 internalGetMutableValues() {
        K1 k8 = this.values_;
        if (!k8.f24268G) {
            this.values_ = k8.c();
        }
        return this.values_;
    }

    private K1 internalGetValues() {
        return this.values_;
    }

    public static o0 newBuilder() {
        return (o0) DEFAULT_INSTANCE.createBuilder();
    }

    public static QuotaLimit parseDelimitedFrom(InputStream inputStream) {
        return (QuotaLimit) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static QuotaLimit parseFrom(ByteBuffer byteBuffer) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultLimit(long j8) {
        this.defaultLimit_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDescription(String str) {
        str.getClass();
        this.description_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDescriptionBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.description_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayName(String str) {
        str.getClass();
        this.displayName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayNameBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.displayName_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDuration(String str) {
        str.getClass();
        this.duration_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDurationBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.duration_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFreeTier(long j8) {
        this.freeTier_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMaxLimit(long j8) {
        this.maxLimit_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetric(String str) {
        str.getClass();
        this.metric_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetricBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.metric_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.name_ = rVar.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUnit(String str) {
        str.getClass();
        this.unit_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUnitBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.unit_ = rVar.t();
    }

    public boolean containsValues(String str) {
        str.getClass();
        return internalGetValues().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0002\f\n\u0001\u0000\u0000\u0002Ȉ\u0003\u0002\u0004\u0002\u0005Ȉ\u0006Ȉ\u0007\u0002\bȈ\tȈ\n2\fȈ", new Object[]{"description_", "defaultLimit_", "maxLimit_", "duration_", "name_", "freeTier_", "metric_", "unit_", "values_", p0.f31082a, "displayName_"});
            case 3:
                return new QuotaLimit();
            case 4:
                return new o0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (QuotaLimit.class) {
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

    public long getDefaultLimit() {
        return this.defaultLimit_;
    }

    public String getDescription() {
        return this.description_;
    }

    public r getDescriptionBytes() {
        return r.l(this.description_);
    }

    public String getDisplayName() {
        return this.displayName_;
    }

    public r getDisplayNameBytes() {
        return r.l(this.displayName_);
    }

    public String getDuration() {
        return this.duration_;
    }

    public r getDurationBytes() {
        return r.l(this.duration_);
    }

    public long getFreeTier() {
        return this.freeTier_;
    }

    public long getMaxLimit() {
        return this.maxLimit_;
    }

    public String getMetric() {
        return this.metric_;
    }

    public r getMetricBytes() {
        return r.l(this.metric_);
    }

    public String getName() {
        return this.name_;
    }

    public r getNameBytes() {
        return r.l(this.name_);
    }

    public String getUnit() {
        return this.unit_;
    }

    public r getUnitBytes() {
        return r.l(this.unit_);
    }

    @Deprecated
    public Map<String, Long> getValues() {
        return getValuesMap();
    }

    public int getValuesCount() {
        return internalGetValues().size();
    }

    public Map<String, Long> getValuesMap() {
        return Collections.unmodifiableMap(internalGetValues());
    }

    public long getValuesOrDefault(String str, long j8) {
        str.getClass();
        K1 k1InternalGetValues = internalGetValues();
        return k1InternalGetValues.containsKey(str) ? ((Long) k1InternalGetValues.get(str)).longValue() : j8;
    }

    public long getValuesOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetValues = internalGetValues();
        if (k1InternalGetValues.containsKey(str)) {
            return ((Long) k1InternalGetValues.get(str)).longValue();
        }
        throw new IllegalArgumentException();
    }

    public static o0 newBuilder(QuotaLimit quotaLimit) {
        return (o0) DEFAULT_INSTANCE.createBuilder(quotaLimit);
    }

    public static QuotaLimit parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (QuotaLimit) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static QuotaLimit parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static QuotaLimit parseFrom(r rVar) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static QuotaLimit parseFrom(r rVar, O0 o4) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static QuotaLimit parseFrom(byte[] bArr) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static QuotaLimit parseFrom(byte[] bArr, O0 o4) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static QuotaLimit parseFrom(InputStream inputStream) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static QuotaLimit parseFrom(InputStream inputStream, O0 o4) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static QuotaLimit parseFrom(AbstractC2961w abstractC2961w) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static QuotaLimit parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (QuotaLimit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
