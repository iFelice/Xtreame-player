package p157u0;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.chromium.net.CronetEngine;
import p096m2.l;
import p141s0.InterfaceC3184i;
import p141s0.x;

/* JADX INFO: loaded from: classes.dex */
public final class c implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CronetEngine f30378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f30379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f30380c = new l(3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f30381d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f30382e = 8000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f30383f = 8000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f30384g = 32768;

    public c(CronetEngine cronetEngine, ExecutorService executorService) {
        this.f30378a = cronetEngine;
        this.f30379b = executorService;
    }

    @Override // p141s0.InterfaceC3183h
    public final InterfaceC3184i a() {
        this.f30378a.getClass();
        l lVar = this.f30380c;
        int i8 = this.f30384g;
        return new e(this.f30378a, this.f30379b, this.f30381d, this.f30382e, this.f30383f, lVar, i8);
    }
}
