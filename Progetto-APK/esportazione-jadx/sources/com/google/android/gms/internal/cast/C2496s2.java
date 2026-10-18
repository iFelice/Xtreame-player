package com.google.android.gms.internal.cast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2496s2 extends AbstractC2504u2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f22790c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    @Override // com.google.android.gms.internal.cast.AbstractC2504u2
    public final void a(Object obj, long j8) {
        Object objUnmodifiableList;
        List list = (List) W2.i(obj, j8);
        if (list instanceof InterfaceC2492r2) {
            objUnmodifiableList = ((InterfaceC2492r2) list).zzd();
        } else {
            if (f22790c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof I2) && (list instanceof InterfaceC2477n2)) {
                V1 v5 = (V1) ((InterfaceC2477n2) list);
                boolean z7 = v5.f22546G;
                if (z7 && z7) {
                    v5.f22546G = false;
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        W2.m(obj, j8, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2504u2
    public final void b(Object obj, long j8, Object obj2) {
        List list;
        List list2;
        List listZzg;
        List list3 = (List) W2.i(obj2, j8);
        int size = list3.size();
        List list4 = (List) W2.i(obj, j8);
        if (list4.isEmpty()) {
            if (list4 instanceof InterfaceC2492r2) {
                listZzg = new C2489q2(size);
            } else {
                listZzg = ((list4 instanceof I2) && (list4 instanceof InterfaceC2477n2)) ? ((InterfaceC2477n2) list4).zzg(size) : new ArrayList(size);
            }
            W2.m(obj, j8, listZzg);
            list2 = listZzg;
        } else {
            if (f22790c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                W2.m(obj, j8, arrayList);
                list = arrayList;
            } else if (list4 instanceof R2) {
                C2489q2 c2489q2 = new C2489q2(list4.size() + size);
                c2489q2.addAll(c2489q2.f22786H.size(), (R2) list4);
                W2.m(obj, j8, c2489q2);
                list = c2489q2;
            } else if ((list4 instanceof I2) && (list4 instanceof InterfaceC2477n2)) {
                InterfaceC2477n2 interfaceC2477n2 = (InterfaceC2477n2) list4;
                if (!((V1) interfaceC2477n2).f22546G) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    InterfaceC2477n2 interfaceC2477n2Zzg = interfaceC2477n2.zzg(list4.size() + size);
                    W2.m(obj, j8, interfaceC2477n2Zzg);
                    list2 = interfaceC2477n2Zzg;
                }
            }
            list2 = list;
        }
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        W2.m(obj, j8, list3);
    }
}
