package p090l3;

import R3.b;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.C1780od;
import com.google.android.gms.internal.ads.C2091ud;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1884qd;
import com.google.android.gms.internal.measurement.H1;
import p120p3.h;
import p120p3.j;

/* JADX INFO: renamed from: l3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3069b extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f26515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26516d;

    public C3069b(Context context, String str, BinderC1054ab binderC1054ab) {
        this.f26514b = context;
        this.f26515c = str;
        this.f26516d = binderC1054ab;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26514b, "rewarded");
        return new R0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.e0(new b(this.f26514b), this.f26515c, this.f26516d, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        C2091ud c2091ud;
        String str = this.f26515c;
        InterfaceC1157cb interfaceC1157cb = this.f26516d;
        Context context = this.f26514b;
        b bVar = new b(context);
        try {
            try {
                IBinder iBinderB = H1.J(context).b("com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl");
                if (iBinderB == null) {
                    c2091ud = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
                    c2091ud = iInterfaceQueryLocalInterface instanceof C2091ud ? (C2091ud) iInterfaceQueryLocalInterface : new C2091ud(iBinderB, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator", 0);
                }
                IBinder iBinderZ3 = c2091ud.z3(bVar, str, interfaceC1157cb);
                if (iBinderZ3 == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface2 = iBinderZ3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
                return iInterfaceQueryLocalInterface2 instanceof InterfaceC1884qd ? (InterfaceC1884qd) iInterfaceQueryLocalInterface2 : new C1780od(iBinderZ3);
            } catch (Exception e8) {
                throw new j(e8);
            }
        } catch (RemoteException e9) {
            e = e9;
            h.i("#007 Could not call remote method.", e);
            return null;
        } catch (j e10) {
            e = e10;
            h.i("#007 Could not call remote method.", e);
            return null;
        }
    }
}
