package com.google.android.gms.internal.ads;

import J6.r;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3097p;
import p090l3.C3099q;
import p113o3.C3159q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Pe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0877Pe {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final boolean f15394r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f15395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p120p3.a f15397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final U7 f15398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final W7 f15399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p086l.D f15400f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long[] f15401g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String[] f15402h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15403i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f15404j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15405k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f15406l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f15407m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AbstractC0699De f15408n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f15409o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f15410p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f15411q;

    static {
        f15394r = C3097p.f26618f.f26623e.nextInt(100) < ((Integer) C3099q.f26624d.f26627c.a(Q7.Vb)).intValue();
    }

    public C0877Pe(Context context, p120p3.a aVar, String str, W7 w7, U7 u7) {
        F0.u uVar = new F0.u(1);
        uVar.c("min_1", Double.MIN_VALUE, 1.0d);
        uVar.c("1_5", 1.0d, 5.0d);
        uVar.c("5_10", 5.0d, 10.0d);
        uVar.c("10_20", 10.0d, 20.0d);
        uVar.c("20_30", 20.0d, 30.0d);
        uVar.c("30_max", 30.0d, Double.MAX_VALUE);
        this.f15400f = new p086l.D(uVar);
        this.f15403i = false;
        this.f15404j = false;
        this.f15405k = false;
        this.f15406l = false;
        this.f15411q = -1L;
        this.f15395a = context;
        this.f15397c = aVar;
        this.f15396b = str;
        this.f15399e = w7;
        this.f15398d = u7;
        String str2 = (String) C3099q.f26624d.f26627c.a(Q7.f15977y);
        if (str2 == null) {
            this.f15402h = new String[0];
            this.f15401g = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, ",");
        int length = strArrSplit.length;
        this.f15402h = new String[length];
        this.f15401g = new long[length];
        for (int i8 = 0; i8 < strArrSplit.length; i8++) {
            try {
                this.f15401g[i8] = Long.parseLong(strArrSplit[i8]);
            } catch (NumberFormatException e8) {
                p120p3.h.h("Unable to parse frame hash target time number.", e8);
                this.f15401g[i8] = -1;
            }
        }
    }

    public final void a(AbstractC0699De abstractC0699De) {
        W7 w7 = this.f15399e;
        S3.e.v(w7, this.f15398d, "vpc2");
        this.f15403i = true;
        w7.b("vpn", abstractC0699De.r());
        this.f15408n = abstractC0699De;
    }

    public final void b() {
        this.f15407m = true;
        if (!this.f15404j || this.f15405k) {
            return;
        }
        S3.e.v(this.f15399e, this.f15398d, "vfp2");
        this.f15405k = true;
    }

    public final void c() {
        Bundle bundleU;
        if (!f15394r || this.f15409o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f15396b);
        bundle.putString("player", this.f15408n.r());
        p086l.D d6 = this.f15400f;
        ArrayList<C3159q> arrayList = new ArrayList(((String[]) d6.f26082c).length);
        int i8 = 0;
        while (true) {
            String[] strArr = (String[]) d6.f26082c;
            if (i8 >= strArr.length) {
                break;
            }
            String str = strArr[i8];
            double[] dArr = (double[]) d6.f26084e;
            double[] dArr2 = (double[]) d6.f26083d;
            int[] iArr = (int[]) d6.f26085f;
            double d8 = dArr[i8];
            double d9 = dArr2[i8];
            int i9 = iArr[i8];
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new C3159q(str, d8, d9, ((double) i9) / ((double) d6.f26081b), i9));
            i8++;
            arrayList = arrayList2;
            bundle = bundle;
        }
        Bundle bundle2 = bundle;
        for (C3159q c3159q : arrayList) {
            String strValueOf = String.valueOf(c3159q.f27989a);
            bundle2.putString("fps_c_".concat(strValueOf), Integer.toString(c3159q.f27993e));
            String strValueOf2 = String.valueOf(c3159q.f27989a);
            bundle2.putString("fps_p_".concat(strValueOf2), Double.toString(c3159q.f27992d));
        }
        int i10 = 0;
        while (true) {
            long[] jArr = this.f15401g;
            if (i10 >= jArr.length) {
                break;
            }
            String str2 = this.f15402h[i10];
            if (str2 != null) {
                bundle2.putString("fh_".concat(Long.valueOf(jArr[i10]).toString()), str2);
            }
            i10++;
        }
        final p113o3.O o4 = p083k3.l.f25980A.f25983c;
        String str3 = this.f15397c.f28196G;
        o4.getClass();
        bundle2.putString("device", p113o3.O.G());
        J7 j8 = Q7.f15777a;
        C3099q c3099q = C3099q.f26624d;
        bundle2.putString("eids", TextUtils.join(",", c3099q.f26625a.b()));
        boolean zIsEmpty = bundle2.isEmpty();
        final Context context = this.f15395a;
        if (zIsEmpty) {
            p120p3.h.b("Empty or null bundle.");
        } else {
            final String str4 = (String) c3099q.f26627c.a(Q7.P9);
            boolean andSet = o4.f27928d.getAndSet(true);
            AtomicReference atomicReference = o4.f27927c;
            if (!andSet) {
                SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: o3.M
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str5) {
                        o4.f27927c.set(r.u(context, str4));
                    }
                };
                if (TextUtils.isEmpty(str4)) {
                    bundleU = Bundle.EMPTY;
                } else {
                    PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                    bundleU = J6.r.u(context, str4);
                }
                atomicReference.set(bundleU);
            }
            bundle2.putAll((Bundle) atomicReference.get());
        }
        p120p3.d dVar = C3097p.f26618f.f26619a;
        p120p3.d.n(context, str3, bundle2, new p096m2.c(14, context, str3));
        this.f15409o = true;
    }

    public final void d(AbstractC0699De abstractC0699De) {
        if (this.f15405k && !this.f15406l) {
            if (p113o3.I.m() && !this.f15406l) {
                p113o3.I.k("VideoMetricsMixin first frame");
            }
            S3.e.v(this.f15399e, this.f15398d, "vff2");
            this.f15406l = true;
        }
        p083k3.l.f25980A.f25990j.getClass();
        long jNanoTime = System.nanoTime();
        if (this.f15407m && this.f15410p && this.f15411q != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L) / (jNanoTime - this.f15411q);
            p086l.D d6 = this.f15400f;
            d6.f26081b++;
            int i8 = 0;
            while (true) {
                double[] dArr = (double[]) d6.f26084e;
                if (i8 >= dArr.length) {
                    break;
                }
                double d8 = dArr[i8];
                if (d8 <= nanos && nanos < ((double[]) d6.f26083d)[i8]) {
                    int[] iArr = (int[]) d6.f26085f;
                    iArr[i8] = iArr[i8] + 1;
                }
                if (nanos < d8) {
                    break;
                } else {
                    i8++;
                }
            }
        }
        this.f15410p = this.f15407m;
        this.f15411q = jNanoTime;
        long jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15985z)).longValue();
        long j8 = abstractC0699De.j();
        int i9 = 0;
        while (true) {
            String[] strArr = this.f15402h;
            if (i9 >= strArr.length) {
                return;
            }
            if (strArr[i9] == null && jLongValue > Math.abs(j8 - this.f15401g[i9])) {
                int i10 = 8;
                Bitmap bitmap = abstractC0699De.getBitmap(8, 8);
                long j9 = 63;
                long j10 = 0;
                int i11 = 0;
                while (i11 < i10) {
                    int i12 = 0;
                    while (i12 < i10) {
                        int pixel = bitmap.getPixel(i12, i11);
                        j10 |= (Color.green(pixel) + (Color.red(pixel) + Color.blue(pixel)) > 128 ? 1L : 0L) << ((int) j9);
                        j9--;
                        i12++;
                        i10 = 8;
                    }
                    i11++;
                    i10 = 8;
                }
                strArr[i9] = String.format("%016X", Long.valueOf(j10));
                return;
            }
            i9++;
        }
    }
}
