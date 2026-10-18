package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class LO {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C2065u2 f14504g = new C2065u2(13);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C2065u2 f14505h = new C2065u2(14);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14511f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KO[] f14507b = new KO[5];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f14506a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14508c = -1;

    public final float a() {
        int i8 = this.f14508c;
        ArrayList arrayList = this.f14506a;
        if (i8 != 0) {
            Collections.sort(arrayList, f14505h);
            this.f14508c = 0;
        }
        float f8 = this.f14510e;
        int i9 = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            float f9 = 0.5f * f8;
            KO ko = (KO) arrayList.get(i10);
            i9 += ko.f14375b;
            if (i9 >= f9) {
                return ko.f14376c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((KO) arrayList.get(arrayList.size() - 1)).f14376c;
    }

    public final void b(int i8, float f8) {
        KO ko;
        int i9 = this.f14508c;
        ArrayList arrayList = this.f14506a;
        if (i9 != 1) {
            Collections.sort(arrayList, f14504g);
            this.f14508c = 1;
        }
        int i10 = this.f14511f;
        KO[] koArr = this.f14507b;
        if (i10 > 0) {
            int i11 = i10 - 1;
            this.f14511f = i11;
            ko = koArr[i11];
        } else {
            ko = new KO();
        }
        int i12 = this.f14509d;
        this.f14509d = i12 + 1;
        ko.f14374a = i12;
        ko.f14375b = i8;
        ko.f14376c = f8;
        arrayList.add(ko);
        this.f14510e += i8;
        while (true) {
            int i13 = this.f14510e;
            if (i13 <= 2000) {
                return;
            }
            int i14 = i13 - 2000;
            KO ko2 = (KO) arrayList.get(0);
            int i15 = ko2.f14375b;
            if (i15 <= i14) {
                this.f14510e -= i15;
                arrayList.remove(0);
                int i16 = this.f14511f;
                if (i16 < 5) {
                    this.f14511f = i16 + 1;
                    koArr[i16] = ko2;
                }
            } else {
                ko2.f14375b = i15 - i14;
                this.f14510e -= i14;
            }
        }
    }
}
