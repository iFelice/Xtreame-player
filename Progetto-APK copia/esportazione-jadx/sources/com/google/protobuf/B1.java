package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class B1 extends D1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f24240c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public static List d(Object obj, int i8, long j8) {
        List list;
        List listF;
        List list2 = (List) H2.f24255c.k(obj, j8);
        if (list2.isEmpty()) {
            if (list2 instanceof A1) {
                listF = new C2972z1(i8);
            } else {
                listF = ((list2 instanceof InterfaceC2898f2) && (list2 instanceof InterfaceC2956u1)) ? ((InterfaceC2956u1) list2).f(i8) : new ArrayList(i8);
            }
            H2.s(obj, j8, listF);
            return listF;
        }
        if (f24240c.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i8);
            arrayList.addAll(list2);
            H2.s(obj, j8, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof C2)) {
                if (!(list2 instanceof InterfaceC2898f2) || !(list2 instanceof InterfaceC2956u1)) {
                    return list2;
                }
                InterfaceC2956u1 interfaceC2956u1 = (InterfaceC2956u1) list2;
                if (((AbstractC2883c) interfaceC2956u1).f24418G) {
                    return list2;
                }
                InterfaceC2956u1 interfaceC2956u1F = interfaceC2956u1.f(list2.size() + i8);
                H2.s(obj, j8, interfaceC2956u1F);
                return interfaceC2956u1F;
            }
            C2972z1 c2972z1 = new C2972z1(list2.size() + i8);
            c2972z1.addAll((C2) list2);
            H2.s(obj, j8, c2972z1);
            list = c2972z1;
        }
        return list;
    }

    @Override // com.google.protobuf.D1
    public final void a(Object obj, long j8) {
        Object objUnmodifiableList;
        List list = (List) H2.f24255c.k(obj, j8);
        if (list instanceof A1) {
            objUnmodifiableList = ((A1) list).k();
        } else {
            if (f24240c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC2898f2) && (list instanceof InterfaceC2956u1)) {
                AbstractC2883c abstractC2883c = (AbstractC2883c) ((InterfaceC2956u1) list);
                boolean z7 = abstractC2883c.f24418G;
                if (z7 && z7) {
                    abstractC2883c.f24418G = false;
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        H2.s(obj, j8, objUnmodifiableList);
    }

    @Override // com.google.protobuf.D1
    public final void b(Object obj, long j8, Object obj2) {
        List list = (List) H2.f24255c.k(obj2, j8);
        List listD = d(obj, list.size(), j8);
        int size = listD.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listD.addAll(list);
        }
        if (size > 0) {
            list = listD;
        }
        H2.s(obj, j8, list);
    }

    @Override // com.google.protobuf.D1
    public final List c(Object obj, long j8) {
        return d(obj, 10, j8);
    }
}
