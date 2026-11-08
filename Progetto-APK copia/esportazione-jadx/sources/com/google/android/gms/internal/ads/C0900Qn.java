package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Qn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0900Qn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Z9 f16134a;

    public C0900Qn(Z9 z9) {
        this.f16134a = z9;
    }

    public final void a(long j8) {
        C1950rs c1950rs = new C1950rs("creation");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "nativeObjectNotCreated";
        b(c1950rs);
    }

    public final void b(C1950rs c1950rs) {
        String strD = C1950rs.d(c1950rs);
        p120p3.h.f("Dispatching AFMA event on publisher webview: ".concat(strD));
        Y9 y9 = (Y9) this.f16134a;
        Parcel parcelJ0 = y9.j0();
        parcelJ0.writeString(strD);
        y9.O2(1, parcelJ0);
    }
}
