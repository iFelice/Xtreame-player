package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1943rl implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20770G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final WeakReference f20771H;

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        WeakReference weakReference = this.f20771H;
        switch (this.f20770G) {
            case 0:
                C1995sl c1995sl = (C1995sl) weakReference.get();
                if (c1995sl != null && "_ac".equals((String) map.get("eventName"))) {
                    c1995sl.f20948h.x();
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
                        C0855Nk c0855Nk = c1995sl.f20949i;
                        c0855Nk.q();
                        if (!TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                            c0855Nk.u();
                        }
                    }
                }
                break;
            case 1:
                C1995sl c1995sl2 = (C1995sl) weakReference.get();
                if (c1995sl2 != null) {
                    c1995sl2.f20948h.x();
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
                        C0855Nk c0855Nk2 = c1995sl2.f20949i;
                        c0855Nk2.q();
                        if (!TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                            c0855Nk2.u();
                        }
                    }
                    break;
                }
                break;
            default:
                C1995sl c1995sl3 = (C1995sl) weakReference.get();
                if (c1995sl3 != null) {
                    c1995sl3.f20947g.zza();
                    break;
                }
                break;
        }
    }
}
