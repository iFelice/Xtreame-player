package androidx.leanback.widget;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
public final class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f9084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f9086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f9087d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f9088e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f9089f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f9090g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f9091h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f9092i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ PagingIndicator f9093j;

    public A(PagingIndicator pagingIndicator) {
        this.f9093j = pagingIndicator;
        this.f9092i = pagingIndicator.f9152G ? 1.0f : -1.0f;
    }

    public final void a() {
        int iRound = Math.round(this.f9084a * 255.0f);
        PagingIndicator pagingIndicator = this.f9093j;
        this.f9085b = Color.argb(iRound, Color.red(pagingIndicator.f9167V), Color.green(pagingIndicator.f9167V), Color.blue(pagingIndicator.f9167V));
    }

    public final void b() {
        this.f9086c = 0.0f;
        this.f9087d = 0.0f;
        PagingIndicator pagingIndicator = this.f9093j;
        this.f9088e = pagingIndicator.f9153H;
        float f8 = pagingIndicator.f9154I;
        this.f9089f = f8;
        this.f9090g = f8 * pagingIndicator.f9173e0;
        this.f9084a = 0.0f;
        a();
    }
}
