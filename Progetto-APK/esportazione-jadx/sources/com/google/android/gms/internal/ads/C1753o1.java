package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1753o1 extends p125q0.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f20218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f20219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f20220e;

    public C1753o1(int i8, long j8) {
        super(i8, 1);
        this.f20218c = j8;
        this.f20219d = new ArrayList();
        this.f20220e = new ArrayList();
    }

    public final C1753o1 e(int i8) {
        ArrayList arrayList = this.f20220e;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            C1753o1 c1753o1 = (C1753o1) arrayList.get(i9);
            if (c1753o1.f29448b == i8) {
                return c1753o1;
            }
        }
        return null;
    }

    public final C1805p1 f(int i8) {
        ArrayList arrayList = this.f20219d;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            C1805p1 c1805p1 = (C1805p1) arrayList.get(i9);
            if (c1805p1.f29448b == i8) {
                return c1805p1;
            }
        }
        return null;
    }

    @Override // p125q0.e
    public final String toString() {
        ArrayList arrayList = this.f20219d;
        return p125q0.e.d(this.f29448b) + " leaves: " + Arrays.toString(arrayList.toArray()) + " containers: " + Arrays.toString(this.f20220e.toArray());
    }
}
