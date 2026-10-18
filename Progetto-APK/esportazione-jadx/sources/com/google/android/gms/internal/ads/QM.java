package com.google.android.gms.internal.ads;

import D0.AbstractC0111a;
import android.media.MediaCodecInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class QM {
    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i8, int i9, double d6) {
        boolean z7;
        int i10;
        List supportedPerformancePoints;
        List supportedPerformancePoints2 = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints2 == null || supportedPerformancePoints2.isEmpty()) {
            return 0;
        }
        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePointE = android.support.v4.media.session.a.e(i8, i9, (int) d6);
        int i11 = 0;
        while (true) {
            z7 = true;
            if (i11 >= supportedPerformancePoints2.size()) {
                i10 = 1;
                break;
            }
            if (AbstractC0111a.a(supportedPerformancePoints2.get(i11)).covers(performancePointE)) {
                i10 = 2;
                break;
            }
            i11++;
        }
        if (i10 == 1 && Cw.f12727k == null) {
            if (Et.f13234a >= 35) {
                z7 = false;
                break;
            }
            try {
                K k8 = new K();
                k8.f("video/avc");
                C1804p0 c1804p0 = new C1804p0(k8);
                if (c1804p0.f20383m != null) {
                    PA paD = AbstractC1154cN.d(WM.f17242r, c1804p0, false, false);
                    for (int i12 = 0; i12 < paD.f15342J; i12++) {
                        if (((PM) paD.get(i12)).f15378d != null && ((PM) paD.get(i12)).f15378d.getVideoCapabilities() != null && (supportedPerformancePoints = ((PM) paD.get(i12)).f15378d.getVideoCapabilities().getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                            android.support.v4.media.session.a.j();
                            MediaCodecInfo.VideoCapabilities.PerformancePoint performancePointD = android.support.v4.media.session.a.d();
                            for (int i13 = 0; i13 < supportedPerformancePoints.size(); i13++) {
                                if (AbstractC0111a.a(supportedPerformancePoints.get(i13)).covers(performancePointD)) {
                                    z7 = false;
                                    break;
                                }
                            }
                            break;
                        }
                    }
                }
            } catch (ZM unused) {
            }
            Cw.f12727k = Boolean.valueOf(z7);
            if (z7) {
                return 0;
            }
        }
        return i10;
    }
}
