package p117p0;

import S0.e;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f28018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f28019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C f28020c;

    public B(C c8, e eVar, Executor executor) {
        this.f28020c = c8;
        this.f28018a = new WeakReference(eVar);
        this.f28019b = executor;
    }
}
