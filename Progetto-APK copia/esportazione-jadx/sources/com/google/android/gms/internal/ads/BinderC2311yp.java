package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import p113o3.C3157o;
import p113o3.C3158p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2311yp extends AbstractBinderC2328z5 implements InterfaceC0875Pc {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ AbstractC2363zp f22066G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC2311yp(AbstractC2363zp abstractC2363zp) {
        super("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
        this.f22066G = abstractC2363zp;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0875Pc
    public final void F(ParcelFileDescriptor parcelFileDescriptor) {
        this.f22066G.f22198a.b(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0875Pc
    public final void w(C3158p c3158p) {
        C2040te c2040te = this.f22066G.f22198a;
        c3158p.getClass();
        c2040te.c(new C3157o(c3158p.f27987G, c3158p.f27988H));
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) A5.a(parcel, ParcelFileDescriptor.CREATOR);
            A5.b(parcel);
            F(parcelFileDescriptor);
        } else {
            if (i8 != 2) {
                return false;
            }
            C3158p c3158p = (C3158p) A5.a(parcel, C3158p.CREATOR);
            A5.b(parcel);
            w(c3158p);
        }
        parcel2.writeNoException();
        return true;
    }
}
