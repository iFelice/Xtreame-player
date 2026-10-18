package Z2;

import android.content.Context;
import java.util.concurrent.Executor;
import p004a3.l;
import p004a3.m;

/* JADX INFO: loaded from: classes.dex */
public final class d implements W2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8233G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p147s6.a f8234H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p147s6.a f8235I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p147s6.a f8236J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p147s6.a f8237K;

    public /* synthetic */ d(p147s6.a aVar, p147s6.a aVar2, W2.b bVar, p147s6.a aVar3, int i8) {
        this.f8233G = i8;
        this.f8234H = aVar;
        this.f8235I = aVar2;
        this.f8236J = bVar;
        this.f8237K = aVar3;
    }

    @Override // p147s6.a
    public final Object get() {
        int i8 = this.f8233G;
        p147s6.a aVar = this.f8237K;
        p147s6.a aVar2 = this.f8236J;
        p147s6.a aVar3 = this.f8235I;
        p147s6.a aVar4 = this.f8234H;
        switch (i8) {
            case 0:
                Context context = (Context) aVar4.get();
                p012b3.d dVar = (p012b3.d) aVar3.get();
                p004a3.a aVar5 = (p004a3.a) aVar2.get();
                return new p004a3.d(context, dVar, aVar5);
            default:
                return new l((Executor) aVar4.get(), (p012b3.d) aVar3.get(), (m) aVar2.get(), (p020c3.c) aVar.get());
        }
    }
}
