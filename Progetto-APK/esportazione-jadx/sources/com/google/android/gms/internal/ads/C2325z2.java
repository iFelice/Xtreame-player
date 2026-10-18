package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.z2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2325z2 implements T1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f22110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f22111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f22112c;

    public C2325z2(ArrayList arrayList) {
        this.f22110a = Collections.unmodifiableList(new ArrayList(arrayList));
        int size = arrayList.size();
        this.f22111b = new long[size + size];
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            C2013t2 c2013t2 = (C2013t2) arrayList.get(i8);
            long[] jArr = this.f22111b;
            int i9 = i8 + i8;
            jArr[i9] = c2013t2.f21030b;
            jArr[i9 + 1] = c2013t2.f21031c;
        }
        long[] jArr2 = this.f22111b;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f22112c = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override // com.google.android.gms.internal.ads.T1
    public final int zza() {
        return this.f22112c.length;
    }

    @Override // com.google.android.gms.internal.ads.T1
    public final long zzb(int i8) {
        p113o3.r.J(i8 >= 0);
        long[] jArr = this.f22112c;
        p113o3.r.J(i8 < jArr.length);
        return jArr[i8];
    }

    @Override // com.google.android.gms.internal.ads.T1
    public final ArrayList zzc(long j8) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i8 = 0;
        while (true) {
            List list = this.f22110a;
            if (i8 >= list.size()) {
                break;
            }
            int i9 = i8 + i8;
            long[] jArr = this.f22111b;
            if (jArr[i9] <= j8 && j8 < jArr[i9 + 1]) {
                C2013t2 c2013t2 = (C2013t2) list.get(i8);
                C1063ak c1063ak = c2013t2.f21029a;
                if (c1063ak.f17943e == -3.4028235E38f) {
                    arrayList2.add(c2013t2);
                } else {
                    arrayList.add(c1063ak);
                }
            }
            i8++;
        }
        Collections.sort(arrayList2, new C2065u2(1));
        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
            C1063ak c1063ak2 = ((C2013t2) arrayList2.get(i10)).f21029a;
            arrayList.add(new C1063ak(c1063ak2.f17939a, c1063ak2.f17940b, c1063ak2.f17941c, c1063ak2.f17942d, (-1) - i10, 1, c1063ak2.f17945g, c1063ak2.f17946h, c1063ak2.f17947i, c1063ak2.f17950l, c1063ak2.f17951m, c1063ak2.f17948j, c1063ak2.f17949k, c1063ak2.f17952n, c1063ak2.f17953o));
        }
        return arrayList;
    }
}
