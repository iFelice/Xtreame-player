package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class Nz implements InterfaceC1556kC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f15109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f15110b = new ArrayList(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CD f15112d;

    public Nz(boolean z7) {
        this.f15109a = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void f(InterfaceC1615lJ interfaceC1615lJ) {
        interfaceC1615lJ.getClass();
        ArrayList arrayList = this.f15110b;
        if (arrayList.contains(interfaceC1615lJ)) {
            return;
        }
        arrayList.add(interfaceC1615lJ);
        this.f15111c++;
    }

    public final void i() {
        CD cd = this.f15112d;
        int i8 = Et.f13234a;
        for (int i9 = 0; i9 < this.f15111c; i9++) {
            ((InterfaceC1615lJ) this.f15110b.get(i9)).d(cd, this.f15109a);
        }
        this.f15112d = null;
    }

    public final void j(CD cd) {
        for (int i8 = 0; i8 < this.f15111c; i8++) {
            ((InterfaceC1615lJ) this.f15110b.get(i8)).getClass();
        }
    }

    public final void k(CD cd) {
        this.f15112d = cd;
        for (int i8 = 0; i8 < this.f15111c; i8++) {
            ((InterfaceC1615lJ) this.f15110b.get(i8)).g(this, cd, this.f15109a);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public /* synthetic */ Map zze() {
        return Collections.emptyMap();
    }

    public final void zzg(int i8) {
        CD cd = this.f15112d;
        int i9 = Et.f13234a;
        for (int i10 = 0; i10 < this.f15111c; i10++) {
            ((InterfaceC1615lJ) this.f15110b.get(i10)).f(cd, this.f15109a, i8);
        }
    }
}
