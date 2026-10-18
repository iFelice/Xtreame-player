package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.De, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0699De extends TextureView implements InterfaceC0891Qe {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0789Je f12835G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0905Re f12836H;

    public AbstractC0699De(Context context) {
        super(context);
        this.f12835G = new C0789Je();
        this.f12836H = new C0905Re(context, this);
    }

    public void A(int i8) {
    }

    public void B(int i8) {
    }

    public void C(int i8) {
    }

    public void d(int i8) {
    }

    public void f(int i8) {
    }

    public void g(String str, String[] strArr, Integer num) {
        w(str);
    }

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public abstract long o();

    public abstract long p();

    public abstract long q();

    public abstract String r();

    public abstract void s();

    public abstract void t();

    public abstract void u(int i8);

    public abstract void v(InterfaceC0684Ce interfaceC0684Ce);

    public abstract void w(String str);

    public abstract void x();

    public abstract void y(float f8, float f9);

    public Integer z() {
        return null;
    }
}
