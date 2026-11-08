package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.View;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Gq extends AbstractBinderC2328z5 implements InterfaceC0651Ab {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2000sq f13642G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Hq f13643H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Gq(Hq hq, C2000sq c2000sq) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
        this.f13643H = hq;
        this.f13642G = c2000sq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0651Ab
    public final void c(C3117z0 c3117z0) {
        ((Nq) this.f13642G.f20995c).R0(c3117z0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1518jb c1468ib;
        Hq hq = this.f13643H;
        C2000sq c2000sq = this.f13642G;
        if (i8 == 1) {
            R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            hq.f13799c = (View) R3.b.v0(aVarJ0);
            ((Nq) c2000sq.f20995c).k();
        } else if (i8 == 2) {
            String string = parcel.readString();
            A5.b(parcel);
            ((Nq) c2000sq.f20995c).n0(0, string);
        } else if (i8 == 3) {
            C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
            A5.b(parcel);
            c(c3117z0);
        } else {
            if (i8 != 4) {
                return false;
            }
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                c1468ib = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
                c1468ib = iInterfaceQueryLocalInterface instanceof InterfaceC1518jb ? (InterfaceC1518jb) iInterfaceQueryLocalInterface : new C1468ib(strongBinder);
            }
            A5.b(parcel);
            hq.f13800d = c1468ib;
            ((Nq) c2000sq.f20995c).k();
        }
        parcel2.writeNoException();
        return true;
    }
}
