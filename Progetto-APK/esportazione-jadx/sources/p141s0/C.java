package p141s0;

import L1.d;
import android.net.http.HttpEngine;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p096m2.l;

/* JADX INFO: loaded from: classes.dex */
public final class C implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HttpEngine f29864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f29865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f29866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f29867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29869f;

    public C(HttpEngine httpEngine, ExecutorService executorService) {
        httpEngine.getClass();
        this.f29864a = d.k(httpEngine);
        this.f29865b = executorService;
        this.f29866c = new l(3);
        this.f29867d = 3;
        this.f29868e = 8000;
        this.f29869f = 8000;
    }

    @Override // p141s0.InterfaceC3183h
    public final InterfaceC3184i a() {
        l lVar = this.f29866c;
        return new H(this.f29864a, this.f29865b, this.f29867d, this.f29868e, this.f29869f, lVar);
    }
}
