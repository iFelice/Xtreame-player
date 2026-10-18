package p090l3;

import R3.b;
import android.content.Context;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.InterfaceC1157cb;

/* JADX INFO: renamed from: l3.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3081h extends AbstractC3095o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f26585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d1 f26586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f26587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1157cb f26588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C3093n f26589f;

    public C3081h(C3093n c3093n, Context context, d1 d1Var, String str, BinderC1054ab binderC1054ab) {
        this.f26585b = context;
        this.f26586c = d1Var;
        this.f26587d = str;
        this.f26588e = binderC1054ab;
        this.f26589f = c3093n;
    }

    @Override // p090l3.AbstractC3095o
    public final Object a() {
        C3093n.d(this.f26585b, "app_open");
        return new P0();
    }

    @Override // p090l3.AbstractC3095o
    public final Object b(X x7) {
        return x7.Y2(new b(this.f26585b), this.f26586c, this.f26587d, this.f26588e, 243220000);
    }

    @Override // p090l3.AbstractC3095o
    public final /* bridge */ /* synthetic */ Object c() {
        return ((a1) this.f26589f.f26609a).a(this.f26585b, this.f26586c, this.f26587d, this.f26588e, 4);
    }
}
