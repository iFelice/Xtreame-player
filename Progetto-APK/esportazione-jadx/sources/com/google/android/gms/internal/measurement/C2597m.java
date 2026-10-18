package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2597m extends AbstractC2567h {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f23197I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f23198J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p096m2.i f23199K;

    public C2597m(C2597m c2597m) {
        super(c2597m.f23143G);
        ArrayList arrayList = new ArrayList(c2597m.f23197I.size());
        this.f23197I = arrayList;
        arrayList.addAll(c2597m.f23197I);
        ArrayList arrayList2 = new ArrayList(c2597m.f23198J.size());
        this.f23198J = arrayList2;
        arrayList2.addAll(c2597m.f23198J);
        this.f23199K = c2597m.f23199K;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567h
    public final InterfaceC2603n a(p096m2.i iVar, List list) {
        r rVar;
        p096m2.i iVarR = this.f23199K.r();
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f23197I;
            int size = arrayList.size();
            rVar = InterfaceC2603n.f23213s;
            if (i8 >= size) {
                break;
            }
            if (i8 < list.size()) {
                iVarR.z((String) arrayList.get(i8), iVar.t((InterfaceC2603n) list.get(i8)));
            } else {
                iVarR.z((String) arrayList.get(i8), rVar);
            }
            i8++;
        }
        for (InterfaceC2603n interfaceC2603n : this.f23198J) {
            InterfaceC2603n interfaceC2603nT = iVarR.t(interfaceC2603n);
            if (interfaceC2603nT instanceof C2609o) {
                interfaceC2603nT = iVarR.t(interfaceC2603n);
            }
            if (interfaceC2603nT instanceof C2555f) {
                return ((C2555f) interfaceC2603nT).f23121G;
            }
        }
        return rVar;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567h, com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return new C2597m(this);
    }

    public C2597m(String str, ArrayList arrayList, List list, p096m2.i iVar) {
        super(str);
        this.f23197I = new ArrayList();
        this.f23199K = iVar;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f23197I.add(((InterfaceC2603n) it.next()).zzi());
            }
        }
        this.f23198J = new ArrayList(list);
    }
}
