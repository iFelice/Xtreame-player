package com.google.android.gms.internal.cast;

import D3.C0158b;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2442f extends AbstractC2276y5 {
    public final D3.v A3(R3.b bVar, R3.a aVar, R3.a aVar2) {
        D3.v tVar;
        Parcel parcelJ0 = j0();
        AbstractC2501u.d(parcelJ0, bVar);
        AbstractC2501u.d(parcelJ0, aVar);
        AbstractC2501u.d(parcelJ0, aVar2);
        Parcel parcelV0 = v0(5, parcelJ0);
        IBinder strongBinder = parcelV0.readStrongBinder();
        int i8 = D3.u.f2390H;
        if (strongBinder == null) {
            tVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IReconnectionService");
            tVar = iInterfaceQueryLocalInterface instanceof D3.v ? (D3.v) iInterfaceQueryLocalInterface : new D3.t(strongBinder, "com.google.android.gms.cast.framework.IReconnectionService", 2);
        }
        parcelV0.recycle();
        return tVar;
    }

    public final D3.y B3(String str, String str2, D3.A a8) {
        D3.y wVar;
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2501u.d(parcelJ0, a8);
        Parcel parcelV0 = v0(2, parcelJ0);
        IBinder strongBinder = parcelV0.readStrongBinder();
        int i8 = D3.x.f2391H;
        if (strongBinder == null) {
            wVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
            wVar = iInterfaceQueryLocalInterface instanceof D3.y ? (D3.y) iInterfaceQueryLocalInterface : new D3.w(strongBinder, "com.google.android.gms.cast.framework.ISession", 2);
        }
        parcelV0.recycle();
        return wVar;
    }

    public final F3.f C3(R3.b bVar, F3.b bVar2, int i8, int i9) {
        F3.f dVar;
        Parcel parcelJ0 = j0();
        AbstractC2501u.d(parcelJ0, bVar);
        AbstractC2501u.d(parcelJ0, bVar2);
        parcelJ0.writeInt(i8);
        parcelJ0.writeInt(i9);
        parcelJ0.writeInt(0);
        parcelJ0.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        parcelJ0.writeInt(5);
        parcelJ0.writeInt(333);
        parcelJ0.writeInt(10000);
        Parcel parcelV0 = v0(6, parcelJ0);
        IBinder strongBinder = parcelV0.readStrongBinder();
        int i10 = F3.e.f3189H;
        if (strongBinder == null) {
            dVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            dVar = iInterfaceQueryLocalInterface instanceof F3.f ? (F3.f) iInterfaceQueryLocalInterface : new F3.d(strongBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask", 2);
        }
        parcelV0.recycle();
        return dVar;
    }

    public final F3.f D3(R3.b bVar, R3.b bVar2, F3.b bVar3, int i8, int i9) {
        F3.f dVar;
        Parcel parcelJ0 = j0();
        AbstractC2501u.d(parcelJ0, bVar);
        AbstractC2501u.d(parcelJ0, bVar2);
        AbstractC2501u.d(parcelJ0, bVar3);
        parcelJ0.writeInt(i8);
        parcelJ0.writeInt(i9);
        parcelJ0.writeInt(0);
        parcelJ0.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        parcelJ0.writeInt(5);
        parcelJ0.writeInt(333);
        parcelJ0.writeInt(10000);
        Parcel parcelV0 = v0(7, parcelJ0);
        IBinder strongBinder = parcelV0.readStrongBinder();
        int i10 = F3.e.f3189H;
        if (strongBinder == null) {
            dVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            dVar = iInterfaceQueryLocalInterface instanceof F3.f ? (F3.f) iInterfaceQueryLocalInterface : new F3.d(strongBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask", 2);
        }
        parcelV0.recycle();
        return dVar;
    }

    public final D3.r z3(C0158b c0158b, R3.a aVar, D3.H h8) {
        D3.r pVar;
        Parcel parcelJ0 = j0();
        AbstractC2501u.c(parcelJ0, c0158b);
        AbstractC2501u.d(parcelJ0, aVar);
        AbstractC2501u.d(parcelJ0, h8);
        Parcel parcelV0 = v0(3, parcelJ0);
        IBinder strongBinder = parcelV0.readStrongBinder();
        int i8 = D3.q.f2389H;
        if (strongBinder == null) {
            pVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
            pVar = iInterfaceQueryLocalInterface instanceof D3.r ? (D3.r) iInterfaceQueryLocalInterface : new D3.p(strongBinder, "com.google.android.gms.cast.framework.ICastSession", 2);
        }
        parcelV0.recycle();
        return pVar;
    }
}
