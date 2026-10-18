package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import java.util.Collections;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Tb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0930Tb extends C2218x {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f16661J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f16662K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f16663L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f16664M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f16665N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f16666O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f16667P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f16668Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Object f16669R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final InterfaceC0715Ef f16670S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Activity f16671T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public A2.i f16672U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ImageView f16673V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public LinearLayout f16674W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final C0864Of f16675X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public PopupWindow f16676Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public RelativeLayout f16677Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public ViewGroup f16678a0;

    static {
        p132r.g gVar = new p132r.g(7);
        Collections.addAll(gVar, "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
        Collections.unmodifiableSet(gVar);
    }

    public C0930Tb(InterfaceC0715Ef interfaceC0715Ef, C0864Of c0864Of) {
        super(14, interfaceC0715Ef, "resize");
        this.f16661J = "top-right";
        this.f16662K = true;
        this.f16663L = 0;
        this.f16664M = 0;
        this.f16665N = -1;
        this.f16666O = 0;
        this.f16667P = 0;
        this.f16668Q = -1;
        this.f16669R = new Object();
        this.f16670S = interfaceC0715Ef;
        this.f16671T = interfaceC0715Ef.zzi();
        this.f16675X = c0864Of;
    }

    public final void q(boolean z7) {
        synchronized (this.f16669R) {
            try {
                if (this.f16676Y != null) {
                    if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.da)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                        r(z7);
                    } else {
                        AbstractC1988se.f20910e.a(new p017c0.a(5, this, z7));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r(boolean z7) {
        J7 j8 = Q7.ea;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        InterfaceC0715Ef interfaceC0715Ef = this.f16670S;
        if (zBooleanValue) {
            this.f16677Z.removeView((View) interfaceC0715Ef);
            this.f16676Y.dismiss();
        } else {
            this.f16676Y.dismiss();
            this.f16677Z.removeView((View) interfaceC0715Ef);
        }
        J7 j9 = Q7.fa;
        O7 o7 = c3099q.f26627c;
        if (((Boolean) o7.a(j9)).booleanValue()) {
            View view = (View) interfaceC0715Ef;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
        ViewGroup viewGroup = this.f16678a0;
        if (viewGroup != null) {
            viewGroup.removeView(this.f16673V);
            if (((Boolean) o7.a(Q7.ga)).booleanValue()) {
                try {
                    this.f16678a0.addView((View) interfaceC0715Ef);
                    interfaceC0715Ef.n0(this.f16672U);
                } catch (IllegalStateException e8) {
                    p120p3.h.e("Unable to add webview back to view hierarchy.", e8);
                }
            } else {
                this.f16678a0.addView((View) interfaceC0715Ef);
                interfaceC0715Ef.n0(this.f16672U);
            }
        }
        if (z7) {
            o("default");
            C0864Of c0864Of = this.f16675X;
            if (c0864Of != null) {
                c0864Of.zzb();
            }
        }
        this.f16676Y = null;
        this.f16677Z = null;
        this.f16678a0 = null;
        this.f16674W = null;
    }
}
