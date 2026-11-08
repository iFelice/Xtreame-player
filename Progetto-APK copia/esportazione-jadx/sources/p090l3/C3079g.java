package p090l3;

import R3.b;
import android.content.Context;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: renamed from: l3.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3079g extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d1 f26573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f26574d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C3093n f26576f;

    public C3079g(C3093n c3093n, Context context, d1 d1Var, String str, BinderC1054ab binderC1054ab) {
        this.f26572b = context;
        this.f26573c = d1Var;
        this.f26574d = str;
        this.f26575e = binderC1054ab;
        this.f26576f = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26572b, "banner");
        return new P0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.J2(new b(this.f26572b), this.f26573c, this.f26574d, this.f26575e, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object c() {
        return ((a1) this.f26576f.f26609a).a(this.f26572b, this.f26573c, this.f26574d, this.f26575e, 1);
    }
}
