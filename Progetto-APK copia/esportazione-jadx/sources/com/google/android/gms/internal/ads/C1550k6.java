package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.InterfaceC0626b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.k6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1550k6 implements InterfaceC0626b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1950rs f19585a;

    public C1550k6(C1950rs c1950rs) {
        this.f19585a = c1950rs;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        synchronized (this.f19585a.f20798J) {
            try {
                C1950rs c1950rs = this.f19585a;
                Object obj = c1950rs.f20799K;
                if (((C1706n6) obj) != null) {
                    c1950rs.f20800L = (C1810p6) ((C1706n6) obj).getService();
                }
            } catch (DeadObjectException e8) {
                p120p3.h.e("Unable to obtain a cache service instance.", e8);
                C1950rs.p(this.f19585a);
            }
            this.f19585a.f20798J.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        synchronized (this.f19585a.f20798J) {
            C1950rs c1950rs = this.f19585a;
            c1950rs.f20800L = null;
            c1950rs.f20798J.notifyAll();
        }
    }
}
