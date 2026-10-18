package E0;

import C0.I;
import java.util.ArrayList;
import p086l.C3016a;
import p141s0.InterfaceC3183h;
import p141s0.InterfaceC3184i;
import p141s0.O;

/* JADX INFO: loaded from: classes.dex */
public final class m implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3183h f2530a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final P0.g f2532c = new C3016a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2531b = 1;

    public m(InterfaceC3183h interfaceC3183h) {
        this.f2530a = interfaceC3183h;
    }

    public final p a(S0.n nVar, F0.c cVar, p096m2.i iVar, int i8, int[] iArr, R0.t tVar, int i9, long j8, boolean z7, ArrayList arrayList, s sVar, O o4, I i10) {
        InterfaceC3184i interfaceC3184iA = this.f2530a.a();
        if (o4 != null) {
            interfaceC3184iA.p(o4);
        }
        return new p(this.f2532c, nVar, cVar, iVar, i8, iArr, tVar, i9, interfaceC3184iA, j8, this.f2531b, z7, arrayList, sVar, i10);
    }
}
