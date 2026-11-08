package C3;

import D3.C0159c;
import K3.C0236i;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.AbstractC2501u;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1437G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ E f1438H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f1439I;

    public /* synthetic */ D(E e8, int i8, int i9) {
        this.f1437G = i9;
        this.f1438H = e8;
        this.f1439I = i8;
    }

    private final void a() {
        E e8 = this.f1438H;
        F f8 = e8.f1440H;
        f8.f1456n = -1;
        f8.f1457o = -1;
        f8.f1452j = null;
        f8.f1453k = null;
        f8.f1454l = 0.0d;
        f8.g();
        f8.f1455m = false;
        f8.f1458p = null;
        F f9 = e8.f1440H;
        f9.f1464v = 1;
        int i8 = this.f1439I;
        synchronized (f9.f1463u) {
            try {
                Iterator it = e8.f1440H.f1463u.iterator();
                while (it.hasNext()) {
                    D3.r rVar = ((D3.j) it.next()).f2385a.f2371e;
                    if (rVar != null) {
                        try {
                            J3.b bVar = new J3.b(i8);
                            D3.p pVar = (D3.p) rVar;
                            Parcel parcelJ0 = pVar.j0();
                            AbstractC2501u.c(parcelJ0, bVar);
                            pVar.r1(3, parcelJ0);
                        } catch (RemoteException e9) {
                            C0159c.f2368m.a(e9, "Unable to call %s on %s.", "onDisconnected", D3.r.class.getSimpleName());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        e8.f1440H.e();
        F f10 = e8.f1440H;
        C0236i c0236i = f10.registerListener(f10.f1443a, "castDeviceControllerListenerKey").f4556b;
        com.bumptech.glide.c.i(c0236i, "Key must not be null");
        f10.doUnregisterEventListener(c0236i, 8415);
    }

    private final void b() {
        E e8 = this.f1438H;
        int i8 = this.f1439I;
        if (i8 == 0) {
            F f8 = e8.f1440H;
            f8.f1464v = 2;
            f8.f1445c = true;
            f8.f1446d = true;
            synchronized (f8.f1463u) {
                try {
                    Iterator it = e8.f1440H.f1463u.iterator();
                    while (it.hasNext()) {
                        ((D3.j) it.next()).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        F f9 = e8.f1440H;
        f9.f1464v = 1;
        synchronized (f9.f1463u) {
            try {
                Iterator it2 = e8.f1440H.f1463u.iterator();
                while (it2.hasNext()) {
                    D3.r rVar = ((D3.j) it2.next()).f2385a.f2371e;
                    if (rVar != null) {
                        try {
                            J3.b bVar = new J3.b(i8);
                            D3.p pVar = (D3.p) rVar;
                            Parcel parcelJ0 = pVar.j0();
                            AbstractC2501u.c(parcelJ0, bVar);
                            pVar.r1(3, parcelJ0);
                        } catch (RemoteException e9) {
                            C0159c.f2368m.a(e9, "Unable to call %s on %s.", "onConnectionFailed", D3.r.class.getSimpleName());
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        e8.f1440H.e();
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1437G) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                this.f1438H.f1440H.f1462t.b(this.f1439I);
                return;
            default:
                E e8 = this.f1438H;
                F f8 = e8.f1440H;
                f8.f1464v = 3;
                int i8 = this.f1439I;
                synchronized (f8.f1463u) {
                    try {
                        Iterator it = e8.f1440H.f1463u.iterator();
                        while (it.hasNext()) {
                            D3.r rVar = ((D3.j) it.next()).f2385a.f2371e;
                            if (rVar != null) {
                                try {
                                    D3.p pVar = (D3.p) rVar;
                                    Parcel parcelJ0 = pVar.j0();
                                    parcelJ0.writeInt(i8);
                                    pVar.r1(2, parcelJ0);
                                } catch (RemoteException e9) {
                                    C0159c.f2368m.a(e9, "Unable to call %s on %s.", "onConnectionSuspended", D3.r.class.getSimpleName());
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }
}
