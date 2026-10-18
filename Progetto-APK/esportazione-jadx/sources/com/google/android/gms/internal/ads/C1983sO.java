package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1983sO extends AbstractC2191wO implements XK {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final C1554kA f20895j = new C1554kA(new C2065u2(6));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f20896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f20897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f20898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C1620lO f20899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C2222x3 f20900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C1097bH f20901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MN f20902i;

    public C1983sO(Context context) {
        MN mn = new MN(1);
        int i8 = C1620lO.f19788u;
        C1620lO c1620lO = new C1620lO(new C1568kO(context));
        this.f20896c = new Object();
        this.f20897d = context.getApplicationContext();
        this.f20902i = mn;
        this.f20899f = c1620lO;
        this.f20901h = C1097bH.f18033b;
        boolean zE = Et.e(context);
        this.f20898e = zE;
        if (!zE && Et.f13234a >= 32) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            this.f20900g = audioManager == null ? null : new C2222x3(audioManager.getSpatializer());
        }
        boolean z7 = this.f20899f.f19793p;
    }

    public static /* bridge */ /* synthetic */ int e(int i8, int i9) {
        return (i8 == 0 || i8 != i9) ? Integer.bitCount(i8 & i9) : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public static int f(C1804p0 c1804p0, String str, boolean z7) {
        if (!TextUtils.isEmpty(str) && str.equals(c1804p0.f20374d)) {
            return 4;
        }
        String strG = g(str);
        String strG2 = g(c1804p0.f20374d);
        if (strG2 == null || strG == null) {
            return (z7 && strG2 == null) ? 1 : 0;
        }
        if (strG2.startsWith(strG) || strG.startsWith(strG2)) {
            return 3;
        }
        int i8 = Et.f13234a;
        return strG2.split("-", 2)[0].equals(strG.split("-", 2)[0]) ? 2 : 0;
    }

    public static String g(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    public static final Pair j(int i8, C2139vO c2139vO, int[][][] iArr, InterfaceC1828pO interfaceC1828pO, C2065u2 c2065u2) {
        RandomAccess randomAccessW;
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < 2; i9++) {
            if (i8 == c2139vO.f21519a[i9]) {
                C1104bO c1104bO = c2139vO.f21520b[i9];
                for (int i10 = 0; i10 < c1104bO.f18042a; i10++) {
                    C0961Ve c0961VeA = c1104bO.a(i10);
                    PA paA = interfaceC1828pO.a(i9, c0961VeA, iArr[i9][i10]);
                    int i11 = c0961VeA.f17069a;
                    boolean[] zArr = new boolean[i11];
                    int i12 = 0;
                    while (i12 < i11) {
                        int i13 = i12 + 1;
                        AbstractC1880qO abstractC1880qO = (AbstractC1880qO) paA.get(i12);
                        int iA = abstractC1880qO.a();
                        if (!zArr[i12] && iA != 0) {
                            if (iA == 1) {
                                randomAccessW = AbstractC2073uA.w(abstractC1880qO);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(abstractC1880qO);
                                for (int i14 = i13; i14 < i11; i14++) {
                                    AbstractC1880qO abstractC1880qO2 = (AbstractC1880qO) paA.get(i14);
                                    if (abstractC1880qO2.a() == 2 && abstractC1880qO.b(abstractC1880qO2)) {
                                        arrayList2.add(abstractC1880qO2);
                                        zArr[i14] = true;
                                    }
                                }
                                randomAccessW = arrayList2;
                            }
                            arrayList.add(randomAccessW);
                        }
                        i12 = i13;
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, c2065u2);
        int[] iArr2 = new int[list.size()];
        for (int i15 = 0; i15 < list.size(); i15++) {
            iArr2[i15] = ((AbstractC1880qO) list.get(i15)).f20584I;
        }
        AbstractC1880qO abstractC1880qO3 = (AbstractC1880qO) list.get(0);
        return Pair.create(new C2035tO(abstractC1880qO3.f20583H, iArr2), Integer.valueOf(abstractC1880qO3.f20582G));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2191wO
    public final Pair a(C2139vO c2139vO, int[][][] iArr, int[] iArr2) {
        C1620lO c1620lO;
        int i8;
        boolean z7;
        String str;
        int[] iArr3;
        int length;
        C1258eO c1258eOB;
        C2222x3 c2222x3;
        synchronized (this.f20896c) {
            try {
                c1620lO = this.f20899f;
                if (c1620lO.f19793p && Et.f13234a >= 32 && (c2222x3 = this.f20900g) != null) {
                    Looper looperMyLooper = Looper.myLooper();
                    p113o3.r.x(looperMyLooper);
                    c2222x3.b(this, looperMyLooper);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i9 = 2;
        C2035tO[] c2035tOArr = new C2035tO[2];
        Pair pairJ = j(2, c2139vO, iArr, new C1773oL(5, c1620lO, iArr2), new C2065u2(9));
        int i10 = 4;
        Pair pairJ2 = pairJ == null ? j(4, c2139vO, iArr, new MN(c1620lO), new C2065u2(7)) : null;
        int i11 = 0;
        if (pairJ2 != null) {
            c2035tOArr[((Integer) pairJ2.second).intValue()] = (C2035tO) pairJ2.first;
        } else if (pairJ != null) {
            c2035tOArr[((Integer) pairJ.second).intValue()] = (C2035tO) pairJ.first;
        }
        int i12 = 0;
        while (true) {
            i8 = 1;
            if (i12 >= 2) {
                z7 = false;
                break;
            }
            if (c2139vO.a(i12) == 2 && c2139vO.b(i12).f18042a > 0) {
                z7 = true;
                break;
            }
            i12++;
        }
        Pair pairJ3 = j(1, c2139vO, iArr, new C2222x3(this, c1620lO, z7, iArr2), new C2065u2(8));
        if (pairJ3 != null) {
            c2035tOArr[((Integer) pairJ3.second).intValue()] = (C2035tO) pairJ3.first;
        }
        if (pairJ3 == null) {
            str = null;
        } else {
            C2035tO c2035tO = (C2035tO) pairJ3.first;
            str = c2035tO.f21075a.a(c2035tO.f21076b[0]).f20374d;
        }
        int i13 = 3;
        Pair pairJ4 = j(3, c2139vO, iArr, new C1773oL(6, c1620lO, str), new C2065u2(10));
        if (pairJ4 != null) {
            c2035tOArr[((Integer) pairJ4.second).intValue()] = (C2035tO) pairJ4.first;
        }
        int i14 = 0;
        while (i14 < i9) {
            int iA = c2139vO.a(i14);
            if (iA != i9 && iA != i8 && iA != i13 && iA != i10) {
                C1104bO c1104bOB = c2139vO.b(i14);
                int[][] iArr4 = iArr[i14];
                int i15 = 0;
                C0961Ve c0961Ve = null;
                int i16 = 0;
                C1516jO c1516jO = null;
                while (i15 < c1104bOB.f18042a) {
                    C0961Ve c0961VeA = c1104bOB.a(i15);
                    int[] iArr5 = iArr4[i15];
                    C1516jO c1516jO2 = c1516jO;
                    while (i11 < c0961VeA.f17069a) {
                        if (Cw.g0(iArr5[i11], c1620lO.f19794q)) {
                            C1516jO c1516jO3 = new C1516jO(iArr5[i11], c0961VeA.a(i11));
                            if (c1516jO2 == null || c1516jO3.compareTo(c1516jO2) > 0) {
                                c0961Ve = c0961VeA;
                                c1516jO2 = c1516jO3;
                                i16 = i11;
                            }
                        }
                        i11++;
                    }
                    i15++;
                    c1516jO = c1516jO2;
                    i11 = 0;
                }
                c2035tOArr[i14] = c0961Ve == null ? null : new C2035tO(c0961Ve, new int[]{i16});
            }
            i14++;
            i9 = 2;
            i10 = 4;
            i8 = 1;
            i11 = 0;
            i13 = 3;
        }
        HashMap map = new HashMap();
        int i17 = 0;
        for (int i18 = 2; i17 < i18; i18 = 2) {
            C1104bO c1104bOB2 = c2139vO.b(i17);
            for (int i19 = 0; i19 < c1104bOB2.f18042a; i19++) {
                A0.O.I(c1620lO.f20477j.get(c1104bOB2.a(i19)));
            }
            i17++;
        }
        C1104bO c1104bOC = c2139vO.c();
        for (int i20 = 0; i20 < c1104bOC.f18042a; i20++) {
            A0.O.I(c1620lO.f20477j.get(c1104bOC.a(i20)));
        }
        for (int i21 = 0; i21 < 2; i21++) {
            A0.O.I(map.get(Integer.valueOf(c2139vO.a(i21))));
        }
        int i22 = 0;
        for (int i23 = 2; i22 < i23; i23 = 2) {
            C1104bO c1104bOB3 = c2139vO.b(i22);
            if (c1620lO.c(i22, c1104bOB3)) {
                c1620lO.a(i22, c1104bOB3);
                c2035tOArr[i22] = null;
            }
            i22++;
        }
        int i24 = 0;
        for (int i25 = 2; i24 < i25; i25 = 2) {
            int iA2 = c2139vO.a(i24);
            if (c1620lO.b(i24) || c1620lO.f20478k.contains(Integer.valueOf(iA2))) {
                c2035tOArr[i24] = null;
            }
            i24++;
        }
        MN mn = this.f20902i;
        c();
        PA paA = C1258eO.a(c2035tOArr);
        int i26 = 2;
        InterfaceC2087uO[] interfaceC2087uOArr = new InterfaceC2087uO[2];
        int i27 = 0;
        while (i27 < i26) {
            C2035tO c2035tO2 = c2035tOArr[i27];
            if (c2035tO2 != null && (length = (iArr3 = c2035tO2.f21076b).length) != 0) {
                if (length == 1) {
                    c1258eOB = new C1258eO(c2035tO2.f21075a, iArr3[0]);
                } else {
                    C0961Ve c0961Ve2 = c2035tO2.f21075a;
                    AbstractC2073uA abstractC2073uA = (AbstractC2073uA) paA.get(i27);
                    mn.getClass();
                    c1258eOB = MN.b(c0961Ve2, iArr3, abstractC2073uA);
                }
                interfaceC2087uOArr[i27] = c1258eOB;
            }
            i27++;
            i26 = 2;
        }
        YK[] ykArr = new YK[i26];
        for (int i28 = 0; i28 < i26; i28++) {
            ykArr[i28] = (c1620lO.b(i28) || c1620lO.f20478k.contains(Integer.valueOf(c2139vO.a(i28))) || (c2139vO.a(i28) != -2 && interfaceC2087uOArr[i28] == null)) ? null : YK.f17599a;
        }
        return Pair.create(ykArr, interfaceC2087uOArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2191wO
    public final void b() {
        C2222x3 c2222x3;
        Spatializer.OnSpatializerStateChangedListener onSpatializerStateChangedListener;
        synchronized (this.f20896c) {
            if (Et.f13234a >= 32 && (c2222x3 = this.f20900g) != null && (onSpatializerStateChangedListener = (Spatializer.OnSpatializerStateChangedListener) c2222x3.f21829J) != null && ((Handler) c2222x3.f21828I) != null) {
                ((Spatializer) c2222x3.f21827H).removeOnSpatializerStateChangedListener(onSpatializerStateChangedListener);
                ((Handler) c2222x3.f21828I).removeCallbacksAndMessages(null);
                c2222x3.f21828I = null;
                c2222x3.f21829J = null;
            }
        }
        this.f21695a = null;
        this.f21696b = null;
    }

    public final void d() {
        synchronized (this.f20896c) {
            this.f20899f.getClass();
        }
    }

    public final void h(C1568kO c1568kO) {
        boolean z7;
        C1620lO c1620lO = new C1620lO(c1568kO);
        synchronized (this.f20896c) {
            z7 = !this.f20899f.equals(c1620lO);
            this.f20899f = c1620lO;
        }
        if (z7) {
            if (c1620lO.f19793p && this.f20897d == null) {
                Zo.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            InterfaceC2243xO interfaceC2243xO = this.f21695a;
            if (interfaceC2243xO != null) {
                ((BK) interfaceC2243xO).f12326N.c(10);
            }
        }
    }

    public final void i() {
        boolean z7;
        InterfaceC2243xO interfaceC2243xO;
        C2222x3 c2222x3;
        synchronized (this.f20896c) {
            try {
                z7 = false;
                if (this.f20899f.f19793p && !this.f20898e && Et.f13234a >= 32 && (c2222x3 = this.f20900g) != null && c2222x3.f21826G) {
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z7 || (interfaceC2243xO = this.f21695a) == null) {
            return;
        }
        ((BK) interfaceC2243xO).f12326N.c(10);
    }
}
