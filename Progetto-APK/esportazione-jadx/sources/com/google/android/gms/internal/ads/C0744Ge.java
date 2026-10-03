package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import p090l3.C3099q;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ge, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0744Ge extends FrameLayout implements InterfaceC0684Ce {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0863Oe f13569G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final FrameLayout f13570H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final View f13571I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final W7 f13572J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final RunnableC0729Fe f13573K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f13574L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AbstractC0699De f13575M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f13576N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f13577O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f13578P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f13579Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f13580R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public long f13581S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f13582T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String[] f13583U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public Bitmap f13584V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final ImageView f13585W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f13586a0;

    public C0744Ge(Context context, InterfaceC0863Oe interfaceC0863Oe, int i8, boolean z7, W7 w7, C0849Ne c0849Ne) {
        AbstractC0699De textureViewSurfaceTextureListenerC0669Be;
        super(context);
        this.f13569G = interfaceC0863Oe;
        this.f13572J = w7;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f13570H = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        com.bumptech.glide.c.h(interfaceC0863Oe.zzj());
        C0650Aa c0650Aa = interfaceC0863Oe.zzj().f25933a;
        C0877Pe c0877Pe = new C0877Pe(context, interfaceC0863Oe.zzn(), interfaceC0863Oe.s(), w7, interfaceC0863Oe.zzk());
        if (i8 == 3) {
            textureViewSurfaceTextureListenerC0669Be = new C2353zf(context, c0877Pe);
        } else if (i8 == 2) {
            interfaceC0863Oe.l().getClass();
            textureViewSurfaceTextureListenerC0669Be = new TextureViewSurfaceTextureListenerC0975We(context, c0849Ne, interfaceC0863Oe, c0877Pe, z7);
        } else {
            textureViewSurfaceTextureListenerC0669Be = new TextureViewSurfaceTextureListenerC0669Be(context, interfaceC0863Oe, new C0877Pe(context, interfaceC0863Oe.zzn(), interfaceC0863Oe.s(), w7, interfaceC0863Oe.zzk()), z7, interfaceC0863Oe.l().b());
        }
        this.f13575M = textureViewSurfaceTextureListenerC0669Be;
        View view = new View(context);
        this.f13571I = view;
        view.setBackgroundColor(0);
        frameLayout.addView(textureViewSurfaceTextureListenerC0669Be, new FrameLayout.LayoutParams(-1, -1, 17));
        J7 j8 = Q7.f15597D;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15573A)).booleanValue()) {
            k();
        }
        this.f13585W = new ImageView(context);
        this.f13574L = ((Long) c3099q.f26627c.a(Q7.f15613F)).longValue();
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(Q7.f15589C)).booleanValue();
        this.f13579Q = zBooleanValue;
        if (w7 != null) {
            w7.b("spinner_used", true != zBooleanValue ? "0" : "1");
        }
        this.f13573K = new RunnableC0729Fe(this);
        textureViewSurfaceTextureListenerC0669Be.v(this);
    }

    public final void a(int i8, int i9, int i10, int i11) {
        if (p113o3.I.m()) {
            StringBuilder sbD = A0.O.D("Set video bounds to x:", i8, ";y:", i9, ";w:");
            sbD.append(i10);
            sbD.append(";h:");
            sbD.append(i11);
            p113o3.I.k(sbD.toString());
        }
        if (i10 == 0 || i11 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i11);
        layoutParams.setMargins(i8, i9, 0, 0);
        this.f13570H.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void b() {
        InterfaceC0863Oe interfaceC0863Oe = this.f13569G;
        if (interfaceC0863Oe.zzi() == null || !this.f13577O || this.f13578P) {
            return;
        }
        interfaceC0863Oe.zzi().getWindow().clearFlags(128);
        this.f13577O = false;
    }

    public final void c(String str, String... strArr) {
        HashMap map = new HashMap();
        AbstractC0699De abstractC0699De = this.f13575M;
        Integer numZ = abstractC0699De != null ? abstractC0699De.z() : null;
        if (numZ != null) {
            map.put("playerId", numZ.toString());
        }
        map.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.f13569G.w("onVideoEvent", map);
    }

    public final void d() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15655K1)).booleanValue()) {
            this.f13573K.a();
        }
        c("ended", new String[0]);
        b();
    }

    public final void e() {
        c("pause", new String[0]);
        b();
        this.f13576N = false;
    }

    public final void f() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15655K1)).booleanValue()) {
            RunnableC0729Fe runnableC0729Fe = this.f13573K;
            runnableC0729Fe.f13381H = false;
            p113o3.J j8 = p113o3.O.f27924l;
            j8.removeCallbacks(runnableC0729Fe);
            j8.postDelayed(runnableC0729Fe, 250L);
        }
        InterfaceC0863Oe interfaceC0863Oe = this.f13569G;
        if (interfaceC0863Oe.zzi() != null && !this.f13577O) {
            boolean z7 = (interfaceC0863Oe.zzi().getWindow().getAttributes().flags & 128) != 0;
            this.f13578P = z7;
            if (!z7) {
                interfaceC0863Oe.zzi().getWindow().addFlags(128);
                this.f13577O = true;
            }
        }
        this.f13576N = true;
    }

    public final void finalize() throws Throwable {
        try {
            this.f13573K.a();
            AbstractC0699De abstractC0699De = this.f13575M;
            if (abstractC0699De != null) {
                AbstractC1988se.f20910e.execute(new RunnableC0878Pf(abstractC0699De, 12));
            }
        } finally {
            super.finalize();
        }
    }

    public final void g() {
        AbstractC0699De abstractC0699De = this.f13575M;
        if (abstractC0699De != null && this.f13581S == 0) {
            c("canplaythrough", "duration", String.valueOf(abstractC0699De.l() / 1000.0f), "videoWidth", String.valueOf(abstractC0699De.n()), "videoHeight", String.valueOf(abstractC0699De.m()));
        }
    }

    public final void h() {
        this.f13571I.setVisibility(4);
        p113o3.O.f27924l.post(new RunnableC0714Ee(this, 0));
    }

    public final void i() {
        if (this.f13586a0 && this.f13584V != null) {
            ImageView imageView = this.f13585W;
            if (imageView.getParent() == null) {
                imageView.setImageBitmap(this.f13584V);
                imageView.invalidate();
                FrameLayout frameLayout = this.f13570H;
                frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.bringChildToFront(imageView);
            }
        }
        this.f13573K.a();
        this.f13581S = this.f13580R;
        p113o3.O.f27924l.post(new RunnableC0714Ee(this, 2));
    }

    public final void j(int i8, int i9) {
        if (this.f13579Q) {
            J7 j8 = Q7.f15605E;
            C3099q c3099q = C3099q.f26624d;
            int iMax = Math.max(i8 / ((Integer) c3099q.f26627c.a(j8)).intValue(), 1);
            int iMax2 = Math.max(i9 / ((Integer) c3099q.f26627c.a(j8)).intValue(), 1);
            Bitmap bitmap = this.f13584V;
            if (bitmap != null && bitmap.getWidth() == iMax && this.f13584V.getHeight() == iMax2) {
                return;
            }
            this.f13584V = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.f13586a0 = false;
        }
    }

    public final void k() {
        AbstractC0699De abstractC0699De = this.f13575M;
        if (abstractC0699De == null) {
            return;
        }
        TextView textView = new TextView(abstractC0699De.getContext());
        Resources resourcesB = p083k3.l.f25980A.f25987g.b();
        textView.setText(String.valueOf(resourcesB == null ? "AdMob - " : resourcesB.getString(R.string.watermark_label_prefix)).concat(abstractC0699De.r()));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        FrameLayout frameLayout = this.f13570H;
        frameLayout.addView(textView, layoutParams);
        frameLayout.bringChildToFront(textView);
    }

    public final void l() {
        AbstractC0699De abstractC0699De = this.f13575M;
        if (abstractC0699De == null) {
            return;
        }
        long j8 = abstractC0699De.j();
        if (this.f13580R == j8 || j8 <= 0) {
            return;
        }
        float f8 = j8 / 1000.0f;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue()) {
            String strValueOf = String.valueOf(f8);
            String strValueOf2 = String.valueOf(abstractC0699De.q());
            String strValueOf3 = String.valueOf(abstractC0699De.o());
            String strValueOf4 = String.valueOf(abstractC0699De.p());
            String strValueOf5 = String.valueOf(abstractC0699De.k());
            p083k3.l.f25980A.f25990j.getClass();
            c("timeupdate", "time", strValueOf, "totalBytes", strValueOf2, "qoeCachedBytes", strValueOf3, "qoeLoadedBytes", strValueOf4, "droppedFrames", strValueOf5, "reportTime", String.valueOf(System.currentTimeMillis()));
        } else {
            c("timeupdate", "time", String.valueOf(f8));
        }
        this.f13580R = j8;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        int i8 = 0;
        RunnableC0729Fe runnableC0729Fe = this.f13573K;
        if (z7) {
            runnableC0729Fe.f13381H = false;
            p113o3.J j8 = p113o3.O.f27924l;
            j8.removeCallbacks(runnableC0729Fe);
            j8.postDelayed(runnableC0729Fe, 250L);
        } else {
            runnableC0729Fe.a();
            this.f13581S = this.f13580R;
        }
        p113o3.O.f27924l.post(new RunnableC0729Fe(this, z7, i8));
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i8) {
        super.onWindowVisibilityChanged(i8);
        boolean z7 = false;
        int i9 = 1;
        RunnableC0729Fe runnableC0729Fe = this.f13573K;
        if (i8 == 0) {
            runnableC0729Fe.f13381H = false;
            p113o3.J j8 = p113o3.O.f27924l;
            j8.removeCallbacks(runnableC0729Fe);
            j8.postDelayed(runnableC0729Fe, 250L);
            z7 = true;
        } else {
            runnableC0729Fe.a();
            this.f13581S = this.f13580R;
        }
        p113o3.O.f27924l.post(new RunnableC0729Fe(this, z7, i9));
    }
}
