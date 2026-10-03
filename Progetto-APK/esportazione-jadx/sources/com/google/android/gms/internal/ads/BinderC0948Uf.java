package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Uf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0948Uf extends p090l3.A0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0863Oe f16857G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f16859I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f16860J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f16861K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public p090l3.D0 f16862L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f16863M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f16865O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public float f16866P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public float f16867Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f16868R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f16869S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public C1865q9 f16870T;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f16858H = new Object();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f16864N = true;

    public BinderC0948Uf(InterfaceC0863Oe interfaceC0863Oe, float f8, boolean z7, boolean z8) {
        this.f16857G = interfaceC0863Oe;
        this.f16865O = f8;
        this.f16859I = z7;
        this.f16860J = z8;
    }

    public final void A3(float f8, float f9, int i8, boolean z7, float f10) {
        boolean z8;
        boolean z9;
        int i9;
        synchronized (this.f16858H) {
            try {
                z8 = true;
                if (f9 == this.f16865O && f10 == this.f16867Q) {
                    z8 = false;
                }
                this.f16865O = f9;
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.ac)).booleanValue()) {
                    this.f16866P = f8;
                }
                z9 = this.f16864N;
                this.f16864N = z7;
                i9 = this.f16861K;
                this.f16861K = i8;
                float f11 = this.f16867Q;
                this.f16867Q = f10;
                if (Math.abs(f10 - f11) > 1.0E-4f) {
                    this.f16857G.j().invalidate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z8) {
            try {
                C1865q9 c1865q9 = this.f16870T;
                if (c1865q9 != null) {
                    c1865q9.O2(2, c1865q9.j0());
                }
            } catch (RemoteException e8) {
                p120p3.h.i("#007 Could not call remote method.", e8);
            }
        }
        AbstractC1988se.f20910e.execute(new RunnableC0934Tf(this, i9, i8, z9, z7));
    }

    public final void B3(p090l3.Y0 y7) {
        Object obj = this.f16858H;
        boolean z7 = y7.f26509G;
        boolean z8 = y7.f26510H;
        boolean z9 = y7.f26511I;
        synchronized (obj) {
            this.f16868R = z8;
            this.f16869S = z9;
        }
        String str = true != z7 ? "0" : "1";
        String str2 = true != z8 ? "0" : "1";
        String str3 = true != z9 ? "0" : "1";
        p132r.f fVar = new p132r.f(3);
        fVar.put("muteStart", str);
        fVar.put("customControlsRequested", str2);
        fVar.put("clickToExpandRequested", str3);
        C3("initialState", Collections.unmodifiableMap(fVar));
    }

    public final void C3(String str, Map map) {
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        AbstractC1988se.f20910e.execute(new RunnableC0755Ha(18, this, map2));
    }

    @Override // p090l3.B0
    public final void L0(boolean z7) {
        C3(true != z7 ? "unmute" : "mute", null);
    }

    @Override // p090l3.B0
    public final void S0(p090l3.D0 d6) {
        synchronized (this.f16858H) {
            this.f16862L = d6;
        }
    }

    public final void n() {
        boolean z7;
        int i8;
        int i9;
        synchronized (this.f16858H) {
            z7 = this.f16864N;
            i8 = this.f16861K;
            i9 = 3;
            this.f16861K = 3;
        }
        AbstractC1988se.f20910e.execute(new RunnableC0934Tf(this, i8, i9, z7, z7));
    }

    @Override // p090l3.B0
    public final float zze() {
        float f8;
        synchronized (this.f16858H) {
            f8 = this.f16867Q;
        }
        return f8;
    }

    @Override // p090l3.B0
    public final float zzf() {
        float f8;
        synchronized (this.f16858H) {
            f8 = this.f16866P;
        }
        return f8;
    }

    @Override // p090l3.B0
    public final float zzg() {
        float f8;
        synchronized (this.f16858H) {
            f8 = this.f16865O;
        }
        return f8;
    }

    @Override // p090l3.B0
    public final int zzh() {
        int i8;
        synchronized (this.f16858H) {
            i8 = this.f16861K;
        }
        return i8;
    }

    @Override // p090l3.B0
    public final p090l3.D0 zzi() {
        p090l3.D0 d6;
        synchronized (this.f16858H) {
            d6 = this.f16862L;
        }
        return d6;
    }

    @Override // p090l3.B0
    public final void zzk() {
        C3("pause", null);
    }

    @Override // p090l3.B0
    public final void zzl() {
        C3("play", null);
    }

    @Override // p090l3.B0
    public final void zzn() {
        C3("stop", null);
    }

    @Override // p090l3.B0
    public final boolean zzo() {
        boolean z7;
        Object obj = this.f16858H;
        boolean zZzp = zzp();
        synchronized (obj) {
            z7 = false;
            if (!zZzp) {
                try {
                    if (this.f16869S && this.f16860J) {
                        z7 = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return z7;
    }

    @Override // p090l3.B0
    public final boolean zzp() {
        boolean z7;
        synchronized (this.f16858H) {
            try {
                z7 = false;
                if (this.f16859I && this.f16868R) {
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    @Override // p090l3.B0
    public final boolean zzq() {
        boolean z7;
        synchronized (this.f16858H) {
            z7 = this.f16864N;
        }
        return z7;
    }
}
