package p090l3;

import F2.G;
import R3.b;
import R3.c;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.C0667Bc;
import com.google.android.gms.internal.ads.InterfaceC0682Cc;
import com.google.android.gms.internal.ads.InterfaceC1037a9;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.V8;
import com.google.android.gms.internal.ads.W8;
import com.google.android.gms.internal.ads.X8;
import com.google.android.gms.internal.ads.Y8;
import com.google.android.gms.internal.measurement.H1;
import p120p3.h;
import p120p3.j;

/* JADX INFO: renamed from: l3.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3089l extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f26604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f26605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f26606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C3093n f26607e;

    public C3089l(C3093n c3093n, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f26604b = frameLayout;
        this.f26605c = frameLayout2;
        this.f26606d = context;
        this.f26607e = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26606d, "native_ad_view_delegate");
        return new Q0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.K0(new b(this.f26604b), new b(this.f26605c));
    }

    @Override // p090l3.AbstractC3095o
    public final Object c() {
        Context context = this.f26606d;
        Q7.a(context);
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.W9)).booleanValue();
        FrameLayout frameLayout = this.f26605c;
        FrameLayout frameLayout2 = this.f26604b;
        C3093n c3093n = this.f26607e;
        if (zBooleanValue) {
            try {
                b bVar = new b(context);
                b bVar2 = new b(frameLayout2);
                b bVar3 = new b(frameLayout);
                Y8 y8 = (Y8) ((InterfaceC1037a9) H1.G(context, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", new G(19)));
                Parcel parcelJ0 = y8.j0();
                A5.e(parcelJ0, bVar);
                A5.e(parcelJ0, bVar2);
                A5.e(parcelJ0, bVar3);
                parcelJ0.writeInt(243220000);
                Parcel parcelN2 = y8.n2(1, parcelJ0);
                IBinder strongBinder = parcelN2.readStrongBinder();
                parcelN2.recycle();
                int i8 = W8.f17174G;
                if (strongBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
                return iInterfaceQueryLocalInterface instanceof X8 ? (X8) iInterfaceQueryLocalInterface : new V8(strongBinder);
            } catch (RemoteException | NullPointerException | j e8) {
                InterfaceC0682Cc interfaceC0682CcA = C0667Bc.a(context);
                c3093n.f26615g = interfaceC0682CcA;
                interfaceC0682CcA.b("ClientApiBroker.createNativeAdViewDelegate", e8);
                return null;
            }
        }
        M0 m7 = (M0) c3093n.f26612d;
        m7.getClass();
        try {
            b bVar4 = new b(context);
            b bVar5 = new b(frameLayout2);
            b bVar6 = new b(frameLayout);
            Y8 y9 = (Y8) ((InterfaceC1037a9) m7.getRemoteCreatorInstance(context));
            Parcel parcelJ1 = y9.j0();
            A5.e(parcelJ1, bVar4);
            A5.e(parcelJ1, bVar5);
            A5.e(parcelJ1, bVar6);
            parcelJ1.writeInt(243220000);
            Parcel parcelN3 = y9.n2(1, parcelJ1);
            IBinder strongBinder2 = parcelN3.readStrongBinder();
            parcelN3.recycle();
            if (strongBinder2 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return iInterfaceQueryLocalInterface2 instanceof X8 ? (X8) iInterfaceQueryLocalInterface2 : new V8(strongBinder2);
        } catch (c e9) {
            e = e9;
            h.h("Could not create remote NativeAdViewDelegate.", e);
            return null;
        } catch (RemoteException e10) {
            e = e10;
            h.h("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
