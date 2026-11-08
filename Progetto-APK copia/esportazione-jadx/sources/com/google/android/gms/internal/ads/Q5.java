package com.google.android.gms.internal.ads;

import Y.RunnableC0394f;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import java.util.List;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Q5 extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f15557G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f15558H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f15559I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1294f8 f15560J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f15561K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f15562L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f15563M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f15564N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f15565O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f15566P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f15567Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f15568R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final String f15569S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f15570T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final boolean f15571U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final boolean f15572V;

    public Q5() {
        C1294f8 c1294f8 = new C1294f8(3, 0);
        this.f15557G = false;
        this.f15558H = false;
        this.f15560J = c1294f8;
        this.f15559I = new Object();
        this.f15562L = ((Long) AbstractC1552k8.f19589d.l()).intValue();
        this.f15563M = ((Long) AbstractC1552k8.f19586a.l()).intValue();
        this.f15564N = ((Long) AbstractC1552k8.f19590e.l()).intValue();
        this.f15565O = ((Long) AbstractC1552k8.f19588c.l()).intValue();
        J7 j8 = Q7.f15692P;
        C3099q c3099q = C3099q.f26624d;
        this.f15566P = ((Integer) c3099q.f26627c.a(j8)).intValue();
        J7 j9 = Q7.f15700Q;
        O7 o7 = c3099q.f26627c;
        this.f15567Q = ((Integer) o7.a(j9)).intValue();
        this.f15568R = ((Integer) o7.a(Q7.f15708R)).intValue();
        this.f15561K = ((Long) AbstractC1552k8.f19591f.l()).intValue();
        this.f15569S = (String) o7.a(Q7.f15724T);
        this.f15570T = ((Boolean) o7.a(Q7.f15732U)).booleanValue();
        this.f15571U = ((Boolean) o7.a(Q7.f15739V)).booleanValue();
        this.f15572V = ((Boolean) o7.a(Q7.f15747W)).booleanValue();
        setName("ContentFetchTask");
    }

    public final M5 a() {
        M5 m7;
        C1294f8 c1294f8 = this.f15560J;
        boolean z7 = this.f15572V;
        synchronized (c1294f8.f18728J) {
            try {
                m7 = null;
                if (((List) c1294f8.f18727I).isEmpty()) {
                    p120p3.h.b("Queue empty");
                } else {
                    int i8 = 0;
                    if (((List) c1294f8.f18727I).size() >= 2) {
                        int i9 = Integer.MIN_VALUE;
                        int i10 = 0;
                        for (M5 m8 : (List) c1294f8.f18727I) {
                            int i11 = m8.f14637n;
                            if (i11 > i9) {
                                i8 = i10;
                            }
                            int i12 = i11 > i9 ? i11 : i9;
                            if (i11 > i9) {
                                m7 = m8;
                            }
                            i10++;
                            i9 = i12;
                        }
                        ((List) c1294f8.f18727I).remove(i8);
                    } else {
                        m7 = (M5) ((List) c1294f8.f18727I).get(0);
                        if (z7) {
                            ((List) c1294f8.f18727I).remove(0);
                        } else {
                            m7.a();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m7;
    }

    public final N.r b(View view, M5 m7) {
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            if ((view instanceof TextView) && !(view instanceof EditText)) {
                CharSequence text = ((TextView) view).getText();
                if (!TextUtils.isEmpty(text)) {
                    m7.f(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                    return new N.r(1, 0, (Object) null);
                }
            } else {
                if ((view instanceof WebView) && !(view instanceof InterfaceC0715Ef)) {
                    WebView webView = (WebView) view;
                    synchronized (m7.f14630g) {
                        m7.f14636m++;
                    }
                    webView.post(new RunnableC0394f(this, m7, webView, globalVisibleRect));
                    return new N.r(0, 1, (Object) null);
                }
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int i8 = 0;
                    int i9 = 0;
                    for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                        N.r rVarB = b(viewGroup.getChildAt(i10), m7);
                        i8 += rVarB.f4919H;
                        i9 += rVarB.f4920I;
                    }
                    return new N.r(i8, i9, (Object) null);
                }
            }
        }
        return new N.r(0, 0, (Object) null);
    }

    public final void c() {
        synchronized (this.f15559I) {
            try {
                if (this.f15557G) {
                    p120p3.h.b("Content hash thread already started, quitting...");
                } else {
                    this.f15557G = true;
                    start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.f15559I) {
            this.f15558H = true;
            p120p3.h.b("ContentFetchThread: paused, pause = true");
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00ee */
    /* JADX WARN: Code duplicated, block: B:62:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00df A[EXC_TOP_SPLITTER, LOOP:1: B:68:0x00df->B:73:0x00df, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.Q5.run():void");
    }
}
