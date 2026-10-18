package N;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: N.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0261j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0262k f4903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0260i f4904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0260i f4905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public VelocityTracker f4906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f4907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4908g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4909h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4910i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f4911j;

    public C0261j(Context context, InterfaceC0262k interfaceC0262k) {
        C0260i c0260i = new C0260i(0);
        C0260i c0260i2 = new C0260i(1);
        this.f4908g = -1;
        this.f4909h = -1;
        this.f4910i = -1;
        this.f4911j = new int[]{com.google.android.gms.common.api.d.API_PRIORITY_OTHER, 0};
        this.f4902a = context;
        this.f4903b = interfaceC0262k;
        this.f4904c = c0260i;
        this.f4905d = c0260i2;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007c  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:91:0x0177  */
    public final void a(MotionEvent motionEvent, int i8) {
        int scaledMinimumFlingVelocity;
        int scaledMaximumFlingVelocity;
        char c8;
        boolean z7;
        float yVelocity;
        long j8;
        float fSqrt;
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        int i9 = this.f4909h;
        int[] iArr = this.f4911j;
        if (i9 == source && this.f4910i == deviceId && this.f4908g == i8) {
            c8 = 0;
            z7 = false;
        } else {
            this.f4904c.getClass();
            Context context = this.f4902a;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int deviceId2 = motionEvent.getDeviceId();
            int source2 = motionEvent.getSource();
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34) {
                Method method = O.f4849a;
                scaledMinimumFlingVelocity = e7.a.l(viewConfiguration, deviceId2, i8, source2);
            } else {
                Method method2 = O.f4849a;
                InputDevice device = InputDevice.getDevice(deviceId2);
                if (device == null || device.getMotionRange(i8, source2) == null) {
                    scaledMinimumFlingVelocity = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                } else {
                    Resources resources = context.getResources();
                    int identifier = (source2 == 4194304 && i8 == 26) ? resources.getIdentifier("config_viewMinRotaryEncoderFlingVelocity", "dimen", "android") : -1;
                    Objects.requireNonNull(viewConfiguration);
                    if (identifier == -1) {
                        scaledMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                    } else if (identifier == 0 || (scaledMinimumFlingVelocity = resources.getDimensionPixelSize(identifier)) < 0) {
                        scaledMinimumFlingVelocity = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                    }
                }
            }
            iArr[0] = scaledMinimumFlingVelocity;
            int deviceId3 = motionEvent.getDeviceId();
            int source3 = motionEvent.getSource();
            if (i10 >= 34) {
                scaledMaximumFlingVelocity = e7.a.k(viewConfiguration, deviceId3, i8, source3);
            } else {
                InputDevice device2 = InputDevice.getDevice(deviceId3);
                if ((device2 == null || device2.getMotionRange(i8, source3) == null) ? false : true) {
                    Resources resources2 = context.getResources();
                    int identifier2 = (source3 == 4194304 && i8 == 26) ? resources2.getIdentifier("config_viewMaxRotaryEncoderFlingVelocity", "dimen", "android") : -1;
                    Objects.requireNonNull(viewConfiguration);
                    if (identifier2 == -1) {
                        scaledMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                    } else if (identifier2 != 0) {
                        int dimensionPixelSize = resources2.getDimensionPixelSize(identifier2);
                        scaledMaximumFlingVelocity = dimensionPixelSize >= 0 ? dimensionPixelSize : Integer.MIN_VALUE;
                    } else {
                        scaledMaximumFlingVelocity = Integer.MIN_VALUE;
                    }
                } else {
                    scaledMaximumFlingVelocity = Integer.MIN_VALUE;
                }
            }
            iArr[1] = scaledMaximumFlingVelocity;
            this.f4909h = source;
            this.f4910i = deviceId;
            this.f4908g = i8;
            c8 = 0;
            z7 = true;
        }
        if (iArr[c8] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.f4906e;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f4906e = null;
                return;
            }
            return;
        }
        if (this.f4906e == null) {
            this.f4906e = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker2 = this.f4906e;
        this.f4905d.getClass();
        Map map = AbstractC0273w.f4926a;
        velocityTracker2.addMovement(motionEvent);
        int i11 = 20;
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            Map map2 = AbstractC0273w.f4926a;
            if (!map2.containsKey(velocityTracker2)) {
                map2.put(velocityTracker2, new C0274x());
            }
            C0274x c0274x = (C0274x) map2.get(velocityTracker2);
            c0274x.getClass();
            long eventTime = motionEvent.getEventTime();
            int i12 = c0274x.f4930d;
            long[] jArr = c0274x.f4928b;
            if (i12 != 0 && eventTime - jArr[c0274x.f4931e] > 40) {
                c0274x.f4930d = 0;
                c0274x.f4929c = 0.0f;
            }
            int i13 = (c0274x.f4931e + 1) % 20;
            c0274x.f4931e = i13;
            int i14 = c0274x.f4930d;
            if (i14 != 20) {
                c0274x.f4930d = i14 + 1;
            }
            c0274x.f4927a[i13] = motionEvent.getAxisValue(26);
            jArr[c0274x.f4931e] = eventTime;
        }
        int i15 = 1000;
        velocityTracker2.computeCurrentVelocity(1000, Float.MAX_VALUE);
        C0274x c0274x2 = (C0274x) AbstractC0273w.f4926a.get(velocityTracker2);
        if (c0274x2 != null) {
            int i16 = c0274x2.f4930d;
            if (i16 < 2) {
                fSqrt = 0.0f;
            } else {
                int i17 = c0274x2.f4931e;
                int i18 = ((i17 + 20) - (i16 - 1)) % 20;
                long[] jArr2 = c0274x2.f4928b;
                long j9 = jArr2[i17];
                while (true) {
                    j8 = jArr2[i18];
                    if (j9 - j8 <= 100) {
                        break;
                    }
                    c0274x2.f4930d--;
                    i18 = (i18 + 1) % 20;
                }
                int i19 = c0274x2.f4930d;
                if (i19 < 2) {
                    fSqrt = 0.0f;
                } else {
                    float[] fArr = c0274x2.f4927a;
                    if (i19 == 2) {
                        int i20 = (i18 + 1) % 20;
                        long j10 = jArr2[i20];
                        if (j8 == j10) {
                            fSqrt = 0.0f;
                        } else {
                            fSqrt = fArr[i20] / (j10 - j8);
                        }
                    } else {
                        int i21 = 0;
                        int i22 = 0;
                        float fAbs = 0.0f;
                        while (true) {
                            if (i21 >= c0274x2.f4930d - 1) {
                                break;
                            }
                            int i23 = i21 + i18;
                            long j11 = jArr2[i23 % 20];
                            int i24 = (i23 + 1) % i11;
                            if (jArr2[i24] != j11) {
                                i22++;
                                float fSqrt2 = (fAbs < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(fAbs) * 2.0f));
                                float f8 = fArr[i24] / (jArr2[i24] - j11);
                                fAbs += Math.abs(f8) * (f8 - fSqrt2);
                                if (i22 == 1) {
                                    fAbs *= 0.5f;
                                }
                            }
                            i21++;
                            i11 = 20;
                        }
                        fSqrt = (fAbs < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(fAbs) * 2.0f));
                        i15 = 1000;
                    }
                }
            }
            float f9 = fSqrt * i15;
            c0274x2.f4929c = f9;
            if (f9 < (-Math.abs(Float.MAX_VALUE))) {
                c0274x2.f4929c = -Math.abs(Float.MAX_VALUE);
            } else if (c0274x2.f4929c > Math.abs(Float.MAX_VALUE)) {
                c0274x2.f4929c = Math.abs(Float.MAX_VALUE);
            }
        }
        if (Build.VERSION.SDK_INT >= 34) {
            yVelocity = e7.a.c(velocityTracker2, i8);
        } else if (i8 == 0) {
            yVelocity = velocityTracker2.getXVelocity();
        } else if (i8 == 1) {
            yVelocity = velocityTracker2.getYVelocity();
        } else {
            C0274x c0274x3 = (C0274x) AbstractC0273w.f4926a.get(velocityTracker2);
            yVelocity = (c0274x3 == null || i8 != 26) ? 0.0f : c0274x3.f4929c;
        }
        InterfaceC0262k interfaceC0262k = this.f4903b;
        float fB = interfaceC0262k.B() * yVelocity;
        float fSignum = Math.signum(fB);
        if (z7 || (fSignum != Math.signum(this.f4907f) && fSignum != 0.0f)) {
            interfaceC0262k.E();
        }
        if (Math.abs(fB) < iArr[0]) {
            return;
        }
        int i25 = iArr[1];
        float fMax = Math.max(-i25, Math.min(fB, i25));
        this.f4907f = interfaceC0262k.u(fMax) ? fMax : 0.0f;
    }
}
