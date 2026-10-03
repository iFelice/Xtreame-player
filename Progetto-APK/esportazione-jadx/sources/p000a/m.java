package p000a;

import A0.O;
import C6.a;
import D.h;
import D.i;
import D.v;
import D.w;
import D.x;
import E.d;
import E.e;
import F2.G;
import J3.k;
import J6.r;
import N.InterfaceC0265n;
import S1.g;
import U4.b;
import Y.AbstractActivityC0409v;
import Y.E;
import Z3.C;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.window.OnBackInvokedDispatcher;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p016c.f;
import p032e0.A;
import p032e0.B;
import p032e0.H;
import p032e0.InterfaceC2978f;
import p032e0.K;
import p032e0.L;
import p032e0.o;
import p040f0.c;
import p096m2.u;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class m extends h implements L, InterfaceC2978f, g, y, f, d, e, v, w, InterfaceC0265n {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final k f8577H = new k(1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final u f8578I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final o f8579J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final S1.f f8580K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public K f8581L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final x f8582M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final l f8583N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final o f8584O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final h f8585P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final CopyOnWriteArrayList f8586Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final CopyOnWriteArrayList f8587R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final CopyOnWriteArrayList f8588S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final CopyOnWriteArrayList f8589T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final CopyOnWriteArrayList f8590U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f8591V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f8592W;

    /* JADX WARN: Type inference failed for: r7v0, types: [a.c] */
    public m() {
        int i8 = 0;
        this.f8578I = new u(new b(this, i8));
        o oVar = new o(this);
        this.f8579J = oVar;
        S1.f fVarW = G.w(this);
        this.f8580K = fVarW;
        this.f8582M = new x(new f(this, i8));
        final AbstractActivityC0409v abstractActivityC0409v = (AbstractActivityC0409v) this;
        l lVar = new l(abstractActivityC0409v);
        this.f8583N = lVar;
        this.f8584O = new o(lVar, new a() { // from class: a.c
            @Override // C6.a
            public final Object invoke() {
                abstractActivityC0409v.reportFullyDrawn();
                return null;
            }
        });
        new AtomicInteger();
        this.f8585P = new h(abstractActivityC0409v);
        this.f8586Q = new CopyOnWriteArrayList();
        this.f8587R = new CopyOnWriteArrayList();
        this.f8588S = new CopyOnWriteArrayList();
        this.f8589T = new CopyOnWriteArrayList();
        this.f8590U = new CopyOnWriteArrayList();
        this.f8591V = false;
        this.f8592W = false;
        int i9 = Build.VERSION.SDK_INT;
        oVar.a(new i(abstractActivityC0409v, i8));
        oVar.a(new i(abstractActivityC0409v, 1));
        oVar.a(new i(abstractActivityC0409v, 2));
        fVarW.a();
        B.b(this);
        if (i9 <= 23) {
            p pVar = new p();
            pVar.f8604G = this;
            oVar.a(pVar);
        }
        fVarW.f6394b.c("android:support:activity-result", new d(this, i8));
        i(new e(abstractActivityC0409v, i8));
    }

    @Override // p032e0.InterfaceC2978f
    public final c a() {
        c cVar = new c();
        Application application = getApplication();
        LinkedHashMap linkedHashMap = cVar.f25133a;
        if (application != null) {
            linkedHashMap.put(H.f24728J, getApplication());
        }
        linkedHashMap.put(B.f24713G, this);
        linkedHashMap.put(B.f24714H, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(B.f24715I, getIntent().getExtras());
        }
        return cVar;
    }

    @Override // p032e0.L
    public final K c() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f8581L == null) {
            k kVar = (k) getLastNonConfigurationInstance();
            if (kVar != null) {
                this.f8581L = kVar.f8572a;
            }
            if (this.f8581L == null) {
                this.f8581L = new K();
            }
        }
        return this.f8581L;
    }

    @Override // S1.g
    public final S1.e d() {
        return this.f8580K.f6394b;
    }

    @Override // p032e0.m
    public final o h() {
        return this.f8579J;
    }

    public final void i(p008b.a aVar) {
        k kVar = this.f8577H;
        kVar.getClass();
        if (((Context) kVar.f4153H) != null) {
            aVar.a();
        }
        ((Set) kVar.f4152G).add(aVar);
    }

    public final void j(E e8) {
        u uVar = this.f8578I;
        ((CopyOnWriteArrayList) uVar.f27279I).remove(e8);
        O.I(((Map) uVar.f27280J).remove(e8));
        ((Runnable) uVar.f27278H).run();
    }

    public final void k(Y.B b8) {
        this.f8586Q.remove(b8);
    }

    public final void l(Y.B b8) {
        this.f8589T.remove(b8);
    }

    public final void m(Y.B b8) {
        this.f8590U.remove(b8);
    }

    public final void n(Y.B b8) {
        this.f8587R.remove(b8);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i8, int i9, Intent intent) {
        if (this.f8585P.a(i8, i9, intent)) {
            return;
        }
        super.onActivityResult(i8, i9, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f8582M.b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.f8586Q.iterator();
        while (it.hasNext()) {
            ((M.a) it.next()).accept(configuration);
        }
    }

    @Override // D.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f8580K.b(bundle);
        k kVar = this.f8577H;
        kVar.getClass();
        kVar.f4153H = this;
        Iterator it = ((Set) kVar.f4152G).iterator();
        while (it.hasNext()) {
            ((p008b.a) it.next()).a();
        }
        super.onCreate(bundle);
        int i8 = A.f24712G;
        b.c0(this);
        int i9 = J.a.f4044a;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            if (i10 < 32) {
                return;
            }
            String str = Build.VERSION.CODENAME;
            q0.g(str, "CODENAME");
            if (!J.a.a("Tiramisu", str)) {
                return;
            }
        }
        x xVar = this.f8582M;
        OnBackInvokedDispatcher onBackInvokedDispatcherA = j.a(this);
        xVar.getClass();
        q0.h(onBackInvokedDispatcherA, "invoker");
        xVar.f8624f = onBackInvokedDispatcherA;
        xVar.c();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i8, Menu menu) {
        if (i8 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i8, menu);
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f8578I.f27279I).iterator();
        while (it.hasNext()) {
            ((E) it.next()).f7699a.j();
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i8, MenuItem menuItem) {
        if (super.onMenuItemSelected(i8, menuItem)) {
            return true;
        }
        if (i8 == 0) {
            return this.f8578I.K();
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z7, Configuration configuration) {
        this.f8591V = true;
        try {
            super.onMultiWindowModeChanged(z7, configuration);
            this.f8591V = false;
            for (M.a aVar : this.f8589T) {
                q0.h(configuration, "newConfig");
                aVar.accept(new i(z7));
            }
        } catch (Throwable th) {
            this.f8591V = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.f8588S.iterator();
        while (it.hasNext()) {
            ((M.a) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i8, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.f8578I.f27279I).iterator();
        while (it.hasNext()) {
            ((E) it.next()).f7699a.p();
        }
        super.onPanelClosed(i8, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z7, Configuration configuration) {
        this.f8592W = true;
        try {
            super.onPictureInPictureModeChanged(z7, configuration);
            this.f8592W = false;
            for (M.a aVar : this.f8590U) {
                q0.h(configuration, "newConfig");
                aVar.accept(new x(z7));
            }
        } catch (Throwable th) {
            this.f8592W = false;
            throw th;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i8, View view, Menu menu) {
        if (i8 != 0) {
            return true;
        }
        super.onPreparePanel(i8, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.f8578I.f27279I).iterator();
        while (it.hasNext()) {
            ((E) it.next()).f7699a.s();
        }
        return true;
    }

    @Override // android.app.Activity, D.a
    public void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        if (this.f8585P.a(i8, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i8, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        k kVar;
        K k8 = this.f8581L;
        if (k8 == null && (kVar = (k) getLastNonConfigurationInstance()) != null) {
            k8 = kVar.f8572a;
        }
        if (k8 == null) {
            return null;
        }
        k kVar2 = new k();
        kVar2.f8572a = k8;
        return kVar2;
    }

    @Override // D.h, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        o oVar = this.f8579J;
        if (oVar instanceof o) {
            oVar.h();
        }
        super.onSaveInstanceState(bundle);
        this.f8580K.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i8) {
        super.onTrimMemory(i8);
        Iterator it = this.f8587R.iterator();
        while (it.hasNext()) {
            ((M.a) it.next()).accept(Integer.valueOf(i8));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (r.m()) {
                r.b("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            this.f8584O.a();
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        C.k(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        q0.h(decorView, "<this>");
        decorView.setTag(R.id.view_tree_view_model_store_owner, this);
        E3.f.y(getWindow().getDecorView(), this);
        com.bumptech.glide.d.p(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        q0.h(decorView2, "<this>");
        decorView2.setTag(R.id.report_drawn, this);
        View decorView3 = getWindow().getDecorView();
        l lVar = this.f8583N;
        if (!lVar.f8575I) {
            lVar.f8575I = true;
            decorView3.getViewTreeObserver().addOnDrawListener(lVar);
        }
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i8) {
        super.startActivityForResult(intent, i8);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i8, Intent intent, int i9, int i10, int i11) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i8, intent, i9, i10, i11);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i8, Bundle bundle) {
        super.startActivityForResult(intent, i8, bundle);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i8, Intent intent, int i9, int i10, int i11, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i8, intent, i9, i10, i11, bundle);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z7) {
        if (this.f8591V) {
            return;
        }
        Iterator it = this.f8589T.iterator();
        while (it.hasNext()) {
            ((M.a) it.next()).accept(new i(z7));
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z7) {
        if (this.f8592W) {
            return;
        }
        Iterator it = this.f8590U.iterator();
        while (it.hasNext()) {
            ((M.a) it.next()).accept(new x(z7));
        }
    }
}
