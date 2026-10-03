package p090l3;

import F2.G;
import R3.b;
import R3.c;
import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC1469ic;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.C1417hc;
import com.google.android.gms.internal.ads.C1571kc;
import com.google.android.gms.internal.ads.InterfaceC0682Cc;
import com.google.android.gms.internal.ads.InterfaceC1519jc;
import com.google.android.gms.internal.ads.InterfaceC1675mc;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.measurement.H1;
import p120p3.h;
import p120p3.j;

/* JADX INFO: renamed from: l3.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3071c extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f26543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C3093n f26544c;

    public C3071c(C3093n c3093n, Activity activity) {
        this.f26543b = activity;
        this.f26544c = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object a() {
        C3093n.d(this.f26543b, "ad_overlay");
        return null;
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.y(new b(this.f26543b));
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        Activity activity = this.f26543b;
        Q7.a(activity);
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.W9)).booleanValue();
        C3093n c3093n = this.f26544c;
        if (zBooleanValue) {
            try {
                b bVar = new b(activity);
                C1571kc c1571kc = (C1571kc) ((InterfaceC1675mc) H1.G(activity, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", new G(14)));
                Parcel parcelJ0 = c1571kc.j0();
                A5.e(parcelJ0, bVar);
                Parcel parcelN2 = c1571kc.n2(1, parcelJ0);
                IBinder strongBinder = parcelN2.readStrongBinder();
                parcelN2.recycle();
                int i8 = AbstractBinderC1469ic.f19304G;
                if (strongBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
                return iInterfaceQueryLocalInterface instanceof InterfaceC1519jc ? (InterfaceC1519jc) iInterfaceQueryLocalInterface : new C1417hc(strongBinder);
            } catch (RemoteException | NullPointerException | j e8) {
                InterfaceC0682Cc interfaceC0682CcA = C0667Bc.a(activity.getApplicationContext());
                c3093n.f26615g = interfaceC0682CcA;
                interfaceC0682CcA.b("ClientApiBroker.createAdOverlay", e8);
                return null;
            }
        }
        M0 m7 = (M0) c3093n.f26613e;
        m7.getClass();
        try {
            b bVar2 = new b(activity);
            C1571kc c1571kc2 = (C1571kc) ((InterfaceC1675mc) m7.getRemoteCreatorInstance(activity));
            Parcel parcelJ1 = c1571kc2.j0();
            A5.e(parcelJ1, bVar2);
            Parcel parcelN3 = c1571kc2.n2(1, parcelJ1);
            IBinder strongBinder2 = parcelN3.readStrongBinder();
            parcelN3.recycle();
            if (strongBinder2 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return iInterfaceQueryLocalInterface2 instanceof InterfaceC1519jc ? (InterfaceC1519jc) iInterfaceQueryLocalInterface2 : new C1417hc(strongBinder2);
        } catch (c e9) {
            h.h("Could not create remote AdOverlay.", e9);
            return null;
        } catch (RemoteException e10) {
            h.h("Could not create remote AdOverlay.", e10);
            return null;
        }
    }
}
