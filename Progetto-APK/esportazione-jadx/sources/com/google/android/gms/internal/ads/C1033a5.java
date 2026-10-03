package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.a5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1033a5 implements AppOpsManager.OnOpActiveChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1085b5 f17836a;

    public C1033a5(C1085b5 c1085b5) {
        this.f17836a = c1085b5;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i8, String str2, boolean z7) {
        if (z7) {
            this.f17836a.f18013a = System.currentTimeMillis();
            this.f17836a.f18016d = true;
            return;
        }
        C1085b5 c1085b5 = this.f17836a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (c1085b5.f18014b > 0) {
            C1085b5 c1085b6 = this.f17836a;
            long j8 = c1085b6.f18014b;
            if (jCurrentTimeMillis >= j8) {
                c1085b6.f18015c = jCurrentTimeMillis - j8;
            }
        }
        this.f17836a.f18016d = false;
    }
}
