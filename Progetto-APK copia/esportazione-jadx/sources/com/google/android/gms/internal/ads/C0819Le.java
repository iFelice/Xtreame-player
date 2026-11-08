package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Le, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0819Le extends Qy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SensorManager f14516a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Display f14518c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f14521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public E1.W f14522g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public InterfaceC0804Ke f14523h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float[] f14519d = new float[9];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f14520e = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14517b = new Object();

    public C0819Le(Context context) {
        this.f14516a = (SensorManager) context.getSystemService("sensor");
        this.f14518c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    @Override // com.google.android.gms.internal.ads.Qy
    public final void a(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.f14517b) {
            try {
                if (this.f14521f == null) {
                    this.f14521f = new float[9];
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f14519d, fArr);
        int rotation = this.f14518c.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.f14519d, 2, 129, this.f14520e);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.f14519d, 129, 130, this.f14520e);
        } else if (rotation != 3) {
            System.arraycopy(this.f14519d, 0, this.f14520e, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.f14519d, 130, 1, this.f14520e);
        }
        float[] fArr2 = this.f14520e;
        float f8 = fArr2[1];
        fArr2[1] = fArr2[3];
        fArr2[3] = f8;
        float f9 = fArr2[2];
        fArr2[2] = fArr2[6];
        fArr2[6] = f9;
        float f10 = fArr2[5];
        fArr2[5] = fArr2[7];
        fArr2[7] = f10;
        synchronized (this.f14517b) {
            System.arraycopy(this.f14520e, 0, this.f14521f, 0, 9);
        }
        InterfaceC0804Ke interfaceC0804Ke = this.f14523h;
        if (interfaceC0804Ke != null) {
            ((C0834Me) interfaceC0804Ke).a();
        }
    }

    public final void b() {
        if (this.f14522g == null) {
            return;
        }
        this.f14516a.unregisterListener(this);
        this.f14522g.post(new RunnableC2171w4(2, 0));
        this.f14522g = null;
    }

    public final boolean c(float[] fArr) {
        synchronized (this.f14517b) {
            try {
                float[] fArr2 = this.f14521f;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
