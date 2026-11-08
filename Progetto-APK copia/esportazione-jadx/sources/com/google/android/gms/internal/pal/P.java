package com.google.android.gms.internal.pal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class P extends S {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f23621c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public static List d(Object obj, int i8, long j8) {
        List list;
        List listZzd;
        List list2 = (List) AbstractC2836v0.f24034c.f(obj, j8);
        if (list2.isEmpty()) {
            if (list2 instanceof O) {
                listZzd = new N(i8);
            } else {
                listZzd = ((list2 instanceof InterfaceC2717g0) && (list2 instanceof I)) ? ((I) list2).zzd(i8) : new ArrayList(i8);
            }
            AbstractC2836v0.q(obj, j8, listZzd);
            return listZzd;
        }
        if (f23621c.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i8);
            arrayList.addAll(list2);
            AbstractC2836v0.q(obj, j8, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof C2804r0)) {
                if (!(list2 instanceof InterfaceC2717g0) || !(list2 instanceof I)) {
                    return list2;
                }
                I i9 = (I) list2;
                if (((AbstractC2748k) i9).f23887G) {
                    return list2;
                }
                I iZzd = i9.zzd(list2.size() + i8);
                AbstractC2836v0.q(obj, j8, iZzd);
                return iZzd;
            }
            N n7 = new N(list2.size() + i8);
            n7.addAll(n7.f23606H.size(), (C2804r0) list2);
            AbstractC2836v0.q(obj, j8, n7);
            list = n7;
        }
        return list;
    }

    @Override // com.google.android.gms.internal.pal.S
    public final List a(Object obj, long j8) {
        return d(obj, 10, j8);
    }

    @Override // com.google.android.gms.internal.pal.S
    public final void b(Object obj, long j8) {
        Object objUnmodifiableList;
        List list = (List) AbstractC2836v0.f24034c.f(obj, j8);
        if (list instanceof O) {
            objUnmodifiableList = ((O) list).zze();
        } else {
            if (f23621c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC2717g0) && (list instanceof I)) {
                AbstractC2748k abstractC2748k = (AbstractC2748k) ((I) list);
                if (abstractC2748k.f23887G) {
                    abstractC2748k.f23887G = false;
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        AbstractC2836v0.q(obj, j8, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.pal.S
    public final void c(Object obj, long j8, Object obj2) {
        List list = (List) AbstractC2836v0.f24034c.f(obj2, j8);
        List listD = d(obj, list.size(), j8);
        int size = listD.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listD.addAll(list);
        }
        if (size > 0) {
            list = listD;
        }
        AbstractC2836v0.q(obj, j8, list);
    }
}
