package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class D9 extends AbstractBinderC2328z5 implements InterfaceC1813p9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ p004a3.b f12780G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D9(p004a3.b bVar) {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
        this.f12780G = bVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1813p9
    public final void x3(InterfaceC1295f9 interfaceC1295f9) {
        String strZzi;
        p004a3.b bVar = this.f12780G;
        com.google.ads.mediation.d dVar = (com.google.ads.mediation.d) bVar.f8650H;
        C1347g9 c1347g9V = p004a3.b.v(bVar, interfaceC1295f9);
        p004a3.b bVar2 = (p004a3.b) ((p136r3.l) dVar.f11629I);
        bVar2.getClass();
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        try {
            strZzi = c1347g9V.f18907a.zzi();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            strZzi = null;
        }
        p120p3.h.b("Adapter called onAdLoaded with template id ".concat(String.valueOf(strZzi)));
        bVar2.f8652J = c1347g9V;
        try {
            ((InterfaceC1416hb) bVar2.f8650H).k();
        } catch (RemoteException e9) {
            p120p3.h.i("#007 Could not call remote method.", e9);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1295f9 c1243e9;
        if (i8 != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            c1243e9 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            c1243e9 = iInterfaceQueryLocalInterface instanceof InterfaceC1295f9 ? (InterfaceC1295f9) iInterfaceQueryLocalInterface : new C1243e9(strongBinder);
        }
        A5.b(parcel);
        x3(c1243e9);
        parcel2.writeNoException();
        return true;
    }
}
