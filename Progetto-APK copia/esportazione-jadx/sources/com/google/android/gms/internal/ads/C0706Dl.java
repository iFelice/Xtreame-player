package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Dl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0706Dl implements G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f12867G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0721El f12868H;

    public C0706Dl(C0721El c0721El, String str) {
        this.f12867G = str;
        this.f12868H = c0721El;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15583B1)).booleanValue()) {
            if (f8.f13321j) {
                C0721El c0721El = this.f12868H;
                c0721El.f13184E.put(this.f12867G, Boolean.TRUE);
                C0721El c0721El2 = this.f12868H;
                c0721El2.b(c0721El2.f13197u.zzf(), this.f12868H.f13197u.zzl(), this.f12868H.f13197u.zzm(), true);
                return;
            }
            return;
        }
        synchronized (this) {
            try {
                if (f8.f13321j) {
                    C0721El c0721El3 = this.f12868H;
                    if (c0721El3.f13197u == null) {
                        return;
                    }
                    c0721El3.f13184E.put(this.f12867G, Boolean.TRUE);
                    C0721El c0721El4 = this.f12868H;
                    c0721El4.b(c0721El4.f13197u.zzf(), this.f12868H.f13197u.zzl(), this.f12868H.f13197u.zzm(), true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
