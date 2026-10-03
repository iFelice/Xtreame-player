package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Pi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0881Pi implements InterfaceC1891qk, InterfaceC0779Ij {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final P3.a f15462G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0895Qi f15463H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Yv f15464I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f15465J;

    public C0881Pi(P3.a aVar, C0895Qi c0895Qi, Yv yv, String str) {
        this.f15462G = aVar;
        this.f15463H = c0895Qi;
        this.f15464I = yv;
        this.f15465J = str;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        ((P3.b) this.f15462G).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String str = this.f15464I.f17679f;
        C0895Qi c0895Qi = this.f15463H;
        ConcurrentHashMap concurrentHashMap = c0895Qi.f16115c;
        String str2 = this.f15465J;
        Long l4 = (Long) concurrentHashMap.get(str2);
        if (l4 == null) {
            return;
        }
        concurrentHashMap.remove(str2);
        c0895Qi.f16116d.put(str, Long.valueOf(jElapsedRealtime - l4.longValue()));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1891qk
    public final void zza() {
        ((P3.b) this.f15462G).getClass();
        this.f15463H.f16115c.put(this.f15465J, Long.valueOf(SystemClock.elapsedRealtime()));
    }
}
