package p090l3;

import R3.b;
import android.content.Context;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: renamed from: l3.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3085j extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d1 f26596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f26597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C3093n f26599f;

    public C3085j(C3093n c3093n, Context context, d1 d1Var, String str, BinderC1054ab binderC1054ab) {
        this.f26595b = context;
        this.f26596c = d1Var;
        this.f26597d = str;
        this.f26598e = binderC1054ab;
        this.f26599f = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26595b, "interstitial");
        return new P0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.Z1(new b(this.f26595b), this.f26596c, this.f26597d, this.f26598e, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object c() {
        return ((a1) this.f26599f.f26609a).a(this.f26595b, this.f26596c, this.f26597d, this.f26598e, 2);
    }
}
