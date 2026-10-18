package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import p113o3.C3157o;
import p113o3.C3158p;

/* JADX INFO: loaded from: classes.dex */
public final class Ro extends AbstractBinderC2328z5 implements InterfaceC0903Rc {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ So f16363G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ro(So so) {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
        this.f16363G = so;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0903Rc
    public final void F(ParcelFileDescriptor parcelFileDescriptor) {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        So so = this.f16363G;
        so.f16526a.b(new C1326fp(so.f16530e, autoCloseInputStream));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0903Rc
    public final void s1(ParcelFileDescriptor parcelFileDescriptor, C0973Wc c0973Wc) {
        this.f16363G.f16526a.b(new C1326fp(c0973Wc, new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor)));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0903Rc
    public final void w(C3158p c3158p) {
        C2040te c2040te = this.f16363G.f16526a;
        c3158p.getClass();
        c2040te.c(new C3157o(c3158p.f27987G, c3158p.f27988H));
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) A5.a(parcel, ParcelFileDescriptor.CREATOR);
            A5.b(parcel);
            F(parcelFileDescriptor);
        } else if (i8 == 2) {
            C3158p c3158p = (C3158p) A5.a(parcel, C3158p.CREATOR);
            A5.b(parcel);
            w(c3158p);
        } else {
            if (i8 != 3) {
                return false;
            }
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) A5.a(parcel, ParcelFileDescriptor.CREATOR);
            C0973Wc c0973Wc = (C0973Wc) A5.a(parcel, C0973Wc.CREATOR);
            A5.b(parcel);
            s1(parcelFileDescriptor2, c0973Wc);
        }
        parcel2.writeNoException();
        return true;
    }
}
