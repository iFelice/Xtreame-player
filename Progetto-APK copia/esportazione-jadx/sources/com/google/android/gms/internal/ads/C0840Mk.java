package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Set;
import java.util.WeakHashMap;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0840Mk extends AbstractC1666mI implements G5 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final WeakHashMap f14783H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Context f14784I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Ov f14785J;

    public C0840Mk(Context context, Set set, Ov ov) {
        super(set);
        this.f14783H = new WeakHashMap(1);
        this.f14784I = context;
        this.f14785J = ov;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final synchronized void F(F5 f8) {
        Z0(new C0864Of(f8, 7));
    }

    public final synchronized void a1(View view) {
        try {
            H5 h8 = (H5) this.f14783H.get(view);
            if (h8 == null) {
                H5 h9 = new H5(this.f14784I, view);
                h9.f13714R.add(this);
                h9.c(3);
                this.f14783H.put(view, h9);
                h8 = h9;
            }
            if (this.f14785J.f15243X) {
                J7 j8 = Q7.f15841h1;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    h8.f13711O.a(((Long) c3099q.f26627c.a(Q7.f15832g1)).longValue());
                    return;
                }
            }
            h8.f13711O.a(H5.f13701U);
        } catch (Throwable th) {
            throw th;
        }
    }
}
