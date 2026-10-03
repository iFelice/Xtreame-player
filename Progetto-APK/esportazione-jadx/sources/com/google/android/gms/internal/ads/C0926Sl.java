package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0926Sl {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ImageView.ScaleType f16507k = ImageView.ScaleType.CENTER_INSIDE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p113o3.K f16508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Yv f16509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0811Kl f16510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0781Il f16511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1010Yl f16512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1117bm f16513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Executor f16514g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f16515h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final M8 f16516i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0751Gl f16517j;

    public C0926Sl(p113o3.L l4, Yv yv, C0811Kl c0811Kl, C0781Il c0781Il, C1010Yl c1010Yl, C1117bm c1117bm, Executor executor, C1936re c1936re, C0751Gl c0751Gl) {
        this.f16508a = l4;
        this.f16509b = yv;
        this.f16516i = yv.f17682i;
        this.f16510c = c0811Kl;
        this.f16511d = c0781Il;
        this.f16512e = c1010Yl;
        this.f16513f = c1117bm;
        this.f16514g = executor;
        this.f16515h = c1936re;
        this.f16517j = c0751Gl;
    }

    public static void b(RelativeLayout.LayoutParams layoutParams, int i8) {
        if (i8 == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i8 == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i8 != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    public final void a(InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm) {
        if (interfaceViewOnClickListenerC1220dm == null) {
            return;
        }
        Context context = interfaceViewOnClickListenerC1220dm.zzf().getContext();
        if (S3.e.G(context, this.f16510c.f14398a)) {
            if (!(context instanceof Activity)) {
                p120p3.h.b("Activity context is needed for policy validator.");
                return;
            }
            C1117bm c1117bm = this.f16513f;
            if (c1117bm == null || interfaceViewOnClickListenerC1220dm.zzh() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(c1117bm.a(interfaceViewOnClickListenerC1220dm.zzh(), windowManager), S3.e.y());
            } catch (C0835Mf e8) {
                p113o3.I.l("web view can not be obtained", e8);
            }
        }
    }

    public final boolean c(ViewGroup viewGroup, boolean z7) {
        View view;
        View viewG;
        if (z7) {
            viewG = this.f16511d.G();
        } else {
            C0781Il c0781Il = this.f16511d;
            synchronized (c0781Il) {
                view = c0781Il.f14036p;
            }
            viewG = view;
        }
        if (viewG == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewG.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewG.getParent()).removeView(viewG);
        }
        viewGroup.addView(viewG, ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15593C3)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }
}
