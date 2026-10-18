package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ao, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0664Ao extends Qy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SensorManager f12035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Sensor f12036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f12037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC2362zo f12039f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f12040g;

    public C0664Ao(Context context) {
        this.f12034a = context;
    }

    @Override // com.google.android.gms.internal.ads.Qy
    public final void a(SensorEvent sensorEvent) {
        J7 j8 = Q7.l8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f8 = fArr[0] / 9.80665f;
            float f9 = fArr[1] / 9.80665f;
            float f10 = fArr[2] / 9.80665f;
            float fSqrt = (float) Math.sqrt((f10 * f10) + (f9 * f9) + (f8 * f8));
            J7 j9 = Q7.m8;
            O7 o7 = c3099q.f26627c;
            if (fSqrt >= ((Float) o7.a(j9)).floatValue()) {
                p083k3.l.f25980A.f25990j.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (this.f12037d + ((long) ((Integer) o7.a(Q7.n8)).intValue()) <= jCurrentTimeMillis) {
                    if (this.f12037d + ((long) ((Integer) o7.a(Q7.o8)).intValue()) < jCurrentTimeMillis) {
                        this.f12038e = 0;
                    }
                    p113o3.I.k("Shake detected.");
                    this.f12037d = jCurrentTimeMillis;
                    int i8 = this.f12038e + 1;
                    this.f12038e = i8;
                    InterfaceC2362zo interfaceC2362zo = this.f12039f;
                    if (interfaceC2362zo == null || i8 != ((Integer) o7.a(Q7.p8)).intValue()) {
                        return;
                    }
                    ((C1895qo) interfaceC2362zo).d(new BinderC1739no(), EnumC1843po.f20488I);
                }
            }
        }
    }

    public final void b() {
        synchronized (this) {
            try {
                if (this.f12040g) {
                    SensorManager sensorManager = this.f12035b;
                    if (sensorManager != null) {
                        sensorManager.unregisterListener(this, this.f12036c);
                        p113o3.I.k("Stopped listening for shake gestures.");
                    }
                    this.f12040g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                J7 j8 = Q7.l8;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    if (this.f12035b == null) {
                        SensorManager sensorManager2 = (SensorManager) this.f12034a.getSystemService("sensor");
                        this.f12035b = sensorManager2;
                        if (sensorManager2 == null) {
                            p120p3.h.g("Shake detection failed to initialize. Failed to obtain accelerometer.");
                            return;
                        }
                        this.f12036c = sensorManager2.getDefaultSensor(1);
                    }
                    if (!this.f12040g && (sensorManager = this.f12035b) != null && (sensor = this.f12036c) != null) {
                        sensorManager.registerListener(this, sensor, 2);
                        p083k3.l.f25980A.f25990j.getClass();
                        this.f12037d = System.currentTimeMillis() - ((long) ((Integer) c3099q.f26627c.a(Q7.n8)).intValue());
                        this.f12040g = true;
                        p113o3.I.k("Listening for shake gestures.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
