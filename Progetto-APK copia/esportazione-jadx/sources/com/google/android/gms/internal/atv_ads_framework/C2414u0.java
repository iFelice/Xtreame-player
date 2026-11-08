package com.google.android.gms.internal.atv_ads_framework;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2414u0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2414u0 f22373c = new C2414u0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f22375b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2393j0 f22374a = new C2393j0();

    public final InterfaceC2418w0 a(Class cls) {
        C2407q0 c2407q0;
        Class cls2;
        Charset charset = Z.f22301a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f22375b;
        InterfaceC2418w0 interfaceC2418w0I = (InterfaceC2418w0) concurrentHashMap.get(cls);
        if (interfaceC2418w0I == null) {
            C2393j0 c2393j0 = this.f22374a;
            c2393j0.getClass();
            Class cls3 = y0.f22396a;
            if (!U.class.isAssignableFrom(cls) && (cls2 = y0.f22396a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            InterfaceC2399m0 interfaceC2399m0Zzb = c2393j0.f22334a.zzb(cls);
            C2416v0 c2416v0 = (C2416v0) interfaceC2399m0Zzb;
            if ((c2416v0.f22382d & 2) == 2) {
                boolean zIsAssignableFrom = U.class.isAssignableFrom(cls);
                E e8 = c2416v0.f22379a;
                if (zIsAssignableFrom) {
                    c2407q0 = new C2407q0(y0.f22398c, P.f22283a, e8);
                } else {
                    A0 a8 = y0.f22397b;
                    N n7 = P.f22284b;
                    if (n7 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    c2407q0 = new C2407q0(a8, n7, e8);
                }
                interfaceC2418w0I = c2407q0;
            } else if (U.class.isAssignableFrom(cls)) {
                if (c2416v0.b() == 1) {
                    int i8 = AbstractC2410s0.f22368a;
                    C2385f0 c2385f0 = AbstractC2387g0.f22326b;
                    A0 a9 = y0.f22398c;
                    N n8 = P.f22283a;
                    int i9 = AbstractC2397l0.f22338a;
                    interfaceC2418w0I = C2405p0.i(interfaceC2399m0Zzb, c2385f0, a9, n8);
                } else {
                    int i10 = AbstractC2410s0.f22368a;
                    C2385f0 c2385f1 = AbstractC2387g0.f22326b;
                    A0 a10 = y0.f22398c;
                    int i11 = AbstractC2397l0.f22338a;
                    interfaceC2418w0I = C2405p0.i(interfaceC2399m0Zzb, c2385f1, a10, null);
                }
            } else if (c2416v0.b() == 1) {
                int i12 = AbstractC2410s0.f22368a;
                C2381d0 c2381d0 = AbstractC2387g0.f22325a;
                A0 a11 = y0.f22397b;
                N n9 = P.f22284b;
                if (n9 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                int i13 = AbstractC2397l0.f22338a;
                interfaceC2418w0I = C2405p0.i(interfaceC2399m0Zzb, c2381d0, a11, n9);
            } else {
                int i14 = AbstractC2410s0.f22368a;
                C2381d0 c2381d1 = AbstractC2387g0.f22325a;
                A0 a12 = y0.f22397b;
                int i15 = AbstractC2397l0.f22338a;
                interfaceC2418w0I = C2405p0.i(interfaceC2399m0Zzb, c2381d1, a12, null);
            }
            InterfaceC2418w0 interfaceC2418w0 = (InterfaceC2418w0) concurrentHashMap.putIfAbsent(cls, interfaceC2418w0I);
            if (interfaceC2418w0 != null) {
                return interfaceC2418w0;
            }
        }
        return interfaceC2418w0I;
    }
}
