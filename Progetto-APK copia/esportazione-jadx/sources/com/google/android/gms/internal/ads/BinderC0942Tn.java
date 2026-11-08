package com.google.android.gms.internal.ads;

import android.os.Parcel;
import p090l3.AbstractBinderC3108v;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Tn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0942Tn extends AbstractBinderC3108v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C0900Qn f16739G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0956Un f16740H;

    public BinderC0942Tn(C0956Un c0956Un, C0900Qn c0900Qn) {
        this.f16739G = c0900Qn;
        this.f16740H = c0956Un;
    }

    @Override // p090l3.InterfaceC3110w
    public final void c(C3117z0 c3117z0) {
        long j8 = this.f16740H.f16884a;
        int i8 = c3117z0.f26629G;
        C0900Qn c0900Qn = this.f16739G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("interstitial");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "onAdFailedToLoad";
        c1950rs.f20798J = Integer.valueOf(i8);
        c0900Qn.b(c1950rs);
    }

    @Override // p090l3.InterfaceC3110w
    public final void d(int i8) {
        long j8 = this.f16740H.f16884a;
        C0900Qn c0900Qn = this.f16739G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("interstitial");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "onAdFailedToLoad";
        c1950rs.f20798J = Integer.valueOf(i8);
        c0900Qn.b(c1950rs);
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzc() {
        long j8 = this.f16740H.f16884a;
        C0900Qn c0900Qn = this.f16739G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("interstitial");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "onAdClicked";
        String strD = C1950rs.d(c1950rs);
        Y9 y9 = (Y9) c0900Qn.f16134a;
        Parcel parcelJ0 = y9.j0();
        parcelJ0.writeString(strD);
        y9.O2(1, parcelJ0);
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzd() {
        long j8 = this.f16740H.f16884a;
        C0900Qn c0900Qn = this.f16739G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("interstitial");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "onAdClosed";
        c0900Qn.b(c1950rs);
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzg() {
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzh() {
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzi() {
        long j8 = this.f16740H.f16884a;
        C0900Qn c0900Qn = this.f16739G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("interstitial");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "onAdLoaded";
        c0900Qn.b(c1950rs);
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzj() {
        long j8 = this.f16740H.f16884a;
        C0900Qn c0900Qn = this.f16739G;
        c0900Qn.getClass();
        C1950rs c1950rs = new C1950rs("interstitial");
        c1950rs.f20796H = Long.valueOf(j8);
        c1950rs.f20795G = "onAdOpened";
        c0900Qn.b(c1950rs);
    }

    @Override // p090l3.InterfaceC3110w
    public final void zzk() {
    }
}
