package p090l3;

import F2.G;
import R3.b;
import R3.c;
import R3.d;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.measurement.H1;
import p120p3.h;
import p120p3.j;

/* JADX INFO: loaded from: classes.dex */
public final class a1 extends d {
    public final J a(Context context, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Q7.a(context);
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.W9)).booleanValue()) {
            try {
                IBinder iBinderZ3 = ((K) getRemoteCreatorInstance(context)).z3(new b(context), d1Var, str, interfaceC1157cb, i8);
                if (iBinderZ3 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinderZ3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                return iInterfaceQueryLocalInterface instanceof J ? (J) iInterfaceQueryLocalInterface : new H(iBinderZ3);
            } catch (c e8) {
                e = e8;
                h.c("Could not create remote AdManager.", e);
                return null;
            } catch (RemoteException e9) {
                e = e9;
                h.c("Could not create remote AdManager.", e);
                return null;
            }
        }
        try {
            IBinder iBinderZ4 = ((K) H1.G(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", new G(20))).z3(new b(context), d1Var, str, interfaceC1157cb, i8);
            if (iBinderZ4 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface2 = iBinderZ4.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return iInterfaceQueryLocalInterface2 instanceof J ? (J) iInterfaceQueryLocalInterface2 : new H(iBinderZ4);
        } catch (RemoteException e10) {
            e = e10;
            C0667Bc.a(context).b("AdManagerCreator.newAdManagerByDynamiteLoader", e);
            h.i("#007 Could not call remote method.", e);
            return null;
        } catch (NullPointerException e11) {
            e = e11;
            C0667Bc.a(context).b("AdManagerCreator.newAdManagerByDynamiteLoader", e);
            h.i("#007 Could not call remote method.", e);
            return null;
        } catch (j e12) {
            e = e12;
            C0667Bc.a(context).b("AdManagerCreator.newAdManagerByDynamiteLoader", e);
            h.i("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // R3.d
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return iInterfaceQueryLocalInterface instanceof K ? (K) iInterfaceQueryLocalInterface : new K(iBinder);
    }
}
