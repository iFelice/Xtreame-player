package com.google.android.gms.internal.ads;

import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.a6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1034a6 extends AbstractBinderC2328z5 implements InterfaceC1396h6 {
    @Override // com.google.android.gms.internal.ads.InterfaceC1396h6
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1396h6
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1 && i8 != 2) {
            if (i8 == 3) {
                A5.b(parcel);
            } else if (i8 != 4 && i8 != 5) {
                return false;
            }
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1396h6
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1396h6
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1396h6
    public final void M(C3117z0 c3117z0) {
    }
}
