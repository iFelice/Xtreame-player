package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class X7 extends AbstractBinderC2328z5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p083k3.e f17381G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f17382H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f17383I;

    public X7(p083k3.e eVar, String str, String str2) {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
        this.f17381G = eVar;
        this.f17382H = str;
        this.f17383I = str2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            parcel2.writeNoException();
            parcel2.writeString(this.f17382H);
            return true;
        }
        if (i8 == 2) {
            parcel2.writeNoException();
            parcel2.writeString(this.f17383I);
            return true;
        }
        p083k3.e eVar = this.f17381G;
        if (i8 == 3) {
            R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
            A5.b(parcel);
            if (aVarJ0 != null) {
                eVar.zza((View) R3.b.v0(aVarJ0));
            }
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 4) {
            eVar.zzb();
            parcel2.writeNoException();
            return true;
        }
        if (i8 != 5) {
            return false;
        }
        eVar.zzc();
        parcel2.writeNoException();
        return true;
    }
}
