package p161u5;

import B0.M0;
import P5.h;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h f30511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f30512b;

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        boolean z7 = false;
        float f8 = sensorEvent.values[0];
        if (this.f30511a != null) {
            int i8 = 3;
            if (f8 <= 45.0f) {
                this.f30512b.post(new M0(i8, this, true));
            } else if (f8 >= 450.0f) {
                this.f30512b.post(new M0(i8, this, z7));
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i8) {
    }
}
