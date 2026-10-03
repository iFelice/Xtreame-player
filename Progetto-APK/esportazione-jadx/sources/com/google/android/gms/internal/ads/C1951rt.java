package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1951rt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f20801a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final P3.a f20802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC2108uu f20803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f20804d;

    public C1951rt(InterfaceC2108uu interfaceC2108uu, long j8, P3.a aVar) {
        this.f20802b = aVar;
        this.f20803c = interfaceC2108uu;
        this.f20804d = j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return this.f20803c.zza();
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001b  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        AtomicReference atomicReference = this.f20801a;
        C1900qt c1900qt = (C1900qt) atomicReference.get();
        if (c1900qt != null) {
            ((P3.b) c1900qt.f20650c).getClass();
            if (c1900qt.f20649b < SystemClock.elapsedRealtime()) {
                c1900qt = new C1900qt(this.f20803c.zzb(), this.f20804d, this.f20802b);
                atomicReference.set(c1900qt);
            }
        } else {
            c1900qt = new C1900qt(this.f20803c.zzb(), this.f20804d, this.f20802b);
            atomicReference.set(c1900qt);
        }
        return c1900qt.f20648a;
    }
}
