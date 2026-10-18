package com.google.android.gms.internal.atv_ads_framework;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2381d0 extends AbstractC2387g0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f22316c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2387g0
    public final void a(Object obj, long j8) {
        Object objUnmodifiableList;
        List list = (List) I0.i(obj, j8);
        if (list instanceof InterfaceC2379c0) {
            objUnmodifiableList = ((InterfaceC2379c0) list).zzd();
        } else {
            if (f22316c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC2412t0) && (list instanceof Y)) {
                F f8 = (F) ((Y) list);
                boolean z7 = f8.f22256G;
                if (z7 && z7) {
                    f8.f22256G = false;
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        I0.m(obj, j8, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2387g0
    public final void b(Object obj, long j8, Object obj2) {
        List list;
        List list2;
        List listZzg;
        List list3 = (List) I0.i(obj2, j8);
        int size = list3.size();
        List list4 = (List) I0.i(obj, j8);
        if (list4.isEmpty()) {
            if (list4 instanceof InterfaceC2379c0) {
                listZzg = new C2377b0(size);
            } else {
                listZzg = ((list4 instanceof InterfaceC2412t0) && (list4 instanceof Y)) ? ((Y) list4).zzg(size) : new ArrayList(size);
            }
            I0.m(obj, j8, listZzg);
            list2 = listZzg;
        } else {
            if (f22316c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                I0.m(obj, j8, arrayList);
                list = arrayList;
            } else if (list4 instanceof D0) {
                C2377b0 c2377b0 = new C2377b0(list4.size() + size);
                c2377b0.addAll(c2377b0.f22315H.size(), (D0) list4);
                I0.m(obj, j8, c2377b0);
                list = c2377b0;
            } else if ((list4 instanceof InterfaceC2412t0) && (list4 instanceof Y)) {
                Y y7 = (Y) list4;
                if (!((F) y7).f22256G) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    Y yZzg = y7.zzg(list4.size() + size);
                    I0.m(obj, j8, yZzg);
                    list2 = yZzg;
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
        I0.m(obj, j8, list3);
    }
}
