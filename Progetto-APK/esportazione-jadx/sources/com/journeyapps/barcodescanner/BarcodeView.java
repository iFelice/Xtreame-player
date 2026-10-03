package com.journeyapps.barcodescanner;

import B0.w0;
import O5.a;
import O5.g;
import O5.l;
import O5.m;
import O5.n;
import O5.o;
import O5.q;
import O5.r;
import P5.d;
import P5.f;
import a7.b;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.AttributeSet;
import android.util.Log;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.TextureView;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import p130q5.c;
import p130q5.h;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class BarcodeView extends g {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f24558j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public a f24559k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public o f24560l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public m f24561m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final Handler f24562n0;

    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24558j0 = 1;
        this.f24559k0 = null;
        H2.g gVar = new H2.g(this, 3);
        this.f24561m0 = new w0(11, 0);
        this.f24562n0 = new Handler(gVar);
    }

    @Override // O5.g
    public final void c() {
        TextureView textureView;
        SurfaceView surfaceView;
        i();
        b.j();
        Log.d("g", "pause()");
        this.f5586O = -1;
        f fVar = this.f5578G;
        if (fVar != null) {
            b.j();
            if (fVar.f5937f) {
                fVar.f5932a.b(fVar.f5943l);
            } else {
                fVar.f5938g = true;
            }
            fVar.f5937f = false;
            this.f5578G = null;
            this.f5584M = false;
        } else {
            this.f5580I.sendEmptyMessage(R.id.zxing_camera_closed);
        }
        if (this.f5593V == null && (surfaceView = this.f5582K) != null) {
            surfaceView.getHolder().removeCallback(this.f5600f0);
        }
        if (this.f5593V == null && (textureView = this.f5583L) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f5590S = null;
        this.f5591T = null;
        this.f5595a0 = null;
        w0 w0Var = this.f5585N;
        OrientationEventListener orientationEventListener = (OrientationEventListener) w0Var.f1122J;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        w0Var.f1122J = null;
        w0Var.f1121I = null;
        w0Var.f1123K = null;
        this.f5602h0.e();
    }

    public final l g() {
        l lVar;
        if (this.f24561m0 == null) {
            this.f24561m0 = new w0(11, 0);
        }
        n nVar = new n();
        HashMap map = new HashMap();
        map.put(c.f29605P, nVar);
        w0 w0Var = (w0) this.f24561m0;
        w0Var.getClass();
        EnumMap enumMap = new EnumMap(c.class);
        enumMap.putAll(map);
        Map map2 = (Map) w0Var.f1122J;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        Collection collection = (Collection) w0Var.f1121I;
        if (collection != null) {
            enumMap.put(c.f29598I, collection);
        }
        String str = (String) w0Var.f1123K;
        if (str != null) {
            enumMap.put(c.f29600K, str);
        }
        h hVar = new h();
        hVar.e(enumMap);
        int i8 = w0Var.f1120H;
        if (i8 == 0) {
            lVar = new l(hVar);
        } else if (i8 == 1) {
            lVar = new q(hVar);
        } else if (i8 != 2) {
            lVar = new l(hVar);
        } else {
            r rVar = new r(hVar);
            rVar.f5636c = true;
            lVar = rVar;
        }
        nVar.f5624a = lVar;
        return lVar;
    }

    public m getDecoderFactory() {
        return this.f24561m0;
    }

    public final void h() {
        i();
        if (this.f24558j0 == 1 || !this.f5584M) {
            return;
        }
        o oVar = new o(getCameraInstance(), g(), this.f24562n0);
        this.f24560l0 = oVar;
        oVar.f5631f = getPreviewFramingRect();
        o oVar2 = this.f24560l0;
        oVar2.getClass();
        b.j();
        HandlerThread handlerThread = new HandlerThread("o");
        oVar2.f5627b = handlerThread;
        handlerThread.start();
        oVar2.f5628c = new Handler(oVar2.f5627b.getLooper(), oVar2.f5634i);
        oVar2.f5632g = true;
        f fVar = oVar2.f5626a;
        fVar.f5939h.post(new d(fVar, oVar2.f5635j, 0));
    }

    public final void i() {
        o oVar = this.f24560l0;
        if (oVar != null) {
            oVar.getClass();
            b.j();
            synchronized (oVar.f5633h) {
                oVar.f5632g = false;
                oVar.f5628c.removeCallbacksAndMessages(null);
                oVar.f5627b.quit();
            }
            this.f24560l0 = null;
        }
    }

    public void setDecoderFactory(m mVar) {
        b.j();
        this.f24561m0 = mVar;
        o oVar = this.f24560l0;
        if (oVar != null) {
            oVar.f5629d = g();
        }
    }
}
