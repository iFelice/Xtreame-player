package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class C9 extends AbstractBinderC2328z5 implements InterfaceC1709n9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ p004a3.b f12585G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9(p004a3.b bVar) {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        this.f12585G = bVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1709n9
    public final void Q1(InterfaceC1295f9 interfaceC1295f9, String str) {
        p004a3.b bVar = this.f12585G;
        com.google.ads.mediation.d dVar = (com.google.ads.mediation.d) bVar.f8651I;
        if (dVar == null) {
            return;
        }
        C1347g9 c1347g9V = p004a3.b.v(bVar, interfaceC1295f9);
        p004a3.b bVar2 = (p004a3.b) ((p136r3.l) dVar.f11629I);
        bVar2.getClass();
        try {
            ((InterfaceC1416hb) bVar2.f8650H).h0(c1347g9V.f18907a, str);
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
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
        String string = parcel.readString();
        A5.b(parcel);
        Q1(c1243e9, string);
        parcel2.writeNoException();
        return true;
    }
}
