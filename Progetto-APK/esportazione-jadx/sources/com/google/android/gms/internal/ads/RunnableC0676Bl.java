package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0676Bl implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12488G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0721El f12489H;

    public /* synthetic */ RunnableC0676Bl(C0721El c0721El, int i8) {
        this.f12488G = i8;
        this.f12489H = c0721El;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12488G) {
            case 0:
                C0721El c0721El = this.f12489H;
                try {
                    C0781Il c0781Il = c0721El.f13187k;
                    int iD = c0781Il.D();
                    C0856Nl c0856Nl = c0721El.f13191o;
                    if (iD == 1) {
                        if (c0856Nl.f15075a != null) {
                            c0721El.r();
                            InterfaceC1605l9 interfaceC1605l9 = c0856Nl.f15075a;
                            InterfaceC1192d9 interfaceC1192d9 = (InterfaceC1192d9) c0721El.f13192p.zzb();
                            C1553k9 c1553k9 = (C1553k9) interfaceC1605l9;
                            Parcel parcelJ0 = c1553k9.j0();
                            A5.e(parcelJ0, interfaceC1192d9);
                            c1553k9.O2(1, parcelJ0);
                            return;
                        }
                        return;
                    }
                    if (iD == 2) {
                        if (c0856Nl.f15076b != null) {
                            c0721El.r();
                            InterfaceC1501j9 interfaceC1501j9 = c0856Nl.f15076b;
                            InterfaceC1140c9 interfaceC1140c9 = (InterfaceC1140c9) c0721El.f13193q.zzb();
                            C1399h9 c1399h9 = (C1399h9) interfaceC1501j9;
                            Parcel parcelJ1 = c1399h9.j0();
                            A5.e(parcelJ1, interfaceC1140c9);
                            c1399h9.O2(1, parcelJ1);
                            return;
                        }
                        return;
                    }
                    if (iD == 3) {
                        if (((InterfaceC1813p9) c0856Nl.f15080f.get(c0781Il.a())) != null) {
                            if (c0781Il.R() != null) {
                                c0721El.x("Google", true);
                            }
                            ((InterfaceC1813p9) c0856Nl.f15080f.get(c0781Il.a())).x3((InterfaceC1295f9) c0721El.f13196t.zzb());
                            return;
                        }
                        return;
                    }
                    if (iD == 6) {
                        if (c0856Nl.f15077c != null) {
                            c0721El.r();
                            c0856Nl.f15077c.o3((B9) c0721El.f13194r.zzb());
                            return;
                        }
                        return;
                    }
                    if (iD != 7) {
                        p120p3.h.d("Wrong native template id!");
                        return;
                    }
                    InterfaceC1881qa interfaceC1881qa = c0856Nl.f15079e;
                    if (interfaceC1881qa != null) {
                        InterfaceC1673ma interfaceC1673ma = (InterfaceC1673ma) c0721El.f13195s.zzb();
                        C1829pa c1829pa = (C1829pa) interfaceC1881qa;
                        Parcel parcelJ2 = c1829pa.j0();
                        A5.e(parcelJ2, interfaceC1673ma);
                        c1829pa.O2(1, parcelJ2);
                        return;
                    }
                    return;
                } catch (RemoteException e8) {
                    p120p3.h.e("RemoteException when notifyAdLoad is called", e8);
                    return;
                }
            default:
                C0721El c0721El2 = this.f12489H;
                c0721El2.f13188l.zzi();
                C0781Il c0781Il2 = c0721El2.f13187k;
                synchronized (c0781Il2) {
                    try {
                        InterfaceC0715Ef interfaceC0715Ef = c0781Il2.f14029i;
                        if (interfaceC0715Ef != null) {
                            interfaceC0715Ef.destroy();
                            c0781Il2.f14029i = null;
                        }
                        InterfaceC0715Ef interfaceC0715Ef2 = c0781Il2.f14030j;
                        if (interfaceC0715Ef2 != null) {
                            interfaceC0715Ef2.destroy();
                            c0781Il2.f14030j = null;
                        }
                        InterfaceC0715Ef interfaceC0715Ef3 = c0781Il2.f14031k;
                        if (interfaceC0715Ef3 != null) {
                            interfaceC0715Ef3.destroy();
                            c0781Il2.f14031k = null;
                        }
                        D4.b bVar = c0781Il2.f14033m;
                        if (bVar != null) {
                            bVar.cancel(false);
                            c0781Il2.f14033m = null;
                        }
                        C2040te c2040te = c0781Il2.f14034n;
                        if (c2040te != null) {
                            c2040te.cancel(false);
                            c0781Il2.f14034n = null;
                        }
                        c0781Il2.f14032l = null;
                        c0781Il2.f14042v.clear();
                        c0781Il2.f14043w.clear();
                        c0781Il2.f14022b = null;
                        c0781Il2.f14023c = null;
                        c0781Il2.f14024d = null;
                        c0781Il2.f14025e = null;
                        c0781Il2.f14028h = null;
                        c0781Il2.f14035o = null;
                        c0781Il2.f14036p = null;
                        c0781Il2.f14037q = null;
                        c0781Il2.f14039s = null;
                        c0781Il2.f14040t = null;
                        c0781Il2.f14041u = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
