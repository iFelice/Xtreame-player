package p090l3;

import R3.b;
import android.content.Context;

/* JADX INFO: renamed from: l3.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3083i extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d1 f26592c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f26593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C3093n f26594e;

    public C3083i(C3093n c3093n, Context context, d1 d1Var, String str) {
        this.f26591b = context;
        this.f26592c = d1Var;
        this.f26593d = str;
        this.f26594e = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26591b, "search");
        return new P0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.e2(new b(this.f26591b), this.f26592c, this.f26593d, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object c() {
        return ((a1) this.f26594e.f26609a).a(this.f26591b, this.f26592c, this.f26593d, null, 3);
    }
}
