package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class G implements InterfaceC0639o {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final IBinder f11797G;

    public G(IBinder iBinder) {
        this.f11797G = iBinder;
    }

    public final void Y(N n7, C0635k c0635k) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder(n7);
            parcelObtain.writeInt(1);
            C3.H.a(c0635k, parcelObtain, 0);
            this.f11797G.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f11797G;
    }
}
