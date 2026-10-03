package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Tw implements Runnable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Uw f16757H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String f16758I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f16760K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C2246xc f16761L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C3117z0 f16762M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ScheduledFuture f16763N;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f16756G = new ArrayList();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f16764O = 2;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f16759J = 2;

    public Tw(Uw uw) {
        this.f16757H = uw;
    }

    public final synchronized void a(Ow ow) {
        try {
            if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
                ArrayList arrayList = this.f16756G;
                ow.zzj();
                arrayList.add(ow);
                ScheduledFuture scheduledFuture = this.f16763N;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.f16763N = AbstractC1988se.f20909d.schedule(this, ((Integer) C3099q.f26624d.f26627c.a(Q7.a8)).intValue(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(String str) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() && !TextUtils.isEmpty(str)) {
            if (Pattern.matches((String) C3099q.f26624d.f26627c.a(Q7.b8), str)) {
                this.f16758I = str;
            }
        }
    }

    public final synchronized void c(C3117z0 c3117z0) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            this.f16762M = c3117z0;
        }
    }

    public final synchronized void d(ArrayList arrayList) {
        try {
            if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
                if (arrayList.contains("banner") || arrayList.contains("BANNER")) {
                    this.f16764O = 3;
                } else if (arrayList.contains("interstitial") || arrayList.contains("INTERSTITIAL")) {
                    this.f16764O = 4;
                } else if (arrayList.contains("native") || arrayList.contains("NATIVE")) {
                    this.f16764O = 8;
                } else if (arrayList.contains("rewarded") || arrayList.contains("REWARDED")) {
                    this.f16764O = 5;
                } else if (arrayList.contains("app_open_ad")) {
                    this.f16764O = 7;
                } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains("REWARDED_INTERSTITIAL")) {
                    this.f16764O = 6;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e(String str) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            this.f16760K = str;
        }
    }

    public final synchronized void f(Bundle bundle) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            this.f16759J = U2.m.d(bundle);
        }
    }

    public final synchronized void g(C2246xc c2246xc) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            this.f16761L = c2246xc;
        }
    }

    public final synchronized void h() {
        try {
            if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
                ScheduledFuture scheduledFuture = this.f16763N;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                for (Ow ow : this.f16756G) {
                    int i8 = this.f16764O;
                    if (i8 != 2) {
                        ow.b(i8);
                    }
                    if (!TextUtils.isEmpty(this.f16758I)) {
                        ow.o(this.f16758I);
                    }
                    if (!TextUtils.isEmpty(this.f16760K) && !ow.zzl()) {
                        ow.s(this.f16760K);
                    }
                    C2246xc c2246xc = this.f16761L;
                    if (c2246xc != null) {
                        ow.c(c2246xc);
                    } else {
                        C3117z0 c3117z0 = this.f16762M;
                        if (c3117z0 != null) {
                            ow.g(c3117z0);
                        }
                    }
                    ow.a(this.f16759J);
                    this.f16757H.b(ow.zzm());
                }
                this.f16756G.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void i(int i8) {
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            this.f16764O = i8;
        }
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        h();
    }
}
