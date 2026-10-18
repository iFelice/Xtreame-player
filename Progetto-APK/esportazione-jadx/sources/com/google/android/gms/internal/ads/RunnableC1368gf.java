package com.google.android.gms.internal.ads;

import C2.C0091g;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1368gf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18950G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f18951H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f18952I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f18953J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f18954K;

    public RunnableC1368gf(AbstractC1522jf abstractC1522jf, String str, String str2, int i8) {
        this.f18952I = str;
        this.f18953J = str2;
        this.f18951H = i8;
        this.f18954K = abstractC1522jf;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i8 = 0;
        int i9 = this.f18950G;
        Object obj = this.f18954K;
        int i10 = this.f18951H;
        Object obj2 = this.f18953J;
        Object obj3 = this.f18952I;
        switch (i9) {
            case 0:
                HashMap map = new HashMap();
                map.put("event", "precacheComplete");
                map.put("src", (String) obj3);
                map.put("cachedSrc", (String) obj2);
                map.put("totalBytes", Integer.toString(i10));
                AbstractC1522jf.k((AbstractC1522jf) obj, map);
                break;
            case 1:
                ((AbstractC0990Xf) obj3).F((View) obj2, (InterfaceC0758Hd) obj, i10 - 1);
                break;
            default:
                C1542jz c1542jz = (C1542jz) obj3;
                C1336fz c1336fz = (C1336fz) obj2;
                C0091g c0091g = (C0091g) obj;
                String str = c1542jz.f19541b;
                try {
                    C1854pz c1854pz = c1542jz.f19540a;
                    c1854pz.getClass();
                    InterfaceC1078az interfaceC1078az = (InterfaceC1078az) c1854pz.f20517j;
                    if (interfaceC1078az != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("callerPackage", str);
                        bundle.putInt("displayMode", i10);
                        C1542jz.b(c1336fz.f18855a, new C1388gz(bundle, i8));
                        C1542jz.b(c1336fz.f18856b, new C1388gz(bundle, 5));
                        BinderC1490iz binderC1490iz = new BinderC1490iz(c1542jz, c0091g);
                        Yy yy = (Yy) interfaceC1078az;
                        Parcel parcelJ0 = yy.j0();
                        A5.c(parcelJ0, bundle);
                        A5.e(parcelJ0, binderC1490iz);
                        yy.k3(3, parcelJ0);
                    }
                } catch (RemoteException e8) {
                    C1542jz.f19538c.c(e8, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(i10), str);
                }
                break;
        }
    }

    public /* synthetic */ RunnableC1368gf(AbstractC0990Xf abstractC0990Xf, View view, InterfaceC0758Hd interfaceC0758Hd, int i8) {
        this.f18952I = abstractC0990Xf;
        this.f18953J = view;
        this.f18954K = interfaceC0758Hd;
        this.f18951H = i8;
    }

    public /* synthetic */ RunnableC1368gf(C1542jz c1542jz, C1336fz c1336fz, int i8, C0091g c0091g) {
        this.f18952I = c1542jz;
        this.f18953J = c1336fz;
        this.f18951H = i8;
        this.f18954K = c0091g;
    }
}
