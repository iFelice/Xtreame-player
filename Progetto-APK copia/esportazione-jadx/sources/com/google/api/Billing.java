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
import p175w4.InterfaceC3218o;

/* JADX INFO: loaded from: classes.dex */
public final class Billing extends AbstractC2909i1 implements R1 {
    public static final int CONSUMER_DESTINATIONS_FIELD_NUMBER = 8;
    private static final Billing DEFAULT_INSTANCE;
    private static volatile InterfaceC2894e2 PARSER;
    private InterfaceC2956u1 consumerDestinations_ = AbstractC2909i1.emptyProtobufList();

    public static final class BillingDestination extends AbstractC2909i1 implements InterfaceC3218o {
        private static final BillingDestination DEFAULT_INSTANCE;
        public static final int METRICS_FIELD_NUMBER = 2;
        public static final int MONITORED_RESOURCE_FIELD_NUMBER = 1;
        private static volatile InterfaceC2894e2 PARSER;
        private String monitoredResource_ = HttpUrl.FRAGMENT_ENCODE_SET;
        private InterfaceC2956u1 metrics_ = AbstractC2909i1.emptyProtobufList();

        static {
            BillingDestination billingDestination = new BillingDestination();
            DEFAULT_INSTANCE = billingDestination;
            AbstractC2909i1.registerDefaultInstance(BillingDestination.class, billingDestination);
        }

        private BillingDestination() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllMetrics(Iterable<String> iterable) {
            ensureMetricsIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.metrics_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMetrics(String str) {
            str.getClass();
            ensureMetricsIsMutable();
            this.metrics_.add(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMetricsBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            ensureMetricsIsMutable();
            this.metrics_.add(rVar.t());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMetrics() {
            this.metrics_ = AbstractC2909i1.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMonitoredResource() {
            this.monitoredResource_ = getDefaultInstance().getMonitoredResource();
        }

        private void ensureMetricsIsMutable() {
            InterfaceC2956u1 interfaceC2956u1 = this.metrics_;
            if (((AbstractC2883c) interfaceC2956u1).f24418G) {
                return;
            }
            this.metrics_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
        }

        public static BillingDestination getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return (a) DEFAULT_INSTANCE.createBuilder();
        }

        public static BillingDestination parseDelimitedFrom(InputStream inputStream) {
            return (BillingDestination) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static BillingDestination parseFrom(ByteBuffer byteBuffer) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMetrics(int i8, String str) {
            str.getClass();
            ensureMetricsIsMutable();
            this.metrics_.set(i8, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMonitoredResource(String str) {
            str.getClass();
            this.monitoredResource_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMonitoredResourceBytes(r rVar) {
            AbstractC2879b.checkByteStringIsUtf8(rVar);
            this.monitoredResource_ = rVar.t();
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002Ț", new Object[]{"monitoredResource_", "metrics_"});
                case 3:
                    return new BillingDestination();
                case 4:
                    return new a(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (BillingDestination.class) {
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

        public String getMetrics(int i8) {
            return (String) this.metrics_.get(i8);
        }

        public r getMetricsBytes(int i8) {
            return r.l((String) this.metrics_.get(i8));
        }

        public int getMetricsCount() {
            return this.metrics_.size();
        }

        public List<String> getMetricsList() {
            return this.metrics_;
        }

        public String getMonitoredResource() {
            return this.monitoredResource_;
        }

        public r getMonitoredResourceBytes() {
            return r.l(this.monitoredResource_);
        }

        public static a newBuilder(BillingDestination billingDestination) {
            return (a) DEFAULT_INSTANCE.createBuilder(billingDestination);
        }

        public static BillingDestination parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (BillingDestination) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static BillingDestination parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static BillingDestination parseFrom(r rVar) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static BillingDestination parseFrom(r rVar, O0 o4) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static BillingDestination parseFrom(byte[] bArr) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static BillingDestination parseFrom(byte[] bArr, O0 o4) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static BillingDestination parseFrom(InputStream inputStream) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static BillingDestination parseFrom(InputStream inputStream, O0 o4) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static BillingDestination parseFrom(AbstractC2961w abstractC2961w) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static BillingDestination parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (BillingDestination) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    static {
        Billing billing = new Billing();
        DEFAULT_INSTANCE = billing;
        AbstractC2909i1.registerDefaultInstance(Billing.class, billing);
    }

    private Billing() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllConsumerDestinations(Iterable<? extends BillingDestination> iterable) {
        ensureConsumerDestinationsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.consumerDestinations_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addConsumerDestinations(BillingDestination billingDestination) {
        billingDestination.getClass();
        ensureConsumerDestinationsIsMutable();
        this.consumerDestinations_.add(billingDestination);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearConsumerDestinations() {
        this.consumerDestinations_ = AbstractC2909i1.emptyProtobufList();
    }

    private void ensureConsumerDestinationsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.consumerDestinations_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.consumerDestinations_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Billing getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static b newBuilder() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public static Billing parseDelimitedFrom(InputStream inputStream) {
        return (Billing) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Billing parseFrom(ByteBuffer byteBuffer) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeConsumerDestinations(int i8) {
        ensureConsumerDestinationsIsMutable();
        this.consumerDestinations_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConsumerDestinations(int i8, BillingDestination billingDestination) {
        billingDestination.getClass();
        ensureConsumerDestinationsIsMutable();
        this.consumerDestinations_.set(i8, billingDestination);
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\b\b\u0001\u0000\u0001\u0000\b\u001b", new Object[]{"consumerDestinations_", BillingDestination.class});
            case 3:
                return new Billing();
            case 4:
                return new b(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Billing.class) {
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

    public BillingDestination getConsumerDestinations(int i8) {
        return (BillingDestination) this.consumerDestinations_.get(i8);
    }

    public int getConsumerDestinationsCount() {
        return this.consumerDestinations_.size();
    }

    public List<BillingDestination> getConsumerDestinationsList() {
        return this.consumerDestinations_;
    }

    public InterfaceC3218o getConsumerDestinationsOrBuilder(int i8) {
        return (InterfaceC3218o) this.consumerDestinations_.get(i8);
    }

    public List<? extends InterfaceC3218o> getConsumerDestinationsOrBuilderList() {
        return this.consumerDestinations_;
    }

    public static b newBuilder(Billing billing) {
        return (b) DEFAULT_INSTANCE.createBuilder(billing);
    }

    public static Billing parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Billing) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Billing parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Billing parseFrom(r rVar) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addConsumerDestinations(int i8, BillingDestination billingDestination) {
        billingDestination.getClass();
        ensureConsumerDestinationsIsMutable();
        this.consumerDestinations_.add(i8, billingDestination);
    }

    public static Billing parseFrom(r rVar, O0 o4) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Billing parseFrom(byte[] bArr) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Billing parseFrom(byte[] bArr, O0 o4) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Billing parseFrom(InputStream inputStream) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Billing parseFrom(InputStream inputStream, O0 o4) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Billing parseFrom(AbstractC2961w abstractC2961w) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Billing parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Billing) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
