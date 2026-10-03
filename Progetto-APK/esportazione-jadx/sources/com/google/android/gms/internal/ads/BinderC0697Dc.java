package com.google.android.gms.internal.ads;

import D0.C0129t;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Dc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0697Dc extends AbstractBinderC2328z5 {
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            return false;
        }
        p083k3.l.f25980A.f25987g.i("FlagsAccessedBeforeInitialized", new C0129t("Flags were accessed before initialized."));
        parcel2.writeNoException();
        return true;
    }
}
