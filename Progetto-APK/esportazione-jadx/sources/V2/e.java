package V2;

import F2.G;
import android.content.Context;
import p012b3.m;

/* JADX INFO: loaded from: classes.dex */
public final class e implements W2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7096G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p147s6.a f7097H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p147s6.a f7098I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p147s6.a f7099J;

    public /* synthetic */ e(p147s6.a aVar, G g8, G g9, int i8) {
        this.f7096G = i8;
        this.f7097H = aVar;
        this.f7098I = g8;
        this.f7099J = g9;
    }

    @Override // p147s6.a
    public final Object get() {
        int i8 = this.f7096G;
        p147s6.a aVar = this.f7099J;
        p147s6.a aVar2 = this.f7098I;
        p147s6.a aVar3 = this.f7097H;
        switch (i8) {
            case 0:
                return new d((Context) aVar3.get(), (p028d3.a) aVar2.get(), (p028d3.a) aVar.get());
            default:
                return new m(((Integer) aVar.get()).intValue(), (Context) aVar3.get(), (String) aVar2.get());
        }
    }
}
