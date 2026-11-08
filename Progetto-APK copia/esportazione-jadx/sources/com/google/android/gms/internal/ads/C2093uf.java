package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2093uf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C2145vf f21231a;

    public /* synthetic */ C2093uf(C2145vf c2145vf) {
        this.f21231a = c2145vf;
    }

    public final AbstractC1048aK[] a(Handler handler, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK2) {
        p000a.x xVar = new p000a.x();
        C2145vf c2145vf = this.f21231a;
        Context context = c2145vf.f21529G;
        xVar.f8620b = context;
        xVar.f8621c = EL.f12964c;
        xVar.f8622d = InterfaceC1256eM.f18516p;
        p113o3.r.M(!xVar.f8619a);
        xVar.f8619a = true;
        if (((C1093bD) xVar.f8623e) == null) {
            xVar.f8623e = new C1093bD(new InterfaceC2044ti[0]);
        }
        if (((C1050aM) xVar.f8624f) == null) {
            xVar.f8624f = new C1050aM((Context) xVar.f8620b);
        }
        int i8 = 6;
        C1774oM c1774oM = new C1774oM(context, new I7(context, i8), handler, surfaceHolderCallbackC1979sK2, new C1618lM(xVar));
        Context context2 = c2145vf.f21529G;
        return new AbstractC1048aK[]{c1774oM, new C1543k(context2, new I7(context2, i8), handler, surfaceHolderCallbackC1979sK)};
    }
}
