package com.google.android.gms.internal.ads;

import C2.C0091g;
import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1490iz extends AbstractBinderC2328z5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0091g f19399G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1542jz f19400H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC1490iz(C1542jz c1542jz, C0091g c0091g) {
        super("com.google.android.play.core.lmd.protocol.ILmdOverlayServiceListener");
        this.f19400H = c1542jz;
        this.f19399G = c0091g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        C1854pz c1854pz;
        if (i8 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) A5.a(parcel, Bundle.CREATOR);
        A5.b(parcel);
        int i9 = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        if (string == null) {
            string = null;
        }
        this.f19399G.u(new C1284ez(i9, string));
        if (i9 != 8157 || (c1854pz = this.f19400H.f19540a) == null) {
            return true;
        }
        C1542jz.f19538c.d("unbind LMD display overlay service", new Object[0]);
        c1854pz.a(new RunnableC1026Zn(c1854pz, 17));
        return true;
    }
}
