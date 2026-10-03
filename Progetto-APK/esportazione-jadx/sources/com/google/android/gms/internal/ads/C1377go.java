package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.go, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1377go extends Qy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SensorManager f18995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Sensor f18996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f18997c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Float f18998d = Float.valueOf(0.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f18999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19000f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f19001g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f19002h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C1895qo f19003i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f19004j;

    public C1377go(Context context) {
        p083k3.l.f25980A.f25990j.getClass();
        this.f18999e = System.currentTimeMillis();
        this.f19000f = 0;
        this.f19001g = false;
        this.f19002h = false;
        this.f19003i = null;
        this.f19004j = false;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f18995a = sensorManager;
        if (sensorManager != null) {
            this.f18996b = sensorManager.getDefaultSensor(4);
        } else {
            this.f18996b = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.Qy
    public final void a(SensorEvent sensorEvent) {
        J7 j8 = Q7.q8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            p083k3.l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j9 = this.f18999e;
            J7 j10 = Q7.s8;
            O7 o7 = c3099q.f26627c;
            if (j9 + ((long) ((Integer) o7.a(j10)).intValue()) < jCurrentTimeMillis) {
                this.f19000f = 0;
                this.f18999e = jCurrentTimeMillis;
                this.f19001g = false;
                this.f19002h = false;
                this.f18997c = this.f18998d.floatValue();
            }
            float fFloatValue = this.f18998d.floatValue() + (sensorEvent.values[1] * 4.0f);
            this.f18998d = Float.valueOf(fFloatValue);
            float f8 = this.f18997c;
            J7 j11 = Q7.r8;
            if (fFloatValue > ((Float) o7.a(j11)).floatValue() + f8) {
                this.f18997c = this.f18998d.floatValue();
                this.f19002h = true;
            } else if (this.f18998d.floatValue() < this.f18997c - ((Float) o7.a(j11)).floatValue()) {
                this.f18997c = this.f18998d.floatValue();
                this.f19001g = true;
            }
            if (this.f18998d.isInfinite()) {
                this.f18998d = Float.valueOf(0.0f);
                this.f18997c = 0.0f;
            }
            if (this.f19001g && this.f19002h) {
                p113o3.I.k("Flick detected.");
                this.f18999e = jCurrentTimeMillis;
                int i8 = this.f19000f + 1;
                this.f19000f = i8;
                this.f19001g = false;
                this.f19002h = false;
                C1895qo c1895qo = this.f19003i;
                if (c1895qo == null || i8 != ((Integer) o7.a(Q7.t8)).intValue()) {
                    return;
                }
                c1895qo.d(new BinderC1739no(), EnumC1843po.f20488I);
            }
        }
    }

    public final void b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (this.f19004j && (sensorManager = this.f18995a) != null && (sensor = this.f18996b) != null) {
                    sensorManager.unregisterListener(this, sensor);
                    this.f19004j = false;
                    p113o3.I.k("Stopped listening for flick gestures.");
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
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.q8)).booleanValue()) {
                    if (!this.f19004j && (sensorManager = this.f18995a) != null && (sensor = this.f18996b) != null) {
                        sensorManager.registerListener(this, sensor, 2);
                        this.f19004j = true;
                        p113o3.I.k("Listening for flick gestures.");
                    }
                    if (this.f18995a == null || this.f18996b == null) {
                        p120p3.h.g("Flick detection failed to initialize. Failed to obtain gyroscope.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
