package p000a;

import F2.G;
import S1.e;
import S1.f;
import S1.g;
import Z3.C;
import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import com.bumptech.glide.d;
import p032e0.EnumC2981i;
import p032e0.m;
import p032e0.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class n extends Dialog implements m, y, g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public o f8593G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final f f8594H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final x f8595I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Context context, int i8) {
        super(context, i8);
        q0.h(context, "context");
        this.f8594H = G.w(this);
        this.f8595I = new x(new b(this, 2));
    }

    public static void a(n nVar) {
        q0.h(nVar, "this$0");
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        q0.h(view, "view");
        c();
        super.addContentView(view, layoutParams);
    }

    public final o b() {
        o oVar = this.f8593G;
        if (oVar != null) {
            return oVar;
        }
        o oVar2 = new o(this);
        this.f8593G = oVar2;
        return oVar2;
    }

    public final void c() {
        Window window = getWindow();
        q0.e(window);
        View decorView = window.getDecorView();
        q0.g(decorView, "window!!.decorView");
        C.k(decorView, this);
        Window window2 = getWindow();
        q0.e(window2);
        View decorView2 = window2.getDecorView();
        q0.g(decorView2, "window!!.decorView");
        d.p(decorView2, this);
        Window window3 = getWindow();
        q0.e(window3);
        View decorView3 = window3.getDecorView();
        q0.g(decorView3, "window!!.decorView");
        E3.f.y(decorView3, this);
    }

    @Override // S1.g
    public final e d() {
        return this.f8594H.f6394b;
    }

    @Override // p032e0.m
    public final o h() {
        return b();
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f8595I.b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            q0.g(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            x xVar = this.f8595I;
            xVar.getClass();
            xVar.f8624f = onBackInvokedDispatcher;
            xVar.c();
        }
        this.f8594H.b(bundle);
        b().f(EnumC2981i.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        q0.g(bundleOnSaveInstanceState, "super.onSaveInstanceState()");
        this.f8594H.c(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        b().f(EnumC2981i.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        b().f(EnumC2981i.ON_DESTROY);
        this.f8593G = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        q0.h(view, "view");
        c();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        q0.h(view, "view");
        c();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setContentView(int i8) {
        c();
        super.setContentView(i8);
    }
}
