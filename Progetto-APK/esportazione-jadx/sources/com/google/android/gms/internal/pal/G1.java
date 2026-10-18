package com.google.android.gms.internal.pal;

import android.app.AppOpsManager;

/* JADX INFO: loaded from: classes.dex */
public final class G1 implements AppOpsManager.OnOpActiveChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H1 f23532a;

    public G1(H1 h8) {
        this.f23532a = h8;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i8, String str2, boolean z7) {
        if (z7) {
            this.f23532a.f23538a = System.currentTimeMillis();
            this.f23532a.f23541d = true;
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        H1 h8 = this.f23532a;
        long j8 = h8.f23539b;
        if (j8 > 0 && jCurrentTimeMillis >= j8) {
            h8.f23540c = jCurrentTimeMillis - j8;
        }
        h8.f23541d = false;
    }
}
