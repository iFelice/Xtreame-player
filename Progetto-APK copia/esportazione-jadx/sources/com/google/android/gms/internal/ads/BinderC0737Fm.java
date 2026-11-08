package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0737Fm extends AbstractBinderC2328z5 implements InterfaceC1777oa {
    @Override // com.google.android.gms.internal.ads.InterfaceC1777oa
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1777oa
    public final void d(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            if (i8 != 2) {
                return false;
            }
            parcel.readInt();
            A5.b(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
