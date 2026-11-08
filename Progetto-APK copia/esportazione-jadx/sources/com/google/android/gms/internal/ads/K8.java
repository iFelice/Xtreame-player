package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class K8 extends AbstractBinderC2328z5 implements T8 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Drawable f14307G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Uri f14308H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final double f14309I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f14310J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f14311K;

    public K8(Drawable drawable, Uri uri, double d6, int i8, int i9) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        this.f14307G = drawable;
        this.f14308H = uri;
        this.f14309I = d6;
        this.f14310J = i8;
        this.f14311K = i9;
    }

    public static T8 z3(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return iInterfaceQueryLocalInterface instanceof T8 ? (T8) iInterfaceQueryLocalInterface : new S8(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            R3.a aVarZzf = zzf();
            parcel2.writeNoException();
            A5.e(parcel2, aVarZzf);
            return true;
        }
        if (i8 == 2) {
            parcel2.writeNoException();
            A5.d(parcel2, this.f14308H);
            return true;
        }
        if (i8 == 3) {
            parcel2.writeNoException();
            parcel2.writeDouble(this.f14309I);
            return true;
        }
        if (i8 == 4) {
            parcel2.writeNoException();
            parcel2.writeInt(this.f14310J);
            return true;
        }
        if (i8 != 5) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(this.f14311K);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final double zzb() {
        return this.f14309I;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final int zzc() {
        return this.f14311K;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final int zzd() {
        return this.f14310J;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final Uri zze() {
        return this.f14308H;
    }

    @Override // com.google.android.gms.internal.ads.T8
    public final R3.a zzf() {
        return new R3.b(this.f14307G);
    }
}
