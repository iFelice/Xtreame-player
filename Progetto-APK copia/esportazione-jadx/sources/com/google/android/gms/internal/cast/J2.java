package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class J2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final J2 f22476c = new J2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f22478b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2520y2 f22477a = new C2520y2();

    public final M2 a(Class cls) {
        F2 f8;
        Class cls2;
        Charset charset = AbstractC2481o2.f22763a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f22478b;
        M2 m2G = (M2) concurrentHashMap.get(cls);
        if (m2G == null) {
            C2520y2 c2520y2 = this.f22477a;
            c2520y2.getClass();
            Class cls3 = N2.f22505a;
            if (!AbstractC2457i2.class.isAssignableFrom(cls) && (cls2 = N2.f22505a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            B2 b2Zzb = c2520y2.f22854a.zzb(cls);
            L2 l4 = (L2) b2Zzb;
            if ((l4.f22490d & 2) == 2) {
                boolean zIsAssignableFrom = AbstractC2457i2.class.isAssignableFrom(cls);
                U1 u7 = l4.f22487a;
                if (zIsAssignableFrom) {
                    f8 = new F2(N2.f22507c, AbstractC2441e2.f22730a, u7);
                } else {
                    Q2 q7 = N2.f22506b;
                    C2437d2 c2437d2 = AbstractC2441e2.f22731b;
                    if (c2437d2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    f8 = new F2(q7, c2437d2, u7);
                }
                m2G = f8;
            } else if (AbstractC2457i2.class.isAssignableFrom(cls)) {
                if (l4.b() - 1 != 1) {
                    int i8 = H2.f22470a;
                    C2500t2 c2500t2 = AbstractC2504u2.f22802b;
                    Q2 q8 = N2.f22507c;
                    C2437d2 c2437d3 = AbstractC2441e2.f22730a;
                    int i9 = A2.f22416a;
                    m2G = E2.g(b2Zzb, c2500t2, q8, c2437d3);
                } else {
                    int i10 = H2.f22470a;
                    C2500t2 c2500t3 = AbstractC2504u2.f22802b;
                    Q2 q9 = N2.f22507c;
                    int i11 = A2.f22416a;
                    m2G = E2.g(b2Zzb, c2500t3, q9, null);
                }
            } else if (l4.b() - 1 != 1) {
                int i12 = H2.f22470a;
                C2496s2 c2496s2 = AbstractC2504u2.f22801a;
                Q2 q10 = N2.f22506b;
                C2437d2 c2437d4 = AbstractC2441e2.f22731b;
                if (c2437d4 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                int i13 = A2.f22416a;
                m2G = E2.g(b2Zzb, c2496s2, q10, c2437d4);
            } else {
                int i14 = H2.f22470a;
                C2496s2 c2496s3 = AbstractC2504u2.f22801a;
                Q2 q11 = N2.f22506b;
                int i15 = A2.f22416a;
                m2G = E2.g(b2Zzb, c2496s3, q11, null);
            }
            M2 m7 = (M2) concurrentHashMap.putIfAbsent(cls, m2G);
            if (m7 != null) {
                return m7;
            }
        }
        return m2G;
    }
}
