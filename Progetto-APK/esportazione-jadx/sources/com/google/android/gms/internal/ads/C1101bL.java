package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1101bL implements FK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f18036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f18037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f18038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C1778ob f18039d;

    @Override // com.google.android.gms.internal.ads.FK
    public final void a(C1778ob c1778ob) {
        if (this.f18036a) {
            b(zza());
        }
        this.f18039d = c1778ob;
    }

    public final void b(long j8) {
        this.f18037b = j8;
        if (this.f18036a) {
            this.f18038c = SystemClock.elapsedRealtime();
        }
    }

    public final void c() {
        if (this.f18036a) {
            return;
        }
        this.f18038c = SystemClock.elapsedRealtime();
        this.f18036a = true;
    }

    public final void d() {
        if (this.f18036a) {
            b(zza());
            this.f18036a = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final long zza() {
        long j8 = this.f18037b;
        if (!this.f18036a) {
            return j8;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f18038c;
        C1778ob c1778ob = this.f18039d;
        return j8 + (c1778ob.f20290a == 1.0f ? Et.t(jElapsedRealtime) : jElapsedRealtime * ((long) c1778ob.f20292c));
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final C1778ob zzc() {
        return this.f18039d;
    }

    @Override // com.google.android.gms.internal.ads.FK
    public final /* synthetic */ boolean zzj() {
        return false;
    }
}
