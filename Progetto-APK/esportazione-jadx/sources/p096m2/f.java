package p096m2;

import S3.e;
import android.hardware.Camera;
import android.util.Log;
import p054g6.a;
import p054g6.b;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class f implements b {
    public static final j a(q qVar) {
        q0.h(qVar, "<this>");
        return new j(qVar.f27242a, qVar.f27261t);
    }

    public static int b(int i8) {
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w("m2.f", "No cameras!");
            return -1;
        }
        boolean z7 = i8 >= 0;
        if (!z7) {
            i8 = 0;
            while (i8 < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i8, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i8++;
            }
        }
        if (i8 < numberOfCameras) {
            return i8;
        }
        return z7 ? -1 : 0;
    }

    public void c(a aVar) {
        p100m6.b.a(aVar, "observer is null");
        try {
            d(aVar);
        } catch (NullPointerException e8) {
            throw e8;
        } catch (Throwable th) {
            e.q(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void d(a aVar);
}
