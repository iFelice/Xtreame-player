package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.SystemClock;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.do, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cdo extends AbstractBinderC2328z5 implements InterfaceC1415ha {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Object f18355G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f18356H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f18357I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Ow f18358J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ C2040te f18359K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C1273eo f18360L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cdo(long j8, C2040te c2040te, C1273eo c1273eo, Ow ow, Object obj, String str) {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        this.f18355G = obj;
        this.f18356H = str;
        this.f18357I = j8;
        this.f18358J = ow;
        this.f18359K = c2040te;
        this.f18360L = c1273eo;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1415ha
    public final void a() {
        synchronized (this.f18355G) {
            C1273eo c1273eo = this.f18360L;
            String str = this.f18356H;
            p083k3.l.f25980A.f25990j.getClass();
            c1273eo.d(str, (int) (SystemClock.elapsedRealtime() - this.f18357I), HttpUrl.FRAGMENT_ENCODE_SET, true);
            this.f18360L.f18598l.c(this.f18356H);
            this.f18360L.f18601o.s(this.f18356H);
            Uw uw = this.f18360L.f18602p;
            Ow ow = this.f18358J;
            ow.e(true);
            uw.b(ow.zzm());
            this.f18359K.b(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1415ha
    public final void o(String str) {
        synchronized (this.f18355G) {
            C1273eo c1273eo = this.f18360L;
            String str2 = this.f18356H;
            p083k3.l.f25980A.f25990j.getClass();
            c1273eo.d(str2, (int) (SystemClock.elapsedRealtime() - this.f18357I), str, false);
            this.f18360L.f18598l.a(this.f18356H, "error");
            this.f18360L.f18601o.d(this.f18356H, "error");
            Uw uw = this.f18360L.f18602p;
            Ow ow = this.f18358J;
            ow.i(str);
            ow.e(false);
            uw.b(ow.zzm());
            this.f18359K.b(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 2) {
            a();
        } else {
            if (i8 != 3) {
                return false;
            }
            String string = parcel.readString();
            A5.b(parcel);
            o(string);
        }
        parcel2.writeNoException();
        return true;
    }
}
