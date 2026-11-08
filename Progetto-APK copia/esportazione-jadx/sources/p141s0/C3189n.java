package p141s0;

import android.content.Context;

/* JADX INFO: renamed from: s0.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3189n implements InterfaceC3183h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3183h f29974b;

    public C3189n(Context context) {
        this(context, new C3191p());
    }

    @Override // p141s0.InterfaceC3183h
    public final InterfaceC3184i a() {
        return new C3190o(this.f29973a, this.f29974b.a());
    }

    public C3189n(Context context, x xVar) {
        this.f29973a = context.getApplicationContext();
        this.f29974b = xVar;
    }
}
