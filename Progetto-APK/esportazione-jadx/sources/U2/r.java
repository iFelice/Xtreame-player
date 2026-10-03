package U2;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class r implements W2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6973G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p147s6.a f6974H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p147s6.a f6975I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p147s6.a f6976J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p147s6.a f6977K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p147s6.a f6978L;

    public /* synthetic */ r(p147s6.a aVar, p147s6.a aVar2, W2.b bVar, p147s6.a aVar3, p147s6.a aVar4, int i8) {
        this.f6973G = i8;
        this.f6974H = aVar;
        this.f6975I = aVar2;
        this.f6976J = bVar;
        this.f6977K = aVar3;
        this.f6978L = aVar4;
    }

    @Override // p147s6.a
    public final Object get() {
        int i8 = this.f6973G;
        p147s6.a aVar = this.f6978L;
        p147s6.a aVar2 = this.f6977K;
        p147s6.a aVar3 = this.f6976J;
        p147s6.a aVar4 = this.f6975I;
        p147s6.a aVar5 = this.f6974H;
        switch (i8) {
            case 0:
                return new q((p028d3.a) aVar5.get(), (p028d3.a) aVar4.get(), (Z2.b) aVar3.get(), (p004a3.j) aVar2.get(), (p004a3.l) aVar.get());
            case 1:
                return new Z2.a((Executor) aVar5.get(), (V2.f) aVar4.get(), (p004a3.m) aVar3.get(), (p012b3.d) aVar2.get(), (p020c3.c) aVar.get());
            default:
                return new p012b3.j((p028d3.a) aVar5.get(), (p028d3.a) aVar4.get(), (p012b3.a) aVar3.get(), (p012b3.m) aVar2.get(), this.f6978L);
        }
    }
}
