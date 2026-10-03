package com.google.android.gms.internal.cast;

import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2517y implements R2.d, A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ C2517y f22822G = new C2517y();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ C2517y f22823H = new C2517y();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C2517y f22824I = new C2517y();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2517y f22825J = new C2517y();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C2517y f22826K = new C2517y();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final C2517y f22827L = new C2517y();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final C2517y f22828M = new C2517y();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final C2517y f22829N = new C2517y();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final C2517y f22830O = new C2517y();

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final C2517y f22831P = new C2517y();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final C2517y f22832Q = new C2517y();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final C2517y f22833R = new C2517y();

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final C2517y f22834S = new C2517y();

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final C2517y f22835T = new C2517y();

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final C2517y f22836U = new C2517y();

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final C2517y f22837V = new C2517y();

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final C2517y f22838W = new C2517y();

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final C2517y f22839X = new C2517y();

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final C2517y f22840Y = new C2517y();

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static final C2517y f22841Z = new C2517y();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final C2517y f22842a0 = new C2517y();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final C2517y f22843b0 = new C2517y();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final C2517y f22844c0 = new C2517y();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final C2517y f22845d0 = new C2517y();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final C2517y f22846e0 = new C2517y();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final C2517y f22847f0 = new C2517y();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final C2517y f22848g0 = new C2517y();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final C2517y f22849h0 = new C2517y();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final C2517y f22850i0 = new C2517y();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final C2517y f22851j0 = new C2517y();

    @Override // R2.d
    public Object apply(Object obj) {
        C2494s0 c2494s0 = (C2494s0) obj;
        try {
            int i8 = c2494s0.i();
            byte[] bArr = new byte[i8];
            C2429b2 c2429b2 = new C2429b2(bArr, i8);
            M2 m2A = J2.f22476c.a(C2494s0.class);
            C2433c2 c2433c2 = c2429b2.f22651c;
            if (c2433c2 == null) {
                c2433c2 = new C2433c2(c2429b2);
            }
            m2A.d(c2494s0, c2433c2);
            if (i8 - c2429b2.f22654f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(p000a.r.g("Serializing ", c2494s0.getClass().getName(), " to a byte array threw an IOException (should never happen)."), e8);
        }
    }

    @Override // com.google.android.gms.internal.cast.A
    public Object zza() {
        throw new IllegalStateException();
    }
}
