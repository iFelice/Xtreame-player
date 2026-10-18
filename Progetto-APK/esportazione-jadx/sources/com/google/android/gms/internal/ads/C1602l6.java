package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.InterfaceC0627c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.l6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1602l6 implements InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19710a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19711b;

    public C1602l6(C2040te c2040te) {
        this.f19711b = c2040te;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
        switch (this.f19710a) {
            case 0:
                synchronized (((C1950rs) this.f19711b).f20798J) {
                    Object obj = this.f19711b;
                    ((C1950rs) obj).f20800L = null;
                    C1950rs c1950rs = (C1950rs) obj;
                    if (((C1706n6) c1950rs.f20799K) != null) {
                        c1950rs.f20799K = null;
                    }
                    ((C1950rs) obj).f20798J.notifyAll();
                    break;
                }
                return;
            default:
                ((C2040te) this.f19711b).c(new RuntimeException("Connection failed."));
                return;
        }
    }

    public C1602l6(C1950rs c1950rs) {
        this.f19711b = c1950rs;
    }
}
