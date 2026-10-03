package p090l3;

import F2.G;
import R3.b;
import R3.c;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.InterfaceC0682Cc;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.measurement.H1;
import p120p3.h;
import p120p3.j;

/* JADX INFO: renamed from: l3.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3087k extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f26601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C3093n f26603e;

    public C3087k(C3093n c3093n, Context context, String str, BinderC1054ab binderC1054ab) {
        this.f26600b = context;
        this.f26601c = str;
        this.f26602d = binderC1054ab;
        this.f26603e = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26600b, "native_ad");
        return new O0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.M2(new b(this.f26600b), this.f26601c, this.f26602d, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        Context context = this.f26600b;
        Q7.a(context);
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.W9)).booleanValue();
        InterfaceC1157cb interfaceC1157cb = this.f26602d;
        String str = this.f26601c;
        C3093n c3093n = this.f26603e;
        if (!zBooleanValue) {
            M0 m7 = (M0) c3093n.f26610b;
            m7.getClass();
            try {
                b bVar = new b(context);
                G g8 = (G) m7.getRemoteCreatorInstance(context);
                Parcel parcelJ0 = g8.j0();
                A5.e(parcelJ0, bVar);
                parcelJ0.writeString(str);
                A5.e(parcelJ0, interfaceC1157cb);
                parcelJ0.writeInt(243220000);
                Parcel parcelN2 = g8.n2(1, parcelJ0);
                IBinder strongBinder = parcelN2.readStrongBinder();
                parcelN2.recycle();
                if (strongBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                return iInterfaceQueryLocalInterface instanceof F ? (F) iInterfaceQueryLocalInterface : new D(strongBinder);
            } catch (c e8) {
                e = e8;
                h.h("Could not create remote builder for AdLoader.", e);
                return null;
            } catch (RemoteException e9) {
                e = e9;
                h.h("Could not create remote builder for AdLoader.", e);
                return null;
            }
        }
        try {
            b bVar2 = new b(context);
            G g9 = (G) H1.G(context, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", new G(18));
            Parcel parcelJ1 = g9.j0();
            A5.e(parcelJ1, bVar2);
            parcelJ1.writeString(str);
            A5.e(parcelJ1, interfaceC1157cb);
            parcelJ1.writeInt(243220000);
            Parcel parcelN3 = g9.n2(1, parcelJ1);
            IBinder strongBinder2 = parcelN3.readStrongBinder();
            parcelN3.recycle();
            if (strongBinder2 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return iInterfaceQueryLocalInterface2 instanceof F ? (F) iInterfaceQueryLocalInterface2 : new D(strongBinder2);
        } catch (RemoteException e10) {
            e = e10;
            InterfaceC0682Cc interfaceC0682CcA = C0667Bc.a(context);
            c3093n.f26615g = interfaceC0682CcA;
            interfaceC0682CcA.b("ClientApiBroker.createAdLoaderBuilder", e);
            return null;
        } catch (NullPointerException e11) {
            e = e11;
            InterfaceC0682Cc interfaceC0682CcA2 = C0667Bc.a(context);
            c3093n.f26615g = interfaceC0682CcA2;
            interfaceC0682CcA2.b("ClientApiBroker.createAdLoaderBuilder", e);
            return null;
        } catch (j e12) {
            e = e12;
            InterfaceC0682Cc interfaceC0682CcA3 = C0667Bc.a(context);
            c3093n.f26615g = interfaceC0682CcA3;
            interfaceC0682CcA3.b("ClientApiBroker.createAdLoaderBuilder", e);
            return null;
        }
    }
}
