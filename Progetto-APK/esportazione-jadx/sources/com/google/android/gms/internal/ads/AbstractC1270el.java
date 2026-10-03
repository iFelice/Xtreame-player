package com.google.android.gms.internal.ads;

import java.util.Locale;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.el, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1270el {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2202wk f18556a = new C2202wk(7);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2202wk f18557b = new C2202wk(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2202wk f18558c = new C2202wk(9);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f18559d = {0, 0, 0, 1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f18560e = {HttpUrl.FRAGMENT_ENCODE_SET, "A", "B", "C"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C2202wk f18561f = new C2202wk(11);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C2202wk f18562g = new C2202wk(15);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C2202wk f18563h = new C2202wk(16);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C2202wk f18564i = new C2202wk(17);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final C2202wk f18565j = new C2202wk(19);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final C2202wk f18566k = new C2202wk(20);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final C2202wk f18567l = new C2202wk(21);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final C2202wk f18568m = new C2202wk(22);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final C2202wk f18569n = new C2202wk(23);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final C2202wk f18570o = new C2202wk(24);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final C2202wk f18571p = new C2202wk(25);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final C2202wk f18572q = new C2202wk(26);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final C2202wk f18573r = new C2202wk(27);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final C0799Jo f18574s = new C0799Jo(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final C0799Jo f18575t = new C0799Jo(1);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final C0799Jo f18576u = new C0799Jo(3);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final C0799Jo f18577v = new C0799Jo(4);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final C0799Jo f18578w = new C0799Jo(10);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final C0799Jo f18579x = new C0799Jo(11);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final C0799Jo f18580y = new C0799Jo(12);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final C0799Jo f18581z = new C0799Jo(13);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final C0799Jo f18551A = new C0799Jo(14);

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final C0799Jo f18552B = new C0799Jo(16);

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final C0799Jo f18553C = new C0799Jo(17);

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final C0799Jo f18554D = new C0799Jo(18);

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final Bw f18555E = new Bw(0);

    public static String a(int i8, boolean z7, int i9, int i10, int[] iArr, int i11) {
        Object[] objArr = new Object[5];
        objArr[0] = f18560e[i8];
        objArr[1] = Integer.valueOf(i9);
        objArr[2] = Integer.valueOf(i10);
        objArr[3] = Character.valueOf(true != z7 ? 'L' : 'H');
        objArr[4] = Integer.valueOf(i11);
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int i12 = 6;
        while (i12 > 0) {
            int i13 = i12 - 1;
            if (iArr[i13] != 0) {
                break;
            }
            i12 = i13;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb.toString();
    }
}
