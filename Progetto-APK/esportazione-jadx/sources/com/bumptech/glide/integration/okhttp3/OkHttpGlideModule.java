package com.bumptech.glide.integration.okhttp3;

import C2.D;
import C2.H;
import com.bumptech.glide.j;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.Iterator;
import p032e0.u;
import p166v2.b;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class OkHttpGlideModule {
    public final void a(j jVar) {
        b bVar = new b();
        x0 x0Var = jVar.f11540a;
        synchronized (x0Var) {
            try {
                Iterator it = ((H) x0Var.f22390H).g(bVar).iterator();
                while (it.hasNext()) {
                    ((D) it.next()).getClass();
                }
                ((u) x0Var.f22391I).f24776a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
