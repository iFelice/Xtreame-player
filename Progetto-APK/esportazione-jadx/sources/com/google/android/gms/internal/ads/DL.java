package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public final class DL {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final DL f12813d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractC2333zA f12816c;

    static {
        DL dl;
        if (Et.f13234a >= 33) {
            C2281yA c2281yA = new C2281yA();
            for (int i8 = 1; i8 <= 10; i8++) {
                c2281yA.h(Integer.valueOf(Et.n(i8)));
            }
            dl = new DL(2, c2281yA.j());
        } else {
            dl = new DL(2, 10);
        }
        f12813d = dl;
    }

    public DL(int i8, int i9) {
        this.f12814a = i8;
        this.f12815b = i9;
        this.f12816c = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DL)) {
            return false;
        }
        DL dl = (DL) obj;
        return this.f12814a == dl.f12814a && this.f12815b == dl.f12815b && Objects.equals(this.f12816c, dl.f12816c);
    }

    public final int hashCode() {
        AbstractC2333zA abstractC2333zA = this.f12816c;
        return (((this.f12814a * 31) + this.f12815b) * 31) + (abstractC2333zA == null ? 0 : abstractC2333zA.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.f12814a + ", maxChannelCount=" + this.f12815b + ", channelMasks=" + String.valueOf(this.f12816c) + "]";
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    public DL(int i8, Set set) {
        AbstractC2333zA abstractC2333zAU;
        this.f12814a = i8;
        int i9 = AbstractC2333zA.f22134I;
        if (!(set instanceof AbstractC2333zA) || (set instanceof SortedSet)) {
            Object[] array = set.toArray();
            abstractC2333zAU = AbstractC2333zA.u(array.length, array);
        } else {
            abstractC2333zAU = (AbstractC2333zA) set;
            if (abstractC2333zAU.o()) {
                Object[] array2 = set.toArray();
                abstractC2333zAU = AbstractC2333zA.u(array2.length, array2);
            }
        }
        this.f12816c = abstractC2333zAU;
        AbstractC1349gB abstractC1349gBN = abstractC2333zAU.n();
        int iMax = 0;
        while (abstractC1349gBN.hasNext()) {
            iMax = Math.max(iMax, Integer.bitCount(((Integer) abstractC1349gBN.next()).intValue()));
        }
        this.f12815b = iMax;
    }
}
