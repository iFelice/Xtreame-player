package p004a3;

import F2.G;
import V2.f;
import W2.b;
import Z2.d;
import android.content.Context;
import java.util.concurrent.Executor;
import p020c3.c;
import p147s6.a;

/* JADX INFO: loaded from: classes.dex */
public final class k implements b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f8685G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f8686H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final a f8687I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final a f8688J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final a f8689K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final a f8690L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final a f8691M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final a f8692N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final a f8693O;

    public k(a aVar, a aVar2, a aVar3, d dVar, a aVar4, a aVar5, a aVar6) {
        G g8 = p028d3.b.f24654a;
        G g9 = p028d3.b.f24655b;
        this.f8685G = aVar;
        this.f8686H = aVar2;
        this.f8687I = aVar3;
        this.f8688J = dVar;
        this.f8689K = aVar4;
        this.f8690L = aVar5;
        this.f8691M = g8;
        this.f8692N = g9;
        this.f8693O = aVar6;
    }

    @Override // p147s6.a
    public final Object get() {
        return new j((Context) this.f8685G.get(), (f) this.f8686H.get(), (p012b3.d) this.f8687I.get(), (m) this.f8688J.get(), (Executor) this.f8689K.get(), (c) this.f8690L.get(), (p028d3.a) this.f8691M.get(), (p028d3.a) this.f8692N.get(), (p012b3.c) this.f8693O.get());
    }
}
