package com.google.android.gms.internal.pal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class R2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f23641a = new Object[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f23642b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Q2 f23643c;

    public final void a(Object obj, Object obj2) {
        d(this.f23642b + 1);
        AbstractC2864y4.t(obj, obj2);
        Object[] objArr = this.f23641a;
        int i8 = this.f23642b;
        int i9 = i8 + i8;
        objArr[i9] = obj;
        objArr[i9 + 1] = obj2;
        this.f23642b = i8 + 1;
    }

    public final void b(Map map) {
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet instanceof Collection) {
            d(setEntrySet.size() + this.f23642b);
        }
        for (Map.Entry entry : setEntrySet) {
            a(entry.getKey(), entry.getValue());
        }
    }

    public final Z2 c() {
        Q2 q7 = this.f23643c;
        if (q7 != null) {
            throw q7.a();
        }
        Z2 z2B = Z2.b(this.f23642b, this.f23641a, this);
        Q2 q8 = this.f23643c;
        if (q8 == null) {
            return z2B;
        }
        throw q8.a();
    }

    public final void d(int i8) {
        int i9 = i8 + i8;
        Object[] objArr = this.f23641a;
        int length = objArr.length;
        if (i9 > length) {
            int i10 = length + (length >> 1) + 1;
            if (i10 < i9) {
                int iHighestOneBit = Integer.highestOneBit(i9 - 1);
                i10 = iHighestOneBit + iHighestOneBit;
            }
            if (i10 < 0) {
                i10 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            }
            this.f23641a = Arrays.copyOf(objArr, i10);
        }
    }
}
