package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.me, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1677me {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f19963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p113o3.K f19964h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f19957a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f19958b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19959c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f19960d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f19961e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f19962f = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19965i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f19966j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f19967k = 0;

    public C1677me(String str, p113o3.L l4) {
        this.f19963g = str;
        this.f19964h = l4;
    }

    public final int a() {
        int i8;
        synchronized (this.f19962f) {
            i8 = this.f19967k;
        }
        return i8;
    }

    public final Bundle b(Context context, String str) {
        Bundle bundle;
        synchronized (this.f19962f) {
            try {
                bundle = new Bundle();
                if (!((p113o3.L) this.f19964h).r()) {
                    bundle.putString("session_id", this.f19963g);
                }
                bundle.putLong("basets", this.f19958b);
                bundle.putLong("currts", this.f19957a);
                bundle.putString("seq_num", str);
                bundle.putInt("preqs", this.f19959c);
                bundle.putInt("preqs_in_session", this.f19960d);
                bundle.putLong("time_in_session", this.f19961e);
                bundle.putInt("pclick", this.f19965i);
                bundle.putInt("pimp", this.f19966j);
                int i8 = AbstractC1159cd.f18227a;
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
                boolean z7 = false;
                if (identifier == 0) {
                    p120p3.h.f("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                } else {
                    try {
                        if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                            z7 = true;
                        } else {
                            p120p3.h.f("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        p120p3.h.g("Fail to fetch AdActivity theme");
                        p120p3.h.f("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                }
                bundle.putBoolean("support_transparent_background", z7);
                bundle.putInt("consent_form_action_identifier", a());
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    public final void c() {
        synchronized (this.f19962f) {
            this.f19965i++;
        }
    }

    public final void d() {
        synchronized (this.f19962f) {
            this.f19966j++;
        }
    }

    public final void e(p090l3.b1 b1Var, long j8) {
        Bundle bundle;
        synchronized (this.f19962f) {
            try {
                long jV = ((p113o3.L) this.f19964h).v();
                p083k3.l.f25980A.f25990j.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (this.f19958b == -1) {
                    if (jCurrentTimeMillis - jV > ((Long) C3099q.f26624d.f26627c.a(Q7.f15669M0)).longValue()) {
                        this.f19960d = -1;
                    } else {
                        this.f19960d = ((p113o3.L) this.f19964h).u();
                    }
                    this.f19958b = j8;
                    this.f19957a = j8;
                } else {
                    this.f19957a = j8;
                }
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15910p3)).booleanValue() || (bundle = b1Var.f26519I) == null || bundle.getInt("gw", 2) != 1) {
                    this.f19959c++;
                    int i8 = this.f19960d + 1;
                    this.f19960d = i8;
                    if (i8 == 0) {
                        this.f19961e = 0L;
                        ((p113o3.L) this.f19964h).d(jCurrentTimeMillis);
                    } else {
                        this.f19961e = jCurrentTimeMillis - ((p113o3.L) this.f19964h).w();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f() {
        synchronized (this.f19962f) {
            this.f19967k++;
        }
    }

    public final void g() {
        if (((Boolean) AbstractC2279y8.f21995a.l()).booleanValue()) {
            synchronized (this.f19962f) {
                this.f19959c--;
                this.f19960d--;
            }
        }
    }
}
