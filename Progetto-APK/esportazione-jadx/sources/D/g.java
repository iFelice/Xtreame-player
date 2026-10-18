package D;

import D0.AbstractC0111a;
import android.app.AppOpsManager;
import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.os.Trace;
import java.util.List;
import org.videolan.libvlc.MediaDiscoverer;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i8, int i9, double d6) {
        boolean z7;
        int i10;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
            return 0;
        }
        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(i8, i9, (int) d6);
        int i11 = 0;
        while (true) {
            z7 = true;
            if (i11 >= supportedPerformancePoints.size()) {
                i10 = 1;
                break;
            }
            if (AbstractC0111a.a(supportedPerformancePoints.get(i11)).covers(performancePoint)) {
                i10 = 2;
                break;
            }
            i11++;
        }
        if (i10 == 1 && com.bumptech.glide.d.f11506c == null) {
            if (Build.VERSION.SDK_INT >= 35) {
                z7 = false;
            } else {
                int iB = b(false);
                int iB2 = b(true);
                if (iB != 0 && (iB2 != 0 ? !(iB != 2 || iB2 != 2) : iB == 2)) {
                    z7 = false;
                }
            }
            com.bumptech.glide.d.f11506c = Boolean.valueOf(z7);
            if (z7) {
                return 0;
            }
        }
        return i10;
    }

    public static int b(boolean z7) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
        try {
            C3135s c3135s = new C3135s();
            c3135s.f26996n = O.p("video/avc");
            C3136t c3136t = new C3136t(c3135s);
            if (c3136t.f27041o != null) {
                d0 d0VarF = K0.z.f(K0.s.f4446g, c3136t, z7, false);
                for (int i8 = 0; i8 < d0VarF.f31846J; i8++) {
                    if (((K0.o) d0VarF.get(i8)).f4358d != null && (videoCapabilities = ((K0.o) d0VarF.get(i8)).f4358d.getVideoCapabilities()) != null && (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(MediaDiscoverer.Event.Started, 720, 60);
                        for (int i9 = 0; i9 < supportedPerformancePoints.size(); i9++) {
                            if (AbstractC0111a.a(supportedPerformancePoints.get(i9)).covers(performancePoint)) {
                                return 2;
                            }
                        }
                        return 1;
                    }
                }
            }
        } catch (K0.v unused) {
        }
        return 0;
    }

    public static String c(Context context) {
        return context.getOpPackageName();
    }

    public static AppOpsManager d(Context context) {
        return (AppOpsManager) context.getSystemService(AppOpsManager.class);
    }

    public static boolean e() {
        return Trace.isEnabled();
    }

    public static Insets f(int i8, int i9, int i10, int i11) {
        return Insets.of(i8, i9, i10, i11);
    }

    public static void g(Resources.Theme theme) {
        theme.rebase();
    }

    public static void h(Notification.Builder builder, boolean z7) {
        builder.setAllowSystemGeneratedContextualActions(z7);
    }

    public static void i(Notification.Builder builder) {
        builder.setBubbleMetadata(null);
    }

    public static void j(Notification.Action.Builder builder, boolean z7) {
        builder.setContextual(z7);
    }
}
