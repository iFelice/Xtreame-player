package C0;

import O0.C0292p;
import O0.C0296u;
import java.io.IOException;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements p117p0.u, InterfaceC3172j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C0292p f1318G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0296u f1319H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ IOException f1320I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ boolean f1321J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f1322K;

    public /* synthetic */ p(Object obj, C0292p c0292p, C0296u c0296u, IOException iOException, boolean z7) {
        this.f1322K = obj;
        this.f1318G = c0292p;
        this.f1319H = c0296u;
        this.f1320I = iOException;
        this.f1321J = z7;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        O0.D d6 = (O0.D) this.f1322K;
        ((O0.E) obj).s(d6.f5030a, d6.f5031b, this.f1318G, this.f1319H, this.f1320I, this.f1321J);
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        F f8 = (F) ((InterfaceC0078c) obj);
        f8.getClass();
        f8.f1275w = this.f1319H.f5250a;
    }
}
