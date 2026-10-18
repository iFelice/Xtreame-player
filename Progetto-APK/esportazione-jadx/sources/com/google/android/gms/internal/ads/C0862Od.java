package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0862Od implements G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f15175G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f15176H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f15177I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f15178J;

    public C0862Od(Context context, String str) {
        this.f15175G = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f15177I = str;
        this.f15178J = false;
        this.f15176H = new Object();
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        a(f8.f13321j);
    }

    public final void a(boolean z7) {
        p083k3.l lVar = p083k3.l.f25980A;
        if (lVar.f26003w.e(this.f15175G)) {
            synchronized (this.f15176H) {
                try {
                    if (this.f15178J == z7) {
                        return;
                    }
                    this.f15178J = z7;
                    if (TextUtils.isEmpty(this.f15177I)) {
                        return;
                    }
                    if (this.f15178J) {
                        C0890Qd c0890Qd = lVar.f26003w;
                        Context context = this.f15175G;
                        String str = this.f15177I;
                        if (c0890Qd.e(context)) {
                            c0890Qd.j(context, str, "beginAdUnitExposure");
                        }
                    } else {
                        C0890Qd c0890Qd2 = lVar.f26003w;
                        Context context2 = this.f15175G;
                        String str2 = this.f15177I;
                        if (c0890Qd2.e(context2)) {
                            c0890Qd2.j(context2, str2, "endAdUnitExposure");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
