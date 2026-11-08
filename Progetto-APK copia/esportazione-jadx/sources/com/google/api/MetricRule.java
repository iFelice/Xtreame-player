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
import p175w4.W;
import p175w4.X;
import p175w4.Y;

/* JADX INFO: loaded from: classes.dex */
public final class MetricRule extends AbstractC2909i1 implements Y {
    private static final MetricRule DEFAULT_INSTANCE;
    public static final int METRIC_COSTS_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private K1 metricCosts_ = K1.f24267H;
    private String selector_ = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        MetricRule metricRule = new MetricRule();
        DEFAULT_INSTANCE = metricRule;
        AbstractC2909i1.registerDefaultInstance(MetricRule.class, metricRule);
    }

    private MetricRule() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelector() {
        this.selector_ = getDefaultInstance().getSelector();
    }

    public static MetricRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Long> getMutableMetricCostsMap() {
        return internalGetMutableMetricCosts();
    }

    private K1 internalGetMetricCosts() {
        return this.metricCosts_;
    }

    private K1 internalGetMutableMetricCosts() {
        K1 k8 = this.metricCosts_;
        if (!k8.f24268G) {
            this.metricCosts_ = k8.c();
        }
        return this.metricCosts_;
    }

    public static W newBuilder() {
        return (W) DEFAULT_INSTANCE.createBuilder();
    }

    public static MetricRule parseDelimitedFrom(InputStream inputStream) {
        return (MetricRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MetricRule parseFrom(ByteBuffer byteBuffer) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelector(String str) {
        str.getClass();
        this.selector_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelectorBytes(r rVar) {
        AbstractC2879b.checkByteStringIsUtf8(rVar);
        this.selector_ = rVar.t();
    }

    public boolean containsMetricCosts(String str) {
        str.getClass();
        return internalGetMetricCosts().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0001Ȉ\u00022", new Object[]{"selector_", "metricCosts_", X.f31054a});
            case 3:
                return new MetricRule();
            case 4:
                return new W(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (MetricRule.class) {
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

    @Deprecated
    public Map<String, Long> getMetricCosts() {
        return getMetricCostsMap();
    }

    public int getMetricCostsCount() {
        return internalGetMetricCosts().size();
    }

    public Map<String, Long> getMetricCostsMap() {
        return Collections.unmodifiableMap(internalGetMetricCosts());
    }

    public long getMetricCostsOrDefault(String str, long j8) {
        str.getClass();
        K1 k1InternalGetMetricCosts = internalGetMetricCosts();
        return k1InternalGetMetricCosts.containsKey(str) ? ((Long) k1InternalGetMetricCosts.get(str)).longValue() : j8;
    }

    public long getMetricCostsOrThrow(String str) {
        str.getClass();
        K1 k1InternalGetMetricCosts = internalGetMetricCosts();
        if (k1InternalGetMetricCosts.containsKey(str)) {
            return ((Long) k1InternalGetMetricCosts.get(str)).longValue();
        }
        throw new IllegalArgumentException();
    }

    public String getSelector() {
        return this.selector_;
    }

    public r getSelectorBytes() {
        return r.l(this.selector_);
    }

    public static W newBuilder(MetricRule metricRule) {
        return (W) DEFAULT_INSTANCE.createBuilder(metricRule);
    }

    public static MetricRule parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (MetricRule) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MetricRule parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static MetricRule parseFrom(r rVar) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    public static MetricRule parseFrom(r rVar, O0 o4) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static MetricRule parseFrom(byte[] bArr) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MetricRule parseFrom(byte[] bArr, O0 o4) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static MetricRule parseFrom(InputStream inputStream) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MetricRule parseFrom(InputStream inputStream, O0 o4) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static MetricRule parseFrom(AbstractC2961w abstractC2961w) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static MetricRule parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (MetricRule) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
