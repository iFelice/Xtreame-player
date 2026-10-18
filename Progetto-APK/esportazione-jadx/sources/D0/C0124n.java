package D0;

import B0.C0053i;
import android.os.Handler;

/* JADX INFO: renamed from: D0.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0124n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f1961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0125o f1962b;

    public C0124n(Handler handler, InterfaceC0125o interfaceC0125o) {
        if (interfaceC0125o != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.f1961a = handler;
        this.f1962b = interfaceC0125o;
    }

    public final void a(C0053i c0053i) {
        synchronized (c0053i) {
        }
        Handler handler = this.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0119i(this, c0053i, 1));
        }
    }
}
