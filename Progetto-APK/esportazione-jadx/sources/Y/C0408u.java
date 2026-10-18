package Y;

import N.InterfaceC0265n;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import java.util.concurrent.CopyOnWriteArrayList;
import p039f.AbstractActivityC3000o;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: Y.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0408u extends AbstractC2987b implements E.d, E.e, D.v, D.w, p032e0.L, p000a.y, p016c.f, S1.g, N, InterfaceC0265n {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Activity f7979M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Context f7980N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Handler f7981O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final K f7982P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0409v f7983Q;

    public C0408u(AbstractActivityC3000o abstractActivityC3000o) {
        this.f7983Q = abstractActivityC3000o;
        Handler handler = new Handler();
        this.f7982P = new K();
        this.f7979M = abstractActivityC3000o;
        this.f7980N = abstractActivityC3000o;
        this.f7981O = handler;
    }

    public final void G0(E e8) {
        p096m2.u uVar = this.f7983Q.f8578I;
        ((CopyOnWriteArrayList) uVar.f27279I).add(e8);
        ((Runnable) uVar.f27278H).run();
    }

    public final void H0(M.a aVar) {
        this.f7983Q.f8586Q.add(aVar);
    }

    public final void I0(B b8) {
        this.f7983Q.f8589T.add(b8);
    }

    public final void J0(B b8) {
        this.f7983Q.f8590U.add(b8);
    }

    public final void K0(B b8) {
        this.f7983Q.f8587R.add(b8);
    }

    public final void L0(E e8) {
        this.f7983Q.j(e8);
    }

    public final void M0(B b8) {
        this.f7983Q.k(b8);
    }

    public final void N0(B b8) {
        this.f7983Q.l(b8);
    }

    public final void O0(B b8) {
        this.f7983Q.m(b8);
    }

    public final void P0(B b8) {
        this.f7983Q.n(b8);
    }

    @Override // Y.N
    public final void a() {
        this.f7983Q.getClass();
    }

    @Override // p032e0.L
    public final p032e0.K c() {
        return this.f7983Q.c();
    }

    @Override // S1.g
    public final S1.e d() {
        return this.f7983Q.f8580K.f6394b;
    }

    @Override // p032e0.m
    public final p032e0.o h() {
        return this.f7983Q.f7986Y;
    }

    @Override // p039f.AbstractC2987b
    public final View w(int i8) {
        return this.f7983Q.findViewById(i8);
    }

    @Override // p039f.AbstractC2987b
    public final boolean x() {
        Window window = this.f7983Q.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }
}
