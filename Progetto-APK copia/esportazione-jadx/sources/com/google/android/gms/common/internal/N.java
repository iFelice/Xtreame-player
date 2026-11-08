package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;

/* JADX INFO: loaded from: classes.dex */
public final class N extends AbstractBinderC2478o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public AbstractC0631g f11804H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f11805I;

    public N(AbstractC0631g abstractC0631g, int i8) {
        super("com.google.android.gms.common.internal.IGmsCallbacks", 1);
        this.f11804H = abstractC0631g;
        this.f11805I = i8;
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        int i9 = this.f11805I;
        if (i8 == 1) {
            int i10 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) Y3.a.a(parcel, Bundle.CREATOR);
            Y3.a.b(parcel);
            com.bumptech.glide.c.i(this.f11804H, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f11804H.onPostInitHandler(i10, strongBinder, bundle, i9);
            this.f11804H = null;
        } else if (i8 == 2) {
            parcel.readInt();
            Y3.a.b(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i8 != 3) {
                return false;
            }
            int i11 = parcel.readInt();
            IBinder strongBinder2 = parcel.readStrongBinder();
            S s7 = (S) Y3.a.a(parcel, S.CREATOR);
            Y3.a.b(parcel);
            AbstractC0631g abstractC0631g = this.f11804H;
            com.bumptech.glide.c.i(abstractC0631g, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            com.bumptech.glide.c.h(s7);
            AbstractC0631g.zzj(abstractC0631g, s7);
            Bundle bundle2 = s7.f11811G;
            com.bumptech.glide.c.i(this.f11804H, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f11804H.onPostInitHandler(i11, strongBinder2, bundle2, i9);
            this.f11804H = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
