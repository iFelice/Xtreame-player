package p149t0;

import p141s0.InterfaceC3183h;
import p141s0.InterfaceC3184i;
import p141s0.t;

/* JADX INFO: loaded from: classes.dex */
public final class f implements InterfaceC3183h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f30180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t f30181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f30182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f30183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC3183h f30184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30185f;

    @Override // p141s0.InterfaceC3183h
    public final InterfaceC3184i a() {
        InterfaceC3183h interfaceC3183h = this.f30184e;
        e eVar = null;
        InterfaceC3184i interfaceC3184iA = interfaceC3183h != null ? interfaceC3183h.a() : null;
        int i8 = this.f30185f;
        b bVar = this.f30180a;
        bVar.getClass();
        if (!this.f30183d && interfaceC3184iA != null) {
            d dVar = this.f30182c;
            if (dVar != null) {
                b bVar2 = (b) dVar.f30169J;
                bVar2.getClass();
                eVar = new e(bVar2, dVar.f30168I, dVar.f30167H);
            } else {
                eVar = new e(bVar, 5242880L, 20480);
            }
        }
        return new g(bVar, interfaceC3184iA, this.f30181b.a(), eVar, i8);
    }
}
