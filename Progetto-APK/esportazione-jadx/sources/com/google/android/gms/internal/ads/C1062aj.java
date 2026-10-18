package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p090l3.C3099q;
import p167v3.CallableC3196d;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1062aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Kw f17909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p120p3.a f17910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ApplicationInfo f17911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f17913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PackageInfo f17914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final EJ f17915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f17916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C2160vu f17917i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p113o3.K f17918j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Yv f17919k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1839pk f17920l;

    public C1062aj(Kw kw, p120p3.a aVar, ApplicationInfo applicationInfo, String str, ArrayList arrayList, PackageInfo packageInfo, EJ ej, p113o3.L l4, String str2, C2160vu c2160vu, Yv yv, C1839pk c1839pk) {
        this.f17909a = kw;
        this.f17910b = aVar;
        this.f17911c = applicationInfo;
        this.f17912d = str;
        this.f17913e = arrayList;
        this.f17914f = packageInfo;
        this.f17915g = ej;
        this.f17916h = str2;
        this.f17917i = c2160vu;
        this.f17918j = l4;
        this.f17919k = yv;
        this.f17920l = c1839pk;
    }

    public final Fw a() {
        Bundle bundle = new Bundle();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue()) {
            Bundle bundle2 = this.f17919k.f17692s;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        this.f17920l.zza();
        Fw fwC = new C1950rs(this.f17909a, Iw.SIGNALS, null, Gw.f13664d, Collections.emptyList(), this.f17917i.a(bundle, new Bundle())).c();
        return this.f17909a.a(Iw.REQUEST_PARCEL, fwC, (D4.b) this.f17915g.zzb()).m(new CallableC3196d(this, fwC, bundle, 8)).c();
    }
}
