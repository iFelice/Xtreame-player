package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
public final class WL {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f17209A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f17210B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public long f17211C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f17212D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public long f17213E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public long f17214F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InterfaceC1840pl f17215G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1102bM f17216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f17217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AudioTrack f17218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public VL f17220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f17222g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f17223h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f17224i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f17226k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f17227l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Method f17228m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f17229n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f17230o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f17231p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f17232q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f17233r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f17234s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f17235t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f17236u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f17237v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f17238w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f17239x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f17240y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f17241z;

    public WL(C1102bM c1102bM) {
        this.f17216a = c1102bM;
        try {
            this.f17228m = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f17217b = new long[10];
        this.f17215G = InterfaceC1840pl.f20481a;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0080  */
    /* JADX WARN: Code duplicated, block: B:24:0x0094  */
    /* JADX WARN: Code duplicated, block: B:25:0x0097  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00af  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:58:0x0109  */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:62:0x016d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0182  */
    /* JADX WARN: Code duplicated, block: B:65:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:67:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:68:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:8:0x003c  */
    public final long a(boolean z7) {
        long jU;
        VL vl;
        UL ul;
        AudioTimestamp audioTimestamp;
        boolean timestamp;
        int i8;
        long j8;
        AudioTimestamp audioTimestamp2;
        long j9;
        long j10;
        long jU2;
        long j11;
        Method method;
        AudioTrack audioTrack = this.f17218c;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        C1102bM c1102bM = this.f17216a;
        if (playState == 3) {
            ((Nr) this.f17215G).getClass();
            long jNanoTime = System.nanoTime() / 1000;
            if (jNanoTime - this.f17227l >= 30000) {
                long jU3 = Et.u(this.f17221f, d());
                if (jU3 != 0) {
                    int i9 = this.f17237v;
                    float f8 = this.f17224i;
                    if (f8 != 1.0f) {
                        jU3 = Math.round(jU3 / ((double) f8));
                    }
                    long[] jArr = this.f17217b;
                    jArr[i9] = jU3 - jNanoTime;
                    this.f17237v = (this.f17237v + 1) % 10;
                    int i10 = this.f17238w;
                    if (i10 < 10) {
                        this.f17238w = i10 + 1;
                    }
                    this.f17227l = jNanoTime;
                    this.f17226k = 0L;
                    int i11 = 0;
                    while (true) {
                        int i12 = this.f17238w;
                        if (i11 >= i12) {
                            break;
                        }
                        this.f17226k = (jArr[i11] / ((long) i12)) + this.f17226k;
                        i11++;
                    }
                    if (!this.f17222g) {
                        vl = this.f17220e;
                        vl.getClass();
                        if (jNanoTime - vl.f17004e < vl.f17003d) {
                            j8 = jNanoTime;
                        } else {
                            vl.f17004e = jNanoTime;
                            ul = vl.f17000a;
                            AudioTrack audioTrack2 = ul.f16833a;
                            audioTimestamp = ul.f16834b;
                            timestamp = audioTrack2.getTimestamp(audioTimestamp);
                            if (timestamp) {
                                j11 = audioTimestamp.framePosition;
                                if (ul.f16836d > j11) {
                                    ul.f16835c++;
                                }
                                ul.f16836d = j11;
                                ul.f16837e = j11 + (ul.f16835c << 32);
                            }
                            i8 = vl.f17001b;
                            if (i8 != 0) {
                                if (i8 != 1) {
                                    if (i8 != 2) {
                                        if (!timestamp) {
                                            vl.a(0);
                                            j8 = jNanoTime;
                                        }
                                        audioTimestamp2 = audioTimestamp;
                                        j9 = audioTimestamp2.nanoTime / 1000;
                                        j10 = ul.f16837e;
                                        jU2 = Et.u(this.f17221f, d());
                                        if (Math.abs(j9 - jNanoTime) > 5000000) {
                                            C1618lM c1618lM = c1102bM.f18040a;
                                            long jA = c1618lM.a();
                                            long jB = c1618lM.b();
                                            StringBuilder sbD = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                            sbD.append(j9);
                                            sbD.append(", ");
                                            j8 = jNanoTime;
                                            sbD.append(j8);
                                            sbD.append(", ");
                                            sbD.append(jU2);
                                            sbD.append(", ");
                                            sbD.append(jA);
                                            sbD.append(", ");
                                            sbD.append(jB);
                                            Zo.f("DefaultAudioSink", sbD.toString());
                                            vl.a(4);
                                        } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                            C1618lM c1618lM2 = c1102bM.f18040a;
                                            long jA2 = c1618lM2.a();
                                            long jB2 = c1618lM2.b();
                                            StringBuilder sbD2 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                            sbD2.append(j9);
                                            sbD2.append(", ");
                                            j8 = jNanoTime;
                                            sbD2.append(j8);
                                            sbD2.append(", ");
                                            sbD2.append(jU2);
                                            sbD2.append(", ");
                                            sbD2.append(jA2);
                                            sbD2.append(", ");
                                            sbD2.append(jB2);
                                            Zo.f("DefaultAudioSink", sbD2.toString());
                                            vl.a(4);
                                        } else {
                                            j8 = jNanoTime;
                                            if (vl.f17001b == 4) {
                                                vl.a(0);
                                            }
                                        }
                                    } else if (i8 != 3) {
                                        if (timestamp) {
                                            audioTimestamp2 = audioTimestamp;
                                            j9 = audioTimestamp2.nanoTime / 1000;
                                            j10 = ul.f16837e;
                                            jU2 = Et.u(this.f17221f, d());
                                            if (Math.abs(j9 - jNanoTime) > 5000000) {
                                                C1618lM c1618lM3 = c1102bM.f18040a;
                                                long jA3 = c1618lM3.a();
                                                long jB3 = c1618lM3.b();
                                                StringBuilder sbD3 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                                sbD3.append(j9);
                                                sbD3.append(", ");
                                                j8 = jNanoTime;
                                                sbD3.append(j8);
                                                sbD3.append(", ");
                                                sbD3.append(jU2);
                                                sbD3.append(", ");
                                                sbD3.append(jA3);
                                                sbD3.append(", ");
                                                sbD3.append(jB3);
                                                Zo.f("DefaultAudioSink", sbD3.toString());
                                                vl.a(4);
                                            } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                                C1618lM c1618lM4 = c1102bM.f18040a;
                                                long jA4 = c1618lM4.a();
                                                long jB4 = c1618lM4.b();
                                                StringBuilder sbD4 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                                sbD4.append(j9);
                                                sbD4.append(", ");
                                                j8 = jNanoTime;
                                                sbD4.append(j8);
                                                sbD4.append(", ");
                                                sbD4.append(jU2);
                                                sbD4.append(", ");
                                                sbD4.append(jA4);
                                                sbD4.append(", ");
                                                sbD4.append(jB4);
                                                Zo.f("DefaultAudioSink", sbD4.toString());
                                                vl.a(4);
                                            } else {
                                                j8 = jNanoTime;
                                                if (vl.f17001b == 4) {
                                                    vl.a(0);
                                                }
                                            }
                                        } else {
                                            j8 = jNanoTime;
                                        }
                                    } else if (timestamp) {
                                        vl.a(0);
                                        audioTimestamp2 = audioTimestamp;
                                        j9 = audioTimestamp2.nanoTime / 1000;
                                        j10 = ul.f16837e;
                                        jU2 = Et.u(this.f17221f, d());
                                        if (Math.abs(j9 - jNanoTime) > 5000000) {
                                            C1618lM c1618lM5 = c1102bM.f18040a;
                                            long jA5 = c1618lM5.a();
                                            long jB5 = c1618lM5.b();
                                            StringBuilder sbD5 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                            sbD5.append(j9);
                                            sbD5.append(", ");
                                            j8 = jNanoTime;
                                            sbD5.append(j8);
                                            sbD5.append(", ");
                                            sbD5.append(jU2);
                                            sbD5.append(", ");
                                            sbD5.append(jA5);
                                            sbD5.append(", ");
                                            sbD5.append(jB5);
                                            Zo.f("DefaultAudioSink", sbD5.toString());
                                            vl.a(4);
                                        } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                            C1618lM c1618lM6 = c1102bM.f18040a;
                                            long jA6 = c1618lM6.a();
                                            long jB6 = c1618lM6.b();
                                            StringBuilder sbD6 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                            sbD6.append(j9);
                                            sbD6.append(", ");
                                            j8 = jNanoTime;
                                            sbD6.append(j8);
                                            sbD6.append(", ");
                                            sbD6.append(jU2);
                                            sbD6.append(", ");
                                            sbD6.append(jA6);
                                            sbD6.append(", ");
                                            sbD6.append(jB6);
                                            Zo.f("DefaultAudioSink", sbD6.toString());
                                            vl.a(4);
                                        } else {
                                            j8 = jNanoTime;
                                            if (vl.f17001b == 4) {
                                                vl.a(0);
                                            }
                                        }
                                    } else {
                                        j8 = jNanoTime;
                                    }
                                } else if (timestamp) {
                                    if (ul.f16837e > vl.f17005f) {
                                        vl.a(2);
                                    }
                                    audioTimestamp2 = audioTimestamp;
                                    j9 = audioTimestamp2.nanoTime / 1000;
                                    j10 = ul.f16837e;
                                    jU2 = Et.u(this.f17221f, d());
                                    if (Math.abs(j9 - jNanoTime) > 5000000) {
                                        C1618lM c1618lM7 = c1102bM.f18040a;
                                        long jA7 = c1618lM7.a();
                                        long jB7 = c1618lM7.b();
                                        StringBuilder sbD7 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                        sbD7.append(j9);
                                        sbD7.append(", ");
                                        j8 = jNanoTime;
                                        sbD7.append(j8);
                                        sbD7.append(", ");
                                        sbD7.append(jU2);
                                        sbD7.append(", ");
                                        sbD7.append(jA7);
                                        sbD7.append(", ");
                                        sbD7.append(jB7);
                                        Zo.f("DefaultAudioSink", sbD7.toString());
                                        vl.a(4);
                                    } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                        C1618lM c1618lM8 = c1102bM.f18040a;
                                        long jA8 = c1618lM8.a();
                                        long jB8 = c1618lM8.b();
                                        StringBuilder sbD8 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                        sbD8.append(j9);
                                        sbD8.append(", ");
                                        j8 = jNanoTime;
                                        sbD8.append(j8);
                                        sbD8.append(", ");
                                        sbD8.append(jU2);
                                        sbD8.append(", ");
                                        sbD8.append(jA8);
                                        sbD8.append(", ");
                                        sbD8.append(jB8);
                                        Zo.f("DefaultAudioSink", sbD8.toString());
                                        vl.a(4);
                                    } else {
                                        j8 = jNanoTime;
                                        if (vl.f17001b == 4) {
                                            vl.a(0);
                                        }
                                    }
                                } else {
                                    vl.a(0);
                                    j8 = jNanoTime;
                                }
                            } else if (timestamp) {
                                audioTimestamp2 = audioTimestamp;
                                if (audioTimestamp2.nanoTime / 1000 < vl.f17002c) {
                                    j8 = jNanoTime;
                                } else {
                                    vl.f17005f = ul.f16837e;
                                    vl.a(1);
                                    j9 = audioTimestamp2.nanoTime / 1000;
                                    j10 = ul.f16837e;
                                    jU2 = Et.u(this.f17221f, d());
                                    if (Math.abs(j9 - jNanoTime) > 5000000) {
                                        C1618lM c1618lM9 = c1102bM.f18040a;
                                        long jA9 = c1618lM9.a();
                                        long jB9 = c1618lM9.b();
                                        StringBuilder sbD9 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                        sbD9.append(j9);
                                        sbD9.append(", ");
                                        j8 = jNanoTime;
                                        sbD9.append(j8);
                                        sbD9.append(", ");
                                        sbD9.append(jU2);
                                        sbD9.append(", ");
                                        sbD9.append(jA9);
                                        sbD9.append(", ");
                                        sbD9.append(jB9);
                                        Zo.f("DefaultAudioSink", sbD9.toString());
                                        vl.a(4);
                                    } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                        C1618lM c1618lM10 = c1102bM.f18040a;
                                        long jA10 = c1618lM10.a();
                                        long jB10 = c1618lM10.b();
                                        StringBuilder sbD10 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                        sbD10.append(j9);
                                        sbD10.append(", ");
                                        j8 = jNanoTime;
                                        sbD10.append(j8);
                                        sbD10.append(", ");
                                        sbD10.append(jU2);
                                        sbD10.append(", ");
                                        sbD10.append(jA10);
                                        sbD10.append(", ");
                                        sbD10.append(jB10);
                                        Zo.f("DefaultAudioSink", sbD10.toString());
                                        vl.a(4);
                                    } else {
                                        j8 = jNanoTime;
                                        if (vl.f17001b == 4) {
                                            vl.a(0);
                                        }
                                    }
                                }
                            } else {
                                j8 = jNanoTime;
                                if (j8 - vl.f17002c > 500000) {
                                    vl.a(3);
                                }
                            }
                        }
                        if (!this.f17231p && (method = this.f17228m) != null && j8 - this.f17232q >= 500000) {
                            try {
                                AudioTrack audioTrack3 = this.f17218c;
                                audioTrack3.getClass();
                                try {
                                    Integer num = (Integer) method.invoke(audioTrack3, new Object[0]);
                                    int i13 = Et.f13234a;
                                    long jIntValue = (((long) num.intValue()) * 1000) - this.f17223h;
                                    this.f17229n = jIntValue;
                                    long jMax = Math.max(jIntValue, 0L);
                                    this.f17229n = jMax;
                                    if (jMax > 5000000) {
                                        c1102bM.getClass();
                                        Zo.f("DefaultAudioSink", "Ignoring impossibly large audio latency: " + jMax);
                                        this.f17229n = 0L;
                                    }
                                } catch (Exception unused) {
                                    this.f17228m = null;
                                }
                            } catch (Exception unused2) {
                            }
                            this.f17232q = j8;
                        }
                    }
                }
            } else if (!this.f17222g) {
                vl = this.f17220e;
                vl.getClass();
                if (jNanoTime - vl.f17004e < vl.f17003d) {
                    j8 = jNanoTime;
                } else {
                    vl.f17004e = jNanoTime;
                    ul = vl.f17000a;
                    AudioTrack audioTrack4 = ul.f16833a;
                    audioTimestamp = ul.f16834b;
                    timestamp = audioTrack4.getTimestamp(audioTimestamp);
                    if (timestamp) {
                        j11 = audioTimestamp.framePosition;
                        if (ul.f16836d > j11) {
                            ul.f16835c++;
                        }
                        ul.f16836d = j11;
                        ul.f16837e = j11 + (ul.f16835c << 32);
                    }
                    i8 = vl.f17001b;
                    if (i8 != 0) {
                        if (i8 != 1) {
                            if (i8 != 2) {
                                if (!timestamp) {
                                    vl.a(0);
                                    j8 = jNanoTime;
                                }
                                audioTimestamp2 = audioTimestamp;
                                j9 = audioTimestamp2.nanoTime / 1000;
                                j10 = ul.f16837e;
                                jU2 = Et.u(this.f17221f, d());
                                if (Math.abs(j9 - jNanoTime) > 5000000) {
                                    C1618lM c1618lM11 = c1102bM.f18040a;
                                    long jA11 = c1618lM11.a();
                                    long jB11 = c1618lM11.b();
                                    StringBuilder sbD11 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                    sbD11.append(j9);
                                    sbD11.append(", ");
                                    j8 = jNanoTime;
                                    sbD11.append(j8);
                                    sbD11.append(", ");
                                    sbD11.append(jU2);
                                    sbD11.append(", ");
                                    sbD11.append(jA11);
                                    sbD11.append(", ");
                                    sbD11.append(jB11);
                                    Zo.f("DefaultAudioSink", sbD11.toString());
                                    vl.a(4);
                                } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                    C1618lM c1618lM12 = c1102bM.f18040a;
                                    long jA12 = c1618lM12.a();
                                    long jB12 = c1618lM12.b();
                                    StringBuilder sbD12 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                    sbD12.append(j9);
                                    sbD12.append(", ");
                                    j8 = jNanoTime;
                                    sbD12.append(j8);
                                    sbD12.append(", ");
                                    sbD12.append(jU2);
                                    sbD12.append(", ");
                                    sbD12.append(jA12);
                                    sbD12.append(", ");
                                    sbD12.append(jB12);
                                    Zo.f("DefaultAudioSink", sbD12.toString());
                                    vl.a(4);
                                } else {
                                    j8 = jNanoTime;
                                    if (vl.f17001b == 4) {
                                        vl.a(0);
                                    }
                                }
                            } else if (i8 != 3) {
                                if (timestamp) {
                                    j8 = jNanoTime;
                                } else {
                                    audioTimestamp2 = audioTimestamp;
                                    j9 = audioTimestamp2.nanoTime / 1000;
                                    j10 = ul.f16837e;
                                    jU2 = Et.u(this.f17221f, d());
                                    if (Math.abs(j9 - jNanoTime) > 5000000) {
                                        C1618lM c1618lM13 = c1102bM.f18040a;
                                        long jA13 = c1618lM13.a();
                                        long jB13 = c1618lM13.b();
                                        StringBuilder sbD13 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                        sbD13.append(j9);
                                        sbD13.append(", ");
                                        j8 = jNanoTime;
                                        sbD13.append(j8);
                                        sbD13.append(", ");
                                        sbD13.append(jU2);
                                        sbD13.append(", ");
                                        sbD13.append(jA13);
                                        sbD13.append(", ");
                                        sbD13.append(jB13);
                                        Zo.f("DefaultAudioSink", sbD13.toString());
                                        vl.a(4);
                                    } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                        C1618lM c1618lM14 = c1102bM.f18040a;
                                        long jA14 = c1618lM14.a();
                                        long jB14 = c1618lM14.b();
                                        StringBuilder sbD14 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                        sbD14.append(j9);
                                        sbD14.append(", ");
                                        j8 = jNanoTime;
                                        sbD14.append(j8);
                                        sbD14.append(", ");
                                        sbD14.append(jU2);
                                        sbD14.append(", ");
                                        sbD14.append(jA14);
                                        sbD14.append(", ");
                                        sbD14.append(jB14);
                                        Zo.f("DefaultAudioSink", sbD14.toString());
                                        vl.a(4);
                                    } else {
                                        j8 = jNanoTime;
                                        if (vl.f17001b == 4) {
                                            vl.a(0);
                                        }
                                    }
                                }
                            } else if (timestamp) {
                                j8 = jNanoTime;
                            } else {
                                vl.a(0);
                                audioTimestamp2 = audioTimestamp;
                                j9 = audioTimestamp2.nanoTime / 1000;
                                j10 = ul.f16837e;
                                jU2 = Et.u(this.f17221f, d());
                                if (Math.abs(j9 - jNanoTime) > 5000000) {
                                    C1618lM c1618lM15 = c1102bM.f18040a;
                                    long jA15 = c1618lM15.a();
                                    long jB15 = c1618lM15.b();
                                    StringBuilder sbD15 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                    sbD15.append(j9);
                                    sbD15.append(", ");
                                    j8 = jNanoTime;
                                    sbD15.append(j8);
                                    sbD15.append(", ");
                                    sbD15.append(jU2);
                                    sbD15.append(", ");
                                    sbD15.append(jA15);
                                    sbD15.append(", ");
                                    sbD15.append(jB15);
                                    Zo.f("DefaultAudioSink", sbD15.toString());
                                    vl.a(4);
                                } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                    C1618lM c1618lM16 = c1102bM.f18040a;
                                    long jA16 = c1618lM16.a();
                                    long jB16 = c1618lM16.b();
                                    StringBuilder sbD16 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                    sbD16.append(j9);
                                    sbD16.append(", ");
                                    j8 = jNanoTime;
                                    sbD16.append(j8);
                                    sbD16.append(", ");
                                    sbD16.append(jU2);
                                    sbD16.append(", ");
                                    sbD16.append(jA16);
                                    sbD16.append(", ");
                                    sbD16.append(jB16);
                                    Zo.f("DefaultAudioSink", sbD16.toString());
                                    vl.a(4);
                                } else {
                                    j8 = jNanoTime;
                                    if (vl.f17001b == 4) {
                                        vl.a(0);
                                    }
                                }
                            }
                        } else if (timestamp) {
                            if (ul.f16837e > vl.f17005f) {
                                vl.a(2);
                            }
                            audioTimestamp2 = audioTimestamp;
                            j9 = audioTimestamp2.nanoTime / 1000;
                            j10 = ul.f16837e;
                            jU2 = Et.u(this.f17221f, d());
                            if (Math.abs(j9 - jNanoTime) > 5000000) {
                                C1618lM c1618lM17 = c1102bM.f18040a;
                                long jA17 = c1618lM17.a();
                                long jB17 = c1618lM17.b();
                                StringBuilder sbD17 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                sbD17.append(j9);
                                sbD17.append(", ");
                                j8 = jNanoTime;
                                sbD17.append(j8);
                                sbD17.append(", ");
                                sbD17.append(jU2);
                                sbD17.append(", ");
                                sbD17.append(jA17);
                                sbD17.append(", ");
                                sbD17.append(jB17);
                                Zo.f("DefaultAudioSink", sbD17.toString());
                                vl.a(4);
                            } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                C1618lM c1618lM18 = c1102bM.f18040a;
                                long jA18 = c1618lM18.a();
                                long jB18 = c1618lM18.b();
                                StringBuilder sbD18 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                sbD18.append(j9);
                                sbD18.append(", ");
                                j8 = jNanoTime;
                                sbD18.append(j8);
                                sbD18.append(", ");
                                sbD18.append(jU2);
                                sbD18.append(", ");
                                sbD18.append(jA18);
                                sbD18.append(", ");
                                sbD18.append(jB18);
                                Zo.f("DefaultAudioSink", sbD18.toString());
                                vl.a(4);
                            } else {
                                j8 = jNanoTime;
                                if (vl.f17001b == 4) {
                                    vl.a(0);
                                }
                            }
                        } else {
                            vl.a(0);
                            j8 = jNanoTime;
                        }
                    } else if (timestamp) {
                        audioTimestamp2 = audioTimestamp;
                        if (audioTimestamp2.nanoTime / 1000 < vl.f17002c) {
                            j8 = jNanoTime;
                        } else {
                            vl.f17005f = ul.f16837e;
                            vl.a(1);
                            j9 = audioTimestamp2.nanoTime / 1000;
                            j10 = ul.f16837e;
                            jU2 = Et.u(this.f17221f, d());
                            if (Math.abs(j9 - jNanoTime) > 5000000) {
                                C1618lM c1618lM19 = c1102bM.f18040a;
                                long jA19 = c1618lM19.a();
                                long jB19 = c1618lM19.b();
                                StringBuilder sbD19 = p148t.a.d("Spurious audio timestamp (system clock mismatch): ", j10, ", ");
                                sbD19.append(j9);
                                sbD19.append(", ");
                                j8 = jNanoTime;
                                sbD19.append(j8);
                                sbD19.append(", ");
                                sbD19.append(jU2);
                                sbD19.append(", ");
                                sbD19.append(jA19);
                                sbD19.append(", ");
                                sbD19.append(jB19);
                                Zo.f("DefaultAudioSink", sbD19.toString());
                                vl.a(4);
                            } else if (Math.abs(Et.u(this.f17221f, j10) - jU2) > 5000000) {
                                C1618lM c1618lM110 = c1102bM.f18040a;
                                long jA110 = c1618lM110.a();
                                long jB110 = c1618lM110.b();
                                StringBuilder sbD110 = p148t.a.d("Spurious audio timestamp (frame position mismatch): ", j10, ", ");
                                sbD110.append(j9);
                                sbD110.append(", ");
                                j8 = jNanoTime;
                                sbD110.append(j8);
                                sbD110.append(", ");
                                sbD110.append(jU2);
                                sbD110.append(", ");
                                sbD110.append(jA110);
                                sbD110.append(", ");
                                sbD110.append(jB110);
                                Zo.f("DefaultAudioSink", sbD110.toString());
                                vl.a(4);
                            } else {
                                j8 = jNanoTime;
                                if (vl.f17001b == 4) {
                                    vl.a(0);
                                }
                            }
                        }
                    } else {
                        j8 = jNanoTime;
                        if (j8 - vl.f17002c > 500000) {
                            vl.a(3);
                        }
                    }
                }
                if (!this.f17231p) {
                }
            }
        }
        ((Nr) this.f17215G).getClass();
        long jNanoTime2 = System.nanoTime() / 1000;
        VL vl2 = this.f17220e;
        vl2.getClass();
        boolean z8 = vl2.f17001b == 2;
        if (z8) {
            UL ul2 = vl2.f17000a;
            jU = Et.s(jNanoTime2 - (ul2.f16834b.nanoTime / 1000), this.f17224i) + Et.u(this.f17221f, ul2.f16837e);
        } else {
            jU = this.f17238w == 0 ? Et.u(this.f17221f, d()) : Et.s(this.f17226k + jNanoTime2, this.f17224i);
            if (!z7) {
                jU = Math.max(0L, jU - this.f17229n);
            }
        }
        if (this.f17212D != z8) {
            this.f17214F = this.f17211C;
            this.f17213E = this.f17210B;
        }
        long j12 = jNanoTime2 - this.f17214F;
        if (j12 < 1000000) {
            long jS = Et.s(j12, this.f17224i) + this.f17213E;
            long j13 = (j12 * 1000) / 1000000;
            jU = (((1000 - j13) * jS) + (jU * j13)) / 1000;
        }
        if (!this.f17225j) {
            long j14 = this.f17210B;
            if (jU > j14) {
                this.f17225j = true;
                float f9 = this.f17224i;
                long jW = Et.w(jU - j14);
                if (f9 != 1.0f) {
                    jW = Math.round(jW / ((double) f9));
                }
                ((Nr) this.f17215G).getClass();
                final long jCurrentTimeMillis = System.currentTimeMillis() - Et.w(jW);
                C1722nM c1722nM = c1102bM.f18040a.f19771l;
                if (c1722nM != null) {
                    final C1773oL c1773oL = c1722nM.f20167a.f20273y0;
                    Handler handler = (Handler) c1773oL.f20259H;
                    if (handler != null) {
                        handler.post(new Runnable(jCurrentTimeMillis) { // from class: com.google.android.gms.internal.ads.LL
                            @Override // java.lang.Runnable
                            public final void run() {
                                C1773oL c1773oL2 = this.f14503G;
                                c1773oL2.getClass();
                                int i14 = Et.f13234a;
                                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL2.f20260I)).f20880G.f21498p;
                                c2032tL.i(c2032tL.l(), 1010, new C1669mL((AbstractC1513jL) null));
                            }
                        });
                    }
                }
            }
        }
        this.f17211C = jNanoTime2;
        this.f17210B = jU;
        this.f17212D = z8;
        return jU;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    public final void b(AudioTrack audioTrack, boolean z7, int i8, int i9, int i10) {
        boolean z8;
        long jU;
        this.f17218c = audioTrack;
        this.f17219d = i10;
        this.f17220e = new VL(audioTrack);
        this.f17221f = audioTrack.getSampleRate();
        if (!z7 || Et.f13234a >= 23) {
            z8 = false;
        } else {
            z8 = true;
            if (i8 != 5) {
                if (i8 == 6) {
                    i8 = 6;
                } else {
                    z8 = false;
                }
            }
        }
        this.f17222g = z8;
        boolean zC = Et.c(i8);
        this.f17231p = zC;
        if (zC) {
            jU = Et.u(this.f17221f, i10 / i9);
        } else {
            jU = -9223372036854775807L;
        }
        this.f17223h = jU;
        this.f17234s = 0L;
        this.f17235t = 0L;
        this.f17236u = 0L;
        this.f17230o = false;
        this.f17239x = -9223372036854775807L;
        this.f17240y = -9223372036854775807L;
        this.f17232q = 0L;
        this.f17229n = 0L;
        this.f17224i = 1.0f;
    }

    public final boolean c(long j8) {
        long jA = a(false);
        int i8 = this.f17221f;
        int i9 = Et.f13234a;
        if (j8 > Et.v(jA, i8, 1000000L, RoundingMode.CEILING)) {
            return true;
        }
        if (this.f17222g) {
            AudioTrack audioTrack = this.f17218c;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2 && d() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00a6  */
    public final long d() {
        ((Nr) this.f17215G).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i8 = 2;
        if (this.f17239x != -9223372036854775807L) {
            AudioTrack audioTrack = this.f17218c;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2) {
                return this.f17241z;
            }
            return Math.min(this.f17209A, this.f17241z + Et.v(Et.s(Et.t(jElapsedRealtime) - this.f17239x, this.f17224i), this.f17221f, 1000000L, RoundingMode.CEILING));
        }
        if (jElapsedRealtime - this.f17233r >= 5) {
            AudioTrack audioTrack2 = this.f17218c;
            audioTrack2.getClass();
            int playState = audioTrack2.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = ((long) audioTrack2.getPlaybackHeadPosition()) & 4294967295L;
                long j8 = 0;
                if (this.f17222g) {
                    if (playState != 2) {
                        i8 = playState;
                    } else if (playbackHeadPosition == 0) {
                        this.f17236u = this.f17234s;
                    }
                    playbackHeadPosition += this.f17236u;
                    playState = i8;
                }
                if (Et.f13234a > 29) {
                    if (this.f17234s > playbackHeadPosition) {
                        this.f17235t++;
                    }
                    this.f17234s = playbackHeadPosition;
                } else {
                    if (playbackHeadPosition != 0) {
                        j8 = playbackHeadPosition;
                    } else if (this.f17234s > 0 && playState == 3) {
                        if (this.f17240y == -9223372036854775807L) {
                            this.f17240y = jElapsedRealtime;
                        }
                    }
                    this.f17240y = -9223372036854775807L;
                    playbackHeadPosition = j8;
                    if (this.f17234s > playbackHeadPosition) {
                        this.f17235t++;
                    }
                    this.f17234s = playbackHeadPosition;
                }
            }
            this.f17233r = jElapsedRealtime;
        }
        return this.f17234s + (this.f17235t << 32);
    }
}
