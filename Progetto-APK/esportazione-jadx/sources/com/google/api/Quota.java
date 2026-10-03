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
import p175w4.Y;
import p175w4.n0;
import p175w4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class Quota extends AbstractC2909i1 implements R1 {
    private static final Quota DEFAULT_INSTANCE;
    public static final int LIMITS_FIELD_NUMBER = 3;
    public static final int METRIC_RULES_FIELD_NUMBER = 4;
    private static volatile InterfaceC2894e2 PARSER;
    private InterfaceC2956u1 limits_ = AbstractC2909i1.emptyProtobufList();
    private InterfaceC2956u1 metricRules_ = AbstractC2909i1.emptyProtobufList();

    static {
        Quota quota = new Quota();
        DEFAULT_INSTANCE = quota;
        AbstractC2909i1.registerDefaultInstance(Quota.class, quota);
    }

    private Quota() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllLimits(Iterable<? extends QuotaLimit> iterable) {
        ensureLimitsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.limits_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllMetricRules(Iterable<? extends MetricRule> iterable) {
        ensureMetricRulesIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.metricRules_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLimits(QuotaLimit quotaLimit) {
        quotaLimit.getClass();
        ensureLimitsIsMutable();
        this.limits_.add(quotaLimit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMetricRules(MetricRule metricRule) {
        metricRule.getClass();
        ensureMetricRulesIsMutable();
        this.metricRules_.add(metricRule);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLimits() {
        this.limits_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMetricRules() {
        this.metricRules_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureLimitsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.limits_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.limits_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    private void ensureMetricRulesIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.metricRules_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.metricRules_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Quota getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static n0 newBuilder() {
        return (n0) DEFAULT_INSTANCE.createBuilder();
    }

    public static Quota parseDelimitedFrom(InputStream inputStream) {
        return (Quota) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Quota parseFrom(ByteBuffer byteBuffer) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLimits(int i8) {
        ensureLimitsIsMutable();
        this.limits_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMetricRules(int i8) {
        ensureMetricRulesIsMutable();
        this.metricRules_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLimits(int i8, QuotaLimit quotaLimit) {
        quotaLimit.getClass();
        ensureLimitsIsMutable();
        this.limits_.set(i8, quotaLimit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMetricRules(int i8, MetricRule metricRule) {
        metricRule.getClass();
        ensureMetricRulesIsMutable();
        this.metricRules_.set(i8, metricRule);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0003\u0004\u0002\u0000\u0002\u0000\u0003\u001b\u0004\u001b", new Object[]{"limits_", QuotaLimit.class, "metricRules_", MetricRule.class});
            case 3:
                return new Quota();
            case 4:
                return new n0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Quota.class) {
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

    public QuotaLimit getLimits(int i8) {
        return (QuotaLimit) this.limits_.get(i8);
    }

    public int getLimitsCount() {
        return this.limits_.size();
    }

    public List<QuotaLimit> getLimitsList() {
        return this.limits_;
    }

    public q0 getLimitsOrBuilder(int i8) {
        return (q0) this.limits_.get(i8);
    }

    public List<? extends q0> getLimitsOrBuilderList() {
        return this.limits_;
    }

    public MetricRule getMetricRules(int i8) {
        return (MetricRule) this.metricRules_.get(i8);
    }

    public int getMetricRulesCount() {
        return this.metricRules_.size();
    }

    public List<MetricRule> getMetricRulesList() {
        return this.metricRules_;
    }

    public Y getMetricRulesOrBuilder(int i8) {
        return (Y) this.metricRules_.get(i8);
    }

    public List<? extends Y> getMetricRulesOrBuilderList() {
        return this.metricRules_;
    }

    public static n0 newBuilder(Quota quota) {
        return (n0) DEFAULT_INSTANCE.createBuilder(quota);
    }

    public static Quota parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Quota) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Quota parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Quota parseFrom(r rVar) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLimits(int i8, QuotaLimit quotaLimit) {
        quotaLimit.getClass();
        ensureLimitsIsMutable();
        this.limits_.add(i8, quotaLimit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMetricRules(int i8, MetricRule metricRule) {
        metricRule.getClass();
        ensureMetricRulesIsMutable();
        this.metricRules_.add(i8, metricRule);
    }

    public static Quota parseFrom(r rVar, O0 o4) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Quota parseFrom(byte[] bArr) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Quota parseFrom(byte[] bArr, O0 o4) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Quota parseFrom(InputStream inputStream) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Quota parseFrom(InputStream inputStream, O0 o4) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Quota parseFrom(AbstractC2961w abstractC2961w) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Quota parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Quota) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
