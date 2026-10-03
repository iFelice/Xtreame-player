package com.google.android.gms.internal.ads;

import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2157vr extends AbstractBinderC2328z5 implements InterfaceC0741Gb {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2000sq f21602G;

    public BinderC2157vr(C2000sq c2000sq) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
        this.f21602G = c2000sq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0741Gb
    public final void c(C3117z0 c3117z0) {
        ((Nq) this.f21602G.f20995c).R0(c3117z0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        C2000sq c2000sq = this.f21602G;
        if (i8 == 2) {
            ((Nq) c2000sq.f20995c).k();
        } else if (i8 == 3) {
            String string = parcel.readString();
            A5.b(parcel);
            ((Nq) c2000sq.f20995c).n0(0, string);
        } else {
            if (i8 != 4) {
                return false;
            }
            C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
            A5.b(parcel);
            c(c3117z0);
        }
        parcel2.writeNoException();
        return true;
    }
}
