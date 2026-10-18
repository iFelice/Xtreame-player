package V0;

import B0.C0041c;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;

/* JADX INFO: loaded from: classes.dex */
public final class d implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f7016a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f7017b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f7018c = new float[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float[] f7019d = new float[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Display f7020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c[] f7021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f7022g;

    public d(Display display, c... cVarArr) {
        this.f7020e = display;
        this.f7021f = cVarArr;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        int i8;
        float[] fArr = sensorEvent.values;
        float[] fArr2 = this.f7016a;
        SensorManager.getRotationMatrixFromVector(fArr2, fArr);
        int rotation = this.f7020e.getRotation();
        float[] fArr3 = this.f7017b;
        if (rotation != 0) {
            int i9 = 129;
            if (rotation != 1) {
                i8 = 130;
                if (rotation != 2) {
                    if (rotation != 3) {
                        throw new IllegalStateException();
                    }
                    i9 = 130;
                    i8 = 1;
                }
            } else {
                i9 = 2;
                i8 = 129;
            }
            System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
            SensorManager.remapCoordinateSystem(fArr3, i9, i8, fArr2);
        }
        SensorManager.remapCoordinateSystem(fArr2, 1, 131, fArr3);
        float[] fArr4 = this.f7019d;
        SensorManager.getOrientation(fArr3, fArr4);
        float f8 = fArr4[2];
        Matrix.rotateM(this.f7016a, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        boolean z7 = this.f7022g;
        float[] fArr5 = this.f7016a;
        if (!z7) {
            C0041c.d(this.f7018c, fArr5);
            this.f7022g = true;
        }
        System.arraycopy(fArr5, 0, fArr3, 0, fArr3.length);
        Matrix.multiplyMM(fArr5, 0, this.f7017b, 0, this.f7018c, 0);
        for (c cVar : this.f7021f) {
            cVar.a(fArr2, f8);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i8) {
    }
}
