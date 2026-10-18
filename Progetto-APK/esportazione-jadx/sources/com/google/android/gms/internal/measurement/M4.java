package com.google.android.gms.internal.measurement;

import Z3.C0433o;
import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class M4 extends AbstractC2567h {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f22970I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f22971J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ V1 f22972K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M4(V1 v5, boolean z7, boolean z8) {
        super("log");
        this.f22972K = v5;
        this.f22970I = z7;
        this.f22971J = z8;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567h
    public final InterfaceC2603n a(p096m2.i iVar, List list) {
        int i8;
        Cw.R1("log", 1, list);
        int size = list.size();
        r rVar = InterfaceC2603n.f23213s;
        V1 v5 = this.f22972K;
        if (size == 1) {
            ((C0433o) v5.f23020J).B(3, iVar.t((InterfaceC2603n) list.get(0)).zzi(), Collections.emptyList(), this.f22970I, this.f22971J);
            return rVar;
        }
        int iV0 = Cw.v0(iVar.t((InterfaceC2603n) list.get(0)).zzh().doubleValue());
        if (iV0 == 2) {
            i8 = 4;
        } else if (iV0 == 3) {
            i8 = 1;
        } else if (iV0 != 5) {
            i8 = iV0 != 6 ? 3 : 2;
        } else {
            i8 = 5;
        }
        String strZzi = iVar.t((InterfaceC2603n) list.get(1)).zzi();
        if (list.size() == 2) {
            ((C0433o) v5.f23020J).B(i8, strZzi, Collections.emptyList(), this.f22970I, this.f22971J);
            return rVar;
        }
        ArrayList arrayList = new ArrayList();
        for (int i9 = 2; i9 < Math.min(list.size(), 5); i9++) {
            arrayList.add(iVar.t((InterfaceC2603n) list.get(i9)).zzi());
        }
        ((C0433o) v5.f23020J).B(i8, strZzi, arrayList, this.f22970I, this.f22971J);
        return rVar;
    }
}
