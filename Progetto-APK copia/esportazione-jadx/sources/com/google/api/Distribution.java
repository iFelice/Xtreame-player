package com.google.api;

import com.google.protobuf.AbstractC2879b;
import com.google.protobuf.AbstractC2883c;
import com.google.protobuf.AbstractC2909i1;
import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.Any;
import com.google.protobuf.C2885c1;
import com.google.protobuf.C2957u2;
import com.google.protobuf.D0;
import com.google.protobuf.EnumC2905h1;
import com.google.protobuf.F1;
import com.google.protobuf.InterfaceC2894e2;
import com.google.protobuf.InterfaceC2895f;
import com.google.protobuf.InterfaceC2929n1;
import com.google.protobuf.InterfaceC2952t1;
import com.google.protobuf.InterfaceC2956u1;
import com.google.protobuf.O0;
import com.google.protobuf.R1;
import com.google.protobuf.Timestamp;
import com.google.protobuf.r;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p175w4.InterfaceC3225w;

/* JADX INFO: loaded from: classes.dex */
public final class Distribution extends AbstractC2909i1 implements R1 {
    public static final int BUCKET_COUNTS_FIELD_NUMBER = 7;
    public static final int BUCKET_OPTIONS_FIELD_NUMBER = 6;
    public static final int COUNT_FIELD_NUMBER = 1;
    private static final Distribution DEFAULT_INSTANCE;
    public static final int EXEMPLARS_FIELD_NUMBER = 10;
    public static final int MEAN_FIELD_NUMBER = 2;
    private static volatile InterfaceC2894e2 PARSER = null;
    public static final int RANGE_FIELD_NUMBER = 4;
    public static final int SUM_OF_SQUARED_DEVIATION_FIELD_NUMBER = 3;
    private int bitField0_;
    private BucketOptions bucketOptions_;
    private long count_;
    private double mean_;
    private Range range_;
    private double sumOfSquaredDeviation_;
    private int bucketCountsMemoizedSerializedSize = -1;
    private InterfaceC2952t1 bucketCounts_ = AbstractC2909i1.emptyLongList();
    private InterfaceC2956u1 exemplars_ = AbstractC2909i1.emptyProtobufList();

    public static final class BucketOptions extends AbstractC2909i1 implements R1 {
        private static final BucketOptions DEFAULT_INSTANCE;
        public static final int EXPLICIT_BUCKETS_FIELD_NUMBER = 3;
        public static final int EXPONENTIAL_BUCKETS_FIELD_NUMBER = 2;
        public static final int LINEAR_BUCKETS_FIELD_NUMBER = 1;
        private static volatile InterfaceC2894e2 PARSER;
        private int optionsCase_ = 0;
        private Object options_;

        public static final class Explicit extends AbstractC2909i1 implements R1 {
            public static final int BOUNDS_FIELD_NUMBER = 1;
            private static final Explicit DEFAULT_INSTANCE;
            private static volatile InterfaceC2894e2 PARSER;
            private int boundsMemoizedSerializedSize = -1;
            private InterfaceC2929n1 bounds_ = AbstractC2909i1.emptyDoubleList();

            static {
                Explicit explicit = new Explicit();
                DEFAULT_INSTANCE = explicit;
                AbstractC2909i1.registerDefaultInstance(Explicit.class, explicit);
            }

            private Explicit() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllBounds(Iterable<? extends Double> iterable) {
                ensureBoundsIsMutable();
                AbstractC2879b.addAll((Iterable) iterable, (List) this.bounds_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addBounds(double d6) {
                ensureBoundsIsMutable();
                ((D0) this.bounds_).i(d6);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBounds() {
                this.bounds_ = AbstractC2909i1.emptyDoubleList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private void ensureBoundsIsMutable() {
                InterfaceC2929n1 interfaceC2929n1 = this.bounds_;
                if (((AbstractC2883c) interfaceC2929n1).f24418G) {
                    return;
                }
                this.bounds_ = AbstractC2909i1.mutableCopy(interfaceC2929n1);
            }

            public static Explicit getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static d newBuilder() {
                return (d) DEFAULT_INSTANCE.createBuilder();
            }

            public static Explicit parseDelimitedFrom(InputStream inputStream) {
                return (Explicit) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Explicit parseFrom(ByteBuffer byteBuffer) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static InterfaceC2894e2 parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBounds(int i8, double d6) {
                ensureBoundsIsMutable();
                D0 d8 = (D0) this.bounds_;
                d8.b();
                d8.l(i8);
                double[] dArr = d8.f24243H;
                double d9 = dArr[i8];
                dArr[i8] = d6;
            }

            @Override // com.google.protobuf.AbstractC2909i1
            public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
                switch (enumC2905h1.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001#", new Object[]{"bounds_"});
                    case 3:
                        return new Explicit();
                    case 4:
                        return new d(DEFAULT_INSTANCE);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        InterfaceC2894e2 c2885c1 = PARSER;
                        if (c2885c1 == null) {
                            synchronized (Explicit.class) {
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

            public double getBounds(int i8) {
                D0 d6 = (D0) this.bounds_;
                d6.l(i8);
                return d6.f24243H[i8];
            }

            public int getBoundsCount() {
                return ((D0) this.bounds_).size();
            }

            public List<Double> getBoundsList() {
                return this.bounds_;
            }

            public static d newBuilder(Explicit explicit) {
                return (d) DEFAULT_INSTANCE.createBuilder(explicit);
            }

            public static Explicit parseDelimitedFrom(InputStream inputStream, O0 o4) {
                return (Explicit) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
            }

            public static Explicit parseFrom(ByteBuffer byteBuffer, O0 o4) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
            }

            public static Explicit parseFrom(r rVar) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
            }

            public static Explicit parseFrom(r rVar, O0 o4) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
            }

            public static Explicit parseFrom(byte[] bArr) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Explicit parseFrom(byte[] bArr, O0 o4) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
            }

            public static Explicit parseFrom(InputStream inputStream) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Explicit parseFrom(InputStream inputStream, O0 o4) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
            }

            public static Explicit parseFrom(AbstractC2961w abstractC2961w) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
            }

            public static Explicit parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
                return (Explicit) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
            }
        }

        public static final class Exponential extends AbstractC2909i1 implements R1 {
            private static final Exponential DEFAULT_INSTANCE;
            public static final int GROWTH_FACTOR_FIELD_NUMBER = 2;
            public static final int NUM_FINITE_BUCKETS_FIELD_NUMBER = 1;
            private static volatile InterfaceC2894e2 PARSER = null;
            public static final int SCALE_FIELD_NUMBER = 3;
            private double growthFactor_;
            private int numFiniteBuckets_;
            private double scale_;

            static {
                Exponential exponential = new Exponential();
                DEFAULT_INSTANCE = exponential;
                AbstractC2909i1.registerDefaultInstance(Exponential.class, exponential);
            }

            private Exponential() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGrowthFactor() {
                this.growthFactor_ = 0.0d;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearNumFiniteBuckets() {
                this.numFiniteBuckets_ = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearScale() {
                this.scale_ = 0.0d;
            }

            public static Exponential getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static e newBuilder() {
                return (e) DEFAULT_INSTANCE.createBuilder();
            }

            public static Exponential parseDelimitedFrom(InputStream inputStream) {
                return (Exponential) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Exponential parseFrom(ByteBuffer byteBuffer) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static InterfaceC2894e2 parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGrowthFactor(double d6) {
                this.growthFactor_ = d6;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setNumFiniteBuckets(int i8) {
                this.numFiniteBuckets_ = i8;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setScale(double d6) {
                this.scale_ = d6;
            }

            @Override // com.google.protobuf.AbstractC2909i1
            public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
                switch (enumC2905h1.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0000\u0003\u0000", new Object[]{"numFiniteBuckets_", "growthFactor_", "scale_"});
                    case 3:
                        return new Exponential();
                    case 4:
                        return new e(DEFAULT_INSTANCE);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        InterfaceC2894e2 c2885c1 = PARSER;
                        if (c2885c1 == null) {
                            synchronized (Exponential.class) {
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

            public double getGrowthFactor() {
                return this.growthFactor_;
            }

            public int getNumFiniteBuckets() {
                return this.numFiniteBuckets_;
            }

            public double getScale() {
                return this.scale_;
            }

            public static e newBuilder(Exponential exponential) {
                return (e) DEFAULT_INSTANCE.createBuilder(exponential);
            }

            public static Exponential parseDelimitedFrom(InputStream inputStream, O0 o4) {
                return (Exponential) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
            }

            public static Exponential parseFrom(ByteBuffer byteBuffer, O0 o4) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
            }

            public static Exponential parseFrom(r rVar) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
            }

            public static Exponential parseFrom(r rVar, O0 o4) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
            }

            public static Exponential parseFrom(byte[] bArr) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Exponential parseFrom(byte[] bArr, O0 o4) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
            }

            public static Exponential parseFrom(InputStream inputStream) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Exponential parseFrom(InputStream inputStream, O0 o4) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
            }

            public static Exponential parseFrom(AbstractC2961w abstractC2961w) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
            }

            public static Exponential parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
                return (Exponential) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
            }
        }

        public static final class Linear extends AbstractC2909i1 implements R1 {
            private static final Linear DEFAULT_INSTANCE;
            public static final int NUM_FINITE_BUCKETS_FIELD_NUMBER = 1;
            public static final int OFFSET_FIELD_NUMBER = 3;
            private static volatile InterfaceC2894e2 PARSER = null;
            public static final int WIDTH_FIELD_NUMBER = 2;
            private int numFiniteBuckets_;
            private double offset_;
            private double width_;

            static {
                Linear linear = new Linear();
                DEFAULT_INSTANCE = linear;
                AbstractC2909i1.registerDefaultInstance(Linear.class, linear);
            }

            private Linear() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearNumFiniteBuckets() {
                this.numFiniteBuckets_ = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearOffset() {
                this.offset_ = 0.0d;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearWidth() {
                this.width_ = 0.0d;
            }

            public static Linear getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static f newBuilder() {
                return (f) DEFAULT_INSTANCE.createBuilder();
            }

            public static Linear parseDelimitedFrom(InputStream inputStream) {
                return (Linear) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Linear parseFrom(ByteBuffer byteBuffer) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static InterfaceC2894e2 parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setNumFiniteBuckets(int i8) {
                this.numFiniteBuckets_ = i8;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOffset(double d6) {
                this.offset_ = d6;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setWidth(double d6) {
                this.width_ = d6;
            }

            @Override // com.google.protobuf.AbstractC2909i1
            public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
                switch (enumC2905h1.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0000\u0003\u0000", new Object[]{"numFiniteBuckets_", "width_", "offset_"});
                    case 3:
                        return new Linear();
                    case 4:
                        return new f(DEFAULT_INSTANCE);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        InterfaceC2894e2 c2885c1 = PARSER;
                        if (c2885c1 == null) {
                            synchronized (Linear.class) {
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

            public int getNumFiniteBuckets() {
                return this.numFiniteBuckets_;
            }

            public double getOffset() {
                return this.offset_;
            }

            public double getWidth() {
                return this.width_;
            }

            public static f newBuilder(Linear linear) {
                return (f) DEFAULT_INSTANCE.createBuilder(linear);
            }

            public static Linear parseDelimitedFrom(InputStream inputStream, O0 o4) {
                return (Linear) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
            }

            public static Linear parseFrom(ByteBuffer byteBuffer, O0 o4) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
            }

            public static Linear parseFrom(r rVar) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
            }

            public static Linear parseFrom(r rVar, O0 o4) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
            }

            public static Linear parseFrom(byte[] bArr) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Linear parseFrom(byte[] bArr, O0 o4) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
            }

            public static Linear parseFrom(InputStream inputStream) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Linear parseFrom(InputStream inputStream, O0 o4) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
            }

            public static Linear parseFrom(AbstractC2961w abstractC2961w) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
            }

            public static Linear parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
                return (Linear) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
            }
        }

        static {
            BucketOptions bucketOptions = new BucketOptions();
            DEFAULT_INSTANCE = bucketOptions;
            AbstractC2909i1.registerDefaultInstance(BucketOptions.class, bucketOptions);
        }

        private BucketOptions() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExplicitBuckets() {
            if (this.optionsCase_ == 3) {
                this.optionsCase_ = 0;
                this.options_ = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExponentialBuckets() {
            if (this.optionsCase_ == 2) {
                this.optionsCase_ = 0;
                this.options_ = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLinearBuckets() {
            if (this.optionsCase_ == 1) {
                this.optionsCase_ = 0;
                this.options_ = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOptions() {
            this.optionsCase_ = 0;
            this.options_ = null;
        }

        public static BucketOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeExplicitBuckets(Explicit explicit) {
            explicit.getClass();
            if (this.optionsCase_ != 3 || this.options_ == Explicit.getDefaultInstance()) {
                this.options_ = explicit;
            } else {
                d dVarNewBuilder = Explicit.newBuilder((Explicit) this.options_);
                dVarNewBuilder.g(explicit);
                this.options_ = dVarNewBuilder.k();
            }
            this.optionsCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeExponentialBuckets(Exponential exponential) {
            exponential.getClass();
            if (this.optionsCase_ != 2 || this.options_ == Exponential.getDefaultInstance()) {
                this.options_ = exponential;
            } else {
                e eVarNewBuilder = Exponential.newBuilder((Exponential) this.options_);
                eVarNewBuilder.g(exponential);
                this.options_ = eVarNewBuilder.k();
            }
            this.optionsCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeLinearBuckets(Linear linear) {
            linear.getClass();
            if (this.optionsCase_ != 1 || this.options_ == Linear.getDefaultInstance()) {
                this.options_ = linear;
            } else {
                f fVarNewBuilder = Linear.newBuilder((Linear) this.options_);
                fVarNewBuilder.g(linear);
                this.options_ = fVarNewBuilder.k();
            }
            this.optionsCase_ = 1;
        }

        public static c newBuilder() {
            return (c) DEFAULT_INSTANCE.createBuilder();
        }

        public static BucketOptions parseDelimitedFrom(InputStream inputStream) {
            return (BucketOptions) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static BucketOptions parseFrom(ByteBuffer byteBuffer) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExplicitBuckets(Explicit explicit) {
            explicit.getClass();
            this.options_ = explicit;
            this.optionsCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExponentialBuckets(Exponential exponential) {
            exponential.getClass();
            this.options_ = exponential;
            this.optionsCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLinearBuckets(Linear linear) {
            linear.getClass();
            this.options_ = linear;
            this.optionsCase_ = 1;
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"options_", "optionsCase_", Linear.class, Exponential.class, Explicit.class});
                case 3:
                    return new BucketOptions();
                case 4:
                    return new c(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (BucketOptions.class) {
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

        public Explicit getExplicitBuckets() {
            return this.optionsCase_ == 3 ? (Explicit) this.options_ : Explicit.getDefaultInstance();
        }

        public Exponential getExponentialBuckets() {
            return this.optionsCase_ == 2 ? (Exponential) this.options_ : Exponential.getDefaultInstance();
        }

        public Linear getLinearBuckets() {
            return this.optionsCase_ == 1 ? (Linear) this.options_ : Linear.getDefaultInstance();
        }

        public g getOptionsCase() {
            int i8 = this.optionsCase_;
            if (i8 == 0) {
                return g.f24208J;
            }
            if (i8 == 1) {
                return g.f24205G;
            }
            if (i8 == 2) {
                return g.f24206H;
            }
            if (i8 != 3) {
                return null;
            }
            return g.f24207I;
        }

        public boolean hasExplicitBuckets() {
            return this.optionsCase_ == 3;
        }

        public boolean hasExponentialBuckets() {
            return this.optionsCase_ == 2;
        }

        public boolean hasLinearBuckets() {
            return this.optionsCase_ == 1;
        }

        public static c newBuilder(BucketOptions bucketOptions) {
            return (c) DEFAULT_INSTANCE.createBuilder(bucketOptions);
        }

        public static BucketOptions parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (BucketOptions) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static BucketOptions parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static BucketOptions parseFrom(r rVar) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static BucketOptions parseFrom(r rVar, O0 o4) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static BucketOptions parseFrom(byte[] bArr) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static BucketOptions parseFrom(byte[] bArr, O0 o4) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static BucketOptions parseFrom(InputStream inputStream) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static BucketOptions parseFrom(InputStream inputStream, O0 o4) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static BucketOptions parseFrom(AbstractC2961w abstractC2961w) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static BucketOptions parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (BucketOptions) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Exemplar extends AbstractC2909i1 implements InterfaceC3225w {
        public static final int ATTACHMENTS_FIELD_NUMBER = 3;
        private static final Exemplar DEFAULT_INSTANCE;
        private static volatile InterfaceC2894e2 PARSER = null;
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 1;
        private InterfaceC2956u1 attachments_ = AbstractC2909i1.emptyProtobufList();
        private int bitField0_;
        private Timestamp timestamp_;
        private double value_;

        static {
            Exemplar exemplar = new Exemplar();
            DEFAULT_INSTANCE = exemplar;
            AbstractC2909i1.registerDefaultInstance(Exemplar.class, exemplar);
        }

        private Exemplar() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAttachments(Iterable<? extends Any> iterable) {
            ensureAttachmentsIsMutable();
            AbstractC2879b.addAll((Iterable) iterable, (List) this.attachments_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAttachments(Any any) {
            any.getClass();
            ensureAttachmentsIsMutable();
            this.attachments_.add(any);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAttachments() {
            this.attachments_ = AbstractC2909i1.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestamp() {
            this.timestamp_ = null;
            this.bitField0_ &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0.0d;
        }

        private void ensureAttachmentsIsMutable() {
            InterfaceC2956u1 interfaceC2956u1 = this.attachments_;
            if (((AbstractC2883c) interfaceC2956u1).f24418G) {
                return;
            }
            this.attachments_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
        }

        public static Exemplar getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTimestamp(Timestamp timestamp) {
            timestamp.getClass();
            Timestamp timestamp2 = this.timestamp_;
            if (timestamp2 == null || timestamp2 == Timestamp.getDefaultInstance()) {
                this.timestamp_ = timestamp;
            } else {
                C2957u2 c2957u2NewBuilder = Timestamp.newBuilder(this.timestamp_);
                c2957u2NewBuilder.g(timestamp);
                this.timestamp_ = (Timestamp) c2957u2NewBuilder.k();
            }
            this.bitField0_ |= 1;
        }

        public static i newBuilder() {
            return (i) DEFAULT_INSTANCE.createBuilder();
        }

        public static Exemplar parseDelimitedFrom(InputStream inputStream) {
            return (Exemplar) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Exemplar parseFrom(ByteBuffer byteBuffer) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAttachments(int i8) {
            ensureAttachmentsIsMutable();
            this.attachments_.remove(i8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAttachments(int i8, Any any) {
            any.getClass();
            ensureAttachmentsIsMutable();
            this.attachments_.set(i8, any);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestamp(Timestamp timestamp) {
            timestamp.getClass();
            this.timestamp_ = timestamp;
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(double d6) {
            this.value_ = d6;
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0000\u0002ဉ\u0000\u0003\u001b", new Object[]{"bitField0_", "value_", "timestamp_", "attachments_", Any.class});
                case 3:
                    return new Exemplar();
                case 4:
                    return new i(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Exemplar.class) {
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

        public Any getAttachments(int i8) {
            return (Any) this.attachments_.get(i8);
        }

        public int getAttachmentsCount() {
            return this.attachments_.size();
        }

        public List<Any> getAttachmentsList() {
            return this.attachments_;
        }

        public InterfaceC2895f getAttachmentsOrBuilder(int i8) {
            return (InterfaceC2895f) this.attachments_.get(i8);
        }

        public List<? extends InterfaceC2895f> getAttachmentsOrBuilderList() {
            return this.attachments_;
        }

        public Timestamp getTimestamp() {
            Timestamp timestamp = this.timestamp_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public double getValue() {
            return this.value_;
        }

        public boolean hasTimestamp() {
            return (this.bitField0_ & 1) != 0;
        }

        public static i newBuilder(Exemplar exemplar) {
            return (i) DEFAULT_INSTANCE.createBuilder(exemplar);
        }

        public static Exemplar parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Exemplar) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Exemplar parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Exemplar parseFrom(r rVar) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAttachments(int i8, Any any) {
            any.getClass();
            ensureAttachmentsIsMutable();
            this.attachments_.add(i8, any);
        }

        public static Exemplar parseFrom(r rVar, O0 o4) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Exemplar parseFrom(byte[] bArr) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Exemplar parseFrom(byte[] bArr, O0 o4) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Exemplar parseFrom(InputStream inputStream) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Exemplar parseFrom(InputStream inputStream, O0 o4) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Exemplar parseFrom(AbstractC2961w abstractC2961w) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Exemplar parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Exemplar) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    public static final class Range extends AbstractC2909i1 implements R1 {
        private static final Range DEFAULT_INSTANCE;
        public static final int MAX_FIELD_NUMBER = 2;
        public static final int MIN_FIELD_NUMBER = 1;
        private static volatile InterfaceC2894e2 PARSER;
        private double max_;
        private double min_;

        static {
            Range range = new Range();
            DEFAULT_INSTANCE = range;
            AbstractC2909i1.registerDefaultInstance(Range.class, range);
        }

        private Range() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMax() {
            this.max_ = 0.0d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMin() {
            this.min_ = 0.0d;
        }

        public static Range getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static j newBuilder() {
            return (j) DEFAULT_INSTANCE.createBuilder();
        }

        public static Range parseDelimitedFrom(InputStream inputStream) {
            return (Range) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Range parseFrom(ByteBuffer byteBuffer) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InterfaceC2894e2 parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMax(double d6) {
            this.max_ = d6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMin(double d6) {
            this.min_ = d6;
        }

        @Override // com.google.protobuf.AbstractC2909i1
        public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
            switch (enumC2905h1.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000", new Object[]{"min_", "max_"});
                case 3:
                    return new Range();
                case 4:
                    return new j(DEFAULT_INSTANCE);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    InterfaceC2894e2 c2885c1 = PARSER;
                    if (c2885c1 == null) {
                        synchronized (Range.class) {
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

        public double getMax() {
            return this.max_;
        }

        public double getMin() {
            return this.min_;
        }

        public static j newBuilder(Range range) {
            return (j) DEFAULT_INSTANCE.createBuilder(range);
        }

        public static Range parseDelimitedFrom(InputStream inputStream, O0 o4) {
            return (Range) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Range parseFrom(ByteBuffer byteBuffer, O0 o4) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
        }

        public static Range parseFrom(r rVar) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
        }

        public static Range parseFrom(r rVar, O0 o4) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
        }

        public static Range parseFrom(byte[] bArr) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Range parseFrom(byte[] bArr, O0 o4) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
        }

        public static Range parseFrom(InputStream inputStream) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Range parseFrom(InputStream inputStream, O0 o4) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
        }

        public static Range parseFrom(AbstractC2961w abstractC2961w) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
        }

        public static Range parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
            return (Range) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
        }
    }

    static {
        Distribution distribution = new Distribution();
        DEFAULT_INSTANCE = distribution;
        AbstractC2909i1.registerDefaultInstance(Distribution.class, distribution);
    }

    private Distribution() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllBucketCounts(Iterable<? extends Long> iterable) {
        ensureBucketCountsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.bucketCounts_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllExemplars(Iterable<? extends Exemplar> iterable) {
        ensureExemplarsIsMutable();
        AbstractC2879b.addAll((Iterable) iterable, (List) this.exemplars_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBucketCounts(long j8) {
        ensureBucketCountsIsMutable();
        ((F1) this.bucketCounts_).i(j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExemplars(Exemplar exemplar) {
        exemplar.getClass();
        ensureExemplarsIsMutable();
        this.exemplars_.add(exemplar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBucketCounts() {
        this.bucketCounts_ = AbstractC2909i1.emptyLongList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearBucketOptions() {
        this.bucketOptions_ = null;
        this.bitField0_ &= -3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCount() {
        this.count_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearExemplars() {
        this.exemplars_ = AbstractC2909i1.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMean() {
        this.mean_ = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearRange() {
        this.range_ = null;
        this.bitField0_ &= -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSumOfSquaredDeviation() {
        this.sumOfSquaredDeviation_ = 0.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void ensureBucketCountsIsMutable() {
        InterfaceC2952t1 interfaceC2952t1 = this.bucketCounts_;
        if (((AbstractC2883c) interfaceC2952t1).f24418G) {
            return;
        }
        this.bucketCounts_ = AbstractC2909i1.mutableCopy(interfaceC2952t1);
    }

    private void ensureExemplarsIsMutable() {
        InterfaceC2956u1 interfaceC2956u1 = this.exemplars_;
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return;
        }
        this.exemplars_ = AbstractC2909i1.mutableCopy(interfaceC2956u1);
    }

    public static Distribution getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeBucketOptions(BucketOptions bucketOptions) {
        bucketOptions.getClass();
        BucketOptions bucketOptions2 = this.bucketOptions_;
        if (bucketOptions2 == null || bucketOptions2 == BucketOptions.getDefaultInstance()) {
            this.bucketOptions_ = bucketOptions;
        } else {
            c cVarNewBuilder = BucketOptions.newBuilder(this.bucketOptions_);
            cVarNewBuilder.g(bucketOptions);
            this.bucketOptions_ = (BucketOptions) cVarNewBuilder.k();
        }
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeRange(Range range) {
        range.getClass();
        Range range2 = this.range_;
        if (range2 == null || range2 == Range.getDefaultInstance()) {
            this.range_ = range;
        } else {
            j jVarNewBuilder = Range.newBuilder(this.range_);
            jVarNewBuilder.g(range);
            this.range_ = (Range) jVarNewBuilder.k();
        }
        this.bitField0_ |= 1;
    }

    public static h newBuilder() {
        return (h) DEFAULT_INSTANCE.createBuilder();
    }

    public static Distribution parseDelimitedFrom(InputStream inputStream) {
        return (Distribution) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Distribution parseFrom(ByteBuffer byteBuffer) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InterfaceC2894e2 parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeExemplars(int i8) {
        ensureExemplarsIsMutable();
        this.exemplars_.remove(i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBucketCounts(int i8, long j8) {
        ensureBucketCountsIsMutable();
        F1 f8 = (F1) this.bucketCounts_;
        f8.b();
        f8.l(i8);
        long[] jArr = f8.f24249H;
        long j9 = jArr[i8];
        jArr[i8] = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBucketOptions(BucketOptions bucketOptions) {
        bucketOptions.getClass();
        this.bucketOptions_ = bucketOptions;
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCount(long j8) {
        this.count_ = j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExemplars(int i8, Exemplar exemplar) {
        exemplar.getClass();
        ensureExemplarsIsMutable();
        this.exemplars_.set(i8, exemplar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMean(double d6) {
        this.mean_ = d6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRange(Range range) {
        range.getClass();
        this.range_ = range;
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSumOfSquaredDeviation(double d6) {
        this.sumOfSquaredDeviation_ = d6;
    }

    @Override // com.google.protobuf.AbstractC2909i1
    public final Object dynamicMethod(EnumC2905h1 enumC2905h1, Object obj, Object obj2) {
        switch (enumC2905h1.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return AbstractC2909i1.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0001\u0001\n\u0007\u0000\u0002\u0000\u0001\u0002\u0002\u0000\u0003\u0000\u0004ဉ\u0000\u0006ဉ\u0001\u0007%\n\u001b", new Object[]{"bitField0_", "count_", "mean_", "sumOfSquaredDeviation_", "range_", "bucketOptions_", "bucketCounts_", "exemplars_", Exemplar.class});
            case 3:
                return new Distribution();
            case 4:
                return new h(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC2894e2 c2885c1 = PARSER;
                if (c2885c1 == null) {
                    synchronized (Distribution.class) {
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

    public long getBucketCounts(int i8) {
        F1 f8 = (F1) this.bucketCounts_;
        f8.l(i8);
        return f8.f24249H[i8];
    }

    public int getBucketCountsCount() {
        return ((F1) this.bucketCounts_).size();
    }

    public List<Long> getBucketCountsList() {
        return this.bucketCounts_;
    }

    public BucketOptions getBucketOptions() {
        BucketOptions bucketOptions = this.bucketOptions_;
        return bucketOptions == null ? BucketOptions.getDefaultInstance() : bucketOptions;
    }

    public long getCount() {
        return this.count_;
    }

    public Exemplar getExemplars(int i8) {
        return (Exemplar) this.exemplars_.get(i8);
    }

    public int getExemplarsCount() {
        return this.exemplars_.size();
    }

    public List<Exemplar> getExemplarsList() {
        return this.exemplars_;
    }

    public InterfaceC3225w getExemplarsOrBuilder(int i8) {
        return (InterfaceC3225w) this.exemplars_.get(i8);
    }

    public List<? extends InterfaceC3225w> getExemplarsOrBuilderList() {
        return this.exemplars_;
    }

    public double getMean() {
        return this.mean_;
    }

    public Range getRange() {
        Range range = this.range_;
        return range == null ? Range.getDefaultInstance() : range;
    }

    public double getSumOfSquaredDeviation() {
        return this.sumOfSquaredDeviation_;
    }

    public boolean hasBucketOptions() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean hasRange() {
        return (this.bitField0_ & 1) != 0;
    }

    public static h newBuilder(Distribution distribution) {
        return (h) DEFAULT_INSTANCE.createBuilder(distribution);
    }

    public static Distribution parseDelimitedFrom(InputStream inputStream, O0 o4) {
        return (Distribution) AbstractC2909i1.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Distribution parseFrom(ByteBuffer byteBuffer, O0 o4) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, byteBuffer, o4);
    }

    public static Distribution parseFrom(r rVar) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExemplars(int i8, Exemplar exemplar) {
        exemplar.getClass();
        ensureExemplarsIsMutable();
        this.exemplars_.add(i8, exemplar);
    }

    public static Distribution parseFrom(r rVar, O0 o4) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, rVar, o4);
    }

    public static Distribution parseFrom(byte[] bArr) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Distribution parseFrom(byte[] bArr, O0 o4) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, bArr, o4);
    }

    public static Distribution parseFrom(InputStream inputStream) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Distribution parseFrom(InputStream inputStream, O0 o4) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, inputStream, o4);
    }

    public static Distribution parseFrom(AbstractC2961w abstractC2961w) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w);
    }

    public static Distribution parseFrom(AbstractC2961w abstractC2961w, O0 o4) {
        return (Distribution) AbstractC2909i1.parseFrom(DEFAULT_INSTANCE, abstractC2961w, o4);
    }
}
