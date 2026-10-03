package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;
import p090l3.InterfaceC3086j0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Zb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1014Zb extends NativeAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final B9 f17766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f17767b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f17768c = new ArrayList();

    public C1014Zb(B9 b9) {
        this.f17766a = b9;
        try {
            List listU = b9.u();
            if (listU != null) {
                for (Object obj : listU) {
                    T8 t8Z3 = obj instanceof IBinder ? K8.z3((IBinder) obj) : null;
                    if (t8Z3 != null) {
                        this.f17767b.add(new C1000Yb(t8Z3));
                    }
                }
            }
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
        try {
            List listG = this.f17766a.g();
            if (listG != null) {
                for (Object obj2 : listG) {
                    InterfaceC3086j0 interfaceC3086j0Z3 = obj2 instanceof IBinder ? p090l3.K0.z3((IBinder) obj2) : null;
                    if (interfaceC3086j0Z3 != null) {
                        this.f17768c.add(new com.google.android.gms.internal.atv_ads_framework.x0(interfaceC3086j0Z3));
                    }
                }
            }
        } catch (RemoteException e9) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
        }
        try {
            T8 t8Zzk = this.f17766a.zzk();
            if (t8Zzk != null) {
                new C1000Yb(t8Zzk);
            }
        } catch (RemoteException e10) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
        }
        try {
            if (this.f17766a.zzi() != null) {
                new C2218x(this.f17766a.zzi());
            }
        } catch (RemoteException e11) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e11);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String a() {
        try {
            return this.f17766a.zzo();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String b() {
        try {
            return this.f17766a.zzq();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final p043f3.p c() {
        InterfaceC3113x0 interfaceC3113x0Zzg;
        try {
            interfaceC3113x0Zzg = this.f17766a.zzg();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            interfaceC3113x0Zzg = null;
        }
        if (interfaceC3113x0Zzg != null) {
            return new p043f3.p(interfaceC3113x0Zzg);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final /* bridge */ /* synthetic */ R3.a d() {
        try {
            return this.f17766a.zzm();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordEvent(Bundle bundle) {
        try {
            this.f17766a.m1(bundle);
        } catch (RemoteException e8) {
            p120p3.h.e("Failed to record native event", e8);
        }
    }
}
