package D0;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.os.Build;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.math.RoundingMode;
import p117p0.InterfaceC3168f;

/* JADX INFO: renamed from: D0.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0135z {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f1992A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f1993B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public long f1994C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f1995D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public long f1996E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public long f1997F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f1998G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f1999H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public InterfaceC3168f f2000I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f2001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f2002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AudioTrack f2003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0133x f2005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2006f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2007g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f2008h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2009i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2010j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f2011k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2012l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f2013m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f2014n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Method f2015o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f2016p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2017q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2018r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f2019s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f2020t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f2021u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f2022v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f2023w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2024x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2025y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f2026z;

    public C0135z(N n7) {
        this.f2001a = n7;
        try {
            this.f2015o = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f2002b = new long[10];
        this.f1997F = -9223372036854775807L;
        this.f1996E = -9223372036854775807L;
        this.f2000I = InterfaceC3168f.f28080a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:101:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:103:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:104:0x0318  */
    /* JADX WARN: Code duplicated, block: B:107:0x0323  */
    /* JADX WARN: Code duplicated, block: B:113:0x032d  */
    /* JADX WARN: Code duplicated, block: B:116:0x033b  */
    /* JADX WARN: Code duplicated, block: B:131:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:133:0x03af  */
    /* JADX WARN: Code duplicated, block: B:135:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:18:0x007f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0083  */
    /* JADX WARN: Code duplicated, block: B:27:0x00c2 A[Catch: Exception -> 0x00db, TRY_LEAVE, TryCatch #0 {Exception -> 0x00db, blocks: (B:25:0x0098, B:27:0x00c2), top: B:137:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:36:0x0105  */
    /* JADX WARN: Code duplicated, block: B:38:0x010f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0113  */
    /* JADX WARN: Code duplicated, block: B:41:0x011e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0128  */
    /* JADX WARN: Code duplicated, block: B:44:0x013a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0141  */
    /* JADX WARN: Code duplicated, block: B:49:0x0175  */
    /* JADX WARN: Code duplicated, block: B:50:0x01be  */
    /* JADX WARN: Code duplicated, block: B:52:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:53:0x0213  */
    /* JADX WARN: Code duplicated, block: B:55:0x0218  */
    /* JADX WARN: Code duplicated, block: B:56:0x021d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0228  */
    /* JADX WARN: Code duplicated, block: B:61:0x022b  */
    /* JADX WARN: Code duplicated, block: B:63:0x022e  */
    /* JADX WARN: Code duplicated, block: B:65:0x0231  */
    /* JADX WARN: Code duplicated, block: B:68:0x0236  */
    /* JADX WARN: Code duplicated, block: B:70:0x023c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x023e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0244  */
    /* JADX WARN: Code duplicated, block: B:74:0x0247  */
    /* JADX WARN: Code duplicated, block: B:75:0x024c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x024e  */
    /* JADX WARN: Code duplicated, block: B:79:0x0257  */
    /* JADX WARN: Code duplicated, block: B:81:0x0286  */
    /* JADX WARN: Code duplicated, block: B:82:0x028b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0295  */
    /* JADX WARN: Code duplicated, block: B:85:0x029a  */
    /* JADX WARN: Code duplicated, block: B:86:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:87:0x02af  */
    /* JADX WARN: Code duplicated, block: B:89:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:91:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:92:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:94:0x02d3  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x00c2, please report this as an issue */
    public final long a() {
        N n7;
        long jNanoTime;
        C0133x c0133x;
        boolean z7;
        long jC;
        int playState;
        long j8;
        long j9;
        long jCurrentTimeMillis;
        InterfaceC0128s interfaceC0128s;
        long j10;
        long jY;
        long j11;
        int i8;
        C0133x c0133x2;
        float f8;
        long jC2;
        C0132w c0132w;
        AudioTimestamp audioTimestamp;
        boolean timestamp;
        C0133x c0133x3;
        int i9;
        int i10;
        float f9;
        C0132w c0132w2;
        AudioTimestamp audioTimestamp2;
        int i11;
        AudioTimestamp audioTimestamp3;
        long j12;
        long j13;
        long j14;
        int i12;
        float f10;
        long j15;
        long jY2;
        long jAbs;
        N n8;
        long j16;
        long j17;
        Method method;
        long jMax;
        AudioTrack audioTrack = this.f2003c;
        audioTrack.getClass();
        int playState2 = audioTrack.getPlayState();
        N n9 = this.f2001a;
        if (playState2 == 3) {
            ((p117p0.G) this.f2000I).getClass();
            long jNanoTime2 = System.nanoTime() / 1000;
            if (jNanoTime2 - this.f2014n >= 30000) {
                long jX = p117p0.M.X(this.f2006f, b());
                if (jX == 0) {
                    audioTrack = audioTrack;
                    n7 = n9;
                } else {
                    int i13 = this.f2024x;
                    long jC3 = p117p0.M.C(jX, this.f2009i) - jNanoTime2;
                    long[] jArr = this.f2002b;
                    jArr[i13] = jC3;
                    this.f2024x = (this.f2024x + 1) % 10;
                    int i14 = this.f2025y;
                    if (i14 < 10) {
                        this.f2025y = i14 + 1;
                    }
                    this.f2014n = jNanoTime2;
                    this.f2013m = 0L;
                    int i15 = 0;
                    while (true) {
                        int i16 = this.f2025y;
                        if (i15 >= i16) {
                            break;
                        }
                        this.f2013m = (jArr[i15] / ((long) i16)) + this.f2013m;
                        i15++;
                        n9 = n9;
                    }
                    n7 = n9;
                    if (this.f2007g) {
                        audioTrack = audioTrack;
                    } else {
                        if (this.f2018r && (method = this.f2015o) != null && jNanoTime2 - this.f2019s >= 500000) {
                            try {
                                AudioTrack audioTrack2 = this.f2003c;
                                audioTrack2.getClass();
                                Integer num = (Integer) method.invoke(audioTrack2, new Object[0]);
                                String str = p117p0.M.f28050a;
                                long jIntValue = (((long) num.intValue()) * 1000) - this.f2008h;
                                this.f2016p = jIntValue;
                                jMax = Math.max(jIntValue, 0L);
                                this.f2016p = jMax;
                                if (jMax > 5000000) {
                                    n7.getClass();
                                    p117p0.x.f("DefaultAudioSink", "Ignoring impossibly large audio latency: " + jMax);
                                    this.f2016p = 0L;
                                }
                            } catch (Exception unused) {
                                this.f2015o = null;
                            }
                            this.f2019s = jNanoTime2;
                        }
                        c0133x2 = this.f2005e;
                        c0133x2.getClass();
                        f8 = this.f2009i;
                        jC2 = c(jNanoTime2);
                        if (jNanoTime2 - c0133x2.f1989g < c0133x2.f1988f) {
                            audioTrack = audioTrack;
                        } else {
                            c0133x2.f1989g = jNanoTime2;
                            c0132w = c0133x2.f1983a;
                            AudioTrack audioTrack3 = c0132w.f1976a;
                            audioTimestamp = c0132w.f1977b;
                            timestamp = audioTrack3.getTimestamp(audioTimestamp);
                            if (timestamp) {
                                j16 = audioTimestamp.framePosition;
                                j17 = c0132w.f1979d;
                                if (j17 <= j16) {
                                    if (c0132w.f1981f) {
                                        c0132w.f1982g += j17;
                                        c0132w.f1981f = false;
                                    } else {
                                        c0132w.f1978c++;
                                    }
                                }
                                c0132w.f1979d = j16;
                                c0132w.f1980e = j16 + c0132w.f1982g + (c0132w.f1978c << 32);
                                c0133x3 = c0133x2;
                            } else {
                                audioTrack = audioTrack;
                                c0133x3 = c0133x2;
                            }
                            i9 = c0133x3.f1984b;
                            if (timestamp) {
                                j15 = audioTimestamp.nanoTime / 1000;
                                jY2 = p117p0.M.y(jNanoTime2 - (c0132w.f1977b.nanoTime / 1000), f8) + p117p0.M.X(i9, c0132w.f1980e);
                                jAbs = Math.abs(j15 - jNanoTime2);
                                audioTimestamp2 = audioTimestamp;
                                f9 = f8;
                                n8 = c0133x3.f1985c;
                                if (jAbs > 5000000) {
                                    c0132w2 = c0132w;
                                    long j18 = c0132w2.f1980e;
                                    n8.getClass();
                                    i10 = i9;
                                    StringBuilder sb = new StringBuilder("Spurious audio timestamp (system clock mismatch): ");
                                    sb.append(j18);
                                    sb.append(", ");
                                    sb.append(j15);
                                    sb.append(", ");
                                    sb.append(jNanoTime2);
                                    sb.append(", ");
                                    sb.append(jC2);
                                    sb.append(", ");
                                    S s7 = n8.f1783a;
                                    sb.append(s7.l());
                                    sb.append(", ");
                                    sb.append(s7.m());
                                    String string = sb.toString();
                                    Object obj = S.f1790p0;
                                    p117p0.x.f("DefaultAudioSink", string);
                                    c0133x3.a(4);
                                } else {
                                    c0132w2 = c0132w;
                                    i10 = i9;
                                    if (Math.abs(jY2 - jC2) > 5000000) {
                                        long j19 = c0132w2.f1980e;
                                        n8.getClass();
                                        StringBuilder sb2 = new StringBuilder("Spurious audio timestamp (frame position mismatch): ");
                                        sb2.append(j19);
                                        sb2.append(", ");
                                        sb2.append(j15);
                                        sb2.append(", ");
                                        sb2.append(jNanoTime2);
                                        sb2.append(", ");
                                        sb2.append(jC2);
                                        sb2.append(", ");
                                        S s8 = n8.f1783a;
                                        sb2.append(s8.l());
                                        sb2.append(", ");
                                        sb2.append(s8.m());
                                        String string2 = sb2.toString();
                                        Object obj2 = S.f1790p0;
                                        p117p0.x.f("DefaultAudioSink", string2);
                                        c0133x3.a(4);
                                    } else if (c0133x3.f1986d == 4) {
                                        c0133x3.a(0);
                                    }
                                }
                            } else {
                                i10 = i9;
                                f9 = f8;
                                c0132w2 = c0132w;
                                audioTimestamp2 = audioTimestamp;
                            }
                            i11 = c0133x3.f1986d;
                            if (i11 != 0) {
                                audioTimestamp3 = audioTimestamp2;
                                if (timestamp) {
                                    j12 = audioTimestamp3.nanoTime;
                                    if (j12 / 1000 >= c0133x3.f1987e) {
                                        c0133x3.f1990h = c0132w2.f1980e;
                                        c0133x3.f1991i = j12 / 1000;
                                        c0133x3.a(1);
                                    }
                                } else if (jNanoTime2 - c0133x3.f1987e > 500000) {
                                    c0133x3.a(3);
                                }
                            } else if (i11 != 1) {
                                if (i11 != 2) {
                                    if (i11 != 3) {
                                        if (i11 != 4) {
                                            throw new IllegalStateException();
                                        }
                                    } else if (timestamp) {
                                        c0133x3.a(0);
                                    }
                                } else if (!timestamp) {
                                    c0133x3.a(0);
                                }
                            } else if (timestamp) {
                                j13 = c0132w2.f1980e;
                                j14 = c0133x3.f1990h;
                                if (j13 <= j14) {
                                    i12 = i10;
                                    f10 = f9;
                                    if (Math.abs((p117p0.M.y(jNanoTime2 - (c0132w2.f1977b.nanoTime / 1000), f10) + p117p0.M.X(i12, c0132w2.f1980e)) - (p117p0.M.y(jNanoTime2 - c0133x3.f1991i, f10) + p117p0.M.X(i12, j14))) < 1000) {
                                        c0133x3.a(2);
                                    } else if (jNanoTime2 - c0133x3.f1987e > 2000000) {
                                        c0133x3.a(3);
                                    } else {
                                        c0133x3.f1990h = c0132w2.f1980e;
                                        c0133x3.f1991i = audioTimestamp2.nanoTime / 1000;
                                    }
                                } else if (jNanoTime2 - c0133x3.f1987e > 2000000) {
                                    c0133x3.a(3);
                                } else {
                                    c0133x3.f1990h = c0132w2.f1980e;
                                    c0133x3.f1991i = audioTimestamp2.nanoTime / 1000;
                                }
                            } else {
                                c0133x3.a(0);
                            }
                        }
                    }
                }
            } else {
                n7 = n9;
                if (this.f2007g) {
                    if (this.f2018r) {
                        AudioTrack audioTrack4 = this.f2003c;
                        audioTrack4.getClass();
                        Integer num2 = (Integer) method.invoke(audioTrack4, new Object[0]);
                        String str2 = p117p0.M.f28050a;
                        long jIntValue2 = (((long) num2.intValue()) * 1000) - this.f2008h;
                        this.f2016p = jIntValue2;
                        jMax = Math.max(jIntValue2, 0L);
                        this.f2016p = jMax;
                        if (jMax > 5000000) {
                            n7.getClass();
                            p117p0.x.f("DefaultAudioSink", "Ignoring impossibly large audio latency: " + jMax);
                            this.f2016p = 0L;
                        }
                        this.f2019s = jNanoTime2;
                    }
                    c0133x2 = this.f2005e;
                    c0133x2.getClass();
                    f8 = this.f2009i;
                    jC2 = c(jNanoTime2);
                    if (jNanoTime2 - c0133x2.f1989g < c0133x2.f1988f) {
                        audioTrack = audioTrack;
                    } else {
                        c0133x2.f1989g = jNanoTime2;
                        c0132w = c0133x2.f1983a;
                        AudioTrack audioTrack5 = c0132w.f1976a;
                        audioTimestamp = c0132w.f1977b;
                        timestamp = audioTrack5.getTimestamp(audioTimestamp);
                        if (timestamp) {
                            j16 = audioTimestamp.framePosition;
                            j17 = c0132w.f1979d;
                            if (j17 <= j16) {
                                if (c0132w.f1981f) {
                                    c0132w.f1982g += j17;
                                    c0132w.f1981f = false;
                                } else {
                                    c0132w.f1978c++;
                                }
                            }
                            c0132w.f1979d = j16;
                            c0132w.f1980e = j16 + c0132w.f1982g + (c0132w.f1978c << 32);
                            c0133x3 = c0133x2;
                        } else {
                            audioTrack = audioTrack;
                            c0133x3 = c0133x2;
                        }
                        i9 = c0133x3.f1984b;
                        if (timestamp) {
                            j15 = audioTimestamp.nanoTime / 1000;
                            jY2 = p117p0.M.y(jNanoTime2 - (c0132w.f1977b.nanoTime / 1000), f8) + p117p0.M.X(i9, c0132w.f1980e);
                            jAbs = Math.abs(j15 - jNanoTime2);
                            audioTimestamp2 = audioTimestamp;
                            f9 = f8;
                            n8 = c0133x3.f1985c;
                            if (jAbs > 5000000) {
                                c0132w2 = c0132w;
                                long j110 = c0132w2.f1980e;
                                n8.getClass();
                                i10 = i9;
                                StringBuilder sb3 = new StringBuilder("Spurious audio timestamp (system clock mismatch): ");
                                sb3.append(j110);
                                sb3.append(", ");
                                sb3.append(j15);
                                sb3.append(", ");
                                sb3.append(jNanoTime2);
                                sb3.append(", ");
                                sb3.append(jC2);
                                sb3.append(", ");
                                S s9 = n8.f1783a;
                                sb3.append(s9.l());
                                sb3.append(", ");
                                sb3.append(s9.m());
                                String string3 = sb3.toString();
                                Object obj3 = S.f1790p0;
                                p117p0.x.f("DefaultAudioSink", string3);
                                c0133x3.a(4);
                            } else {
                                c0132w2 = c0132w;
                                i10 = i9;
                                if (Math.abs(jY2 - jC2) > 5000000) {
                                    long j111 = c0132w2.f1980e;
                                    n8.getClass();
                                    StringBuilder sb4 = new StringBuilder("Spurious audio timestamp (frame position mismatch): ");
                                    sb4.append(j111);
                                    sb4.append(", ");
                                    sb4.append(j15);
                                    sb4.append(", ");
                                    sb4.append(jNanoTime2);
                                    sb4.append(", ");
                                    sb4.append(jC2);
                                    sb4.append(", ");
                                    S s10 = n8.f1783a;
                                    sb4.append(s10.l());
                                    sb4.append(", ");
                                    sb4.append(s10.m());
                                    String string4 = sb4.toString();
                                    Object obj4 = S.f1790p0;
                                    p117p0.x.f("DefaultAudioSink", string4);
                                    c0133x3.a(4);
                                } else if (c0133x3.f1986d == 4) {
                                    c0133x3.a(0);
                                }
                            }
                        } else {
                            i10 = i9;
                            f9 = f8;
                            c0132w2 = c0132w;
                            audioTimestamp2 = audioTimestamp;
                        }
                        i11 = c0133x3.f1986d;
                        if (i11 != 0) {
                            audioTimestamp3 = audioTimestamp2;
                            if (timestamp) {
                                j12 = audioTimestamp3.nanoTime;
                                if (j12 / 1000 >= c0133x3.f1987e) {
                                    c0133x3.f1990h = c0132w2.f1980e;
                                    c0133x3.f1991i = j12 / 1000;
                                    c0133x3.a(1);
                                }
                            } else if (jNanoTime2 - c0133x3.f1987e > 500000) {
                                c0133x3.a(3);
                            }
                        } else if (i11 != 1) {
                            if (i11 != 2) {
                                if (i11 != 3) {
                                    if (i11 != 4) {
                                        throw new IllegalStateException();
                                    }
                                } else if (timestamp) {
                                    c0133x3.a(0);
                                }
                            } else if (!timestamp) {
                                c0133x3.a(0);
                            }
                        } else if (timestamp) {
                            j13 = c0132w2.f1980e;
                            j14 = c0133x3.f1990h;
                            if (j13 <= j14) {
                                i12 = i10;
                                f10 = f9;
                                if (Math.abs((p117p0.M.y(jNanoTime2 - (c0132w2.f1977b.nanoTime / 1000), f10) + p117p0.M.X(i12, c0132w2.f1980e)) - (p117p0.M.y(jNanoTime2 - c0133x3.f1991i, f10) + p117p0.M.X(i12, j14))) < 1000) {
                                    c0133x3.a(2);
                                } else if (jNanoTime2 - c0133x3.f1987e > 2000000) {
                                    c0133x3.a(3);
                                } else {
                                    c0133x3.f1990h = c0132w2.f1980e;
                                    c0133x3.f1991i = audioTimestamp2.nanoTime / 1000;
                                }
                            } else if (jNanoTime2 - c0133x3.f1987e > 2000000) {
                                c0133x3.a(3);
                            } else {
                                c0133x3.f1990h = c0132w2.f1980e;
                                c0133x3.f1991i = audioTimestamp2.nanoTime / 1000;
                            }
                        } else {
                            c0133x3.a(0);
                        }
                    }
                } else {
                    audioTrack = audioTrack;
                }
            }
            ((p117p0.G) this.f2000I).getClass();
            jNanoTime = System.nanoTime() / 1000;
            c0133x = this.f2005e;
            c0133x.getClass();
            if (c0133x.f1986d == 2) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (z7) {
                float f11 = this.f2009i;
                C0132w c0132w3 = c0133x.f1983a;
                jC = p117p0.M.y(jNanoTime - (c0132w3.f1977b.nanoTime / 1000), f11) + p117p0.M.X(c0133x.f1984b, c0132w3.f1980e);
            } else {
                jC = c(jNanoTime);
            }
            playState = audioTrack.getPlayState();
            if (playState == 3) {
                if (z7 || ((i8 = c0133x.f1986d) != 0 && i8 != 1)) {
                    f(jC);
                }
                j8 = this.f1997F;
                if (j8 != -9223372036854775807L) {
                    j10 = jC - this.f1996E;
                    jY = p117p0.M.y(jNanoTime - j8, this.f2009i);
                    j11 = this.f1996E + jY;
                    long jAbs2 = Math.abs(j11 - jC);
                    if (j10 != 0 && jAbs2 < 1000000) {
                        long j20 = (jY * 10) / 100;
                        jC = p117p0.M.j(jC, j11 - j20, j11 + j20);
                    }
                }
                if (!this.f1995D && !this.f2010j) {
                    j9 = this.f1996E;
                    if (j9 != -9223372036854775807L && jC > j9) {
                        this.f2010j = true;
                        long jC4 = p117p0.M.C(p117p0.M.e0(jC - j9), this.f2009i);
                        ((p117p0.G) this.f2000I).getClass();
                        jCurrentTimeMillis = System.currentTimeMillis() - p117p0.M.e0(jC4);
                        interfaceC0128s = n7.f1783a.f1854u;
                        if (interfaceC0128s != null) {
                            interfaceC0128s.h(jCurrentTimeMillis);
                        }
                    }
                }
                this.f1997F = jNanoTime;
                this.f1996E = jC;
            } else if (playState == 1) {
                f(jC);
            }
            return jC;
        }
        audioTrack = audioTrack;
        n7 = n9;
        ((p117p0.G) this.f2000I).getClass();
        jNanoTime = System.nanoTime() / 1000;
        c0133x = this.f2005e;
        c0133x.getClass();
        if (c0133x.f1986d == 2) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (z7) {
            float f12 = this.f2009i;
            C0132w c0132w4 = c0133x.f1983a;
            jC = p117p0.M.y(jNanoTime - (c0132w4.f1977b.nanoTime / 1000), f12) + p117p0.M.X(c0133x.f1984b, c0132w4.f1980e);
        } else {
            jC = c(jNanoTime);
        }
        playState = audioTrack.getPlayState();
        if (playState == 3) {
            if (z7) {
                f(jC);
            } else {
                f(jC);
            }
            j8 = this.f1997F;
            if (j8 != -9223372036854775807L) {
                j10 = jC - this.f1996E;
                jY = p117p0.M.y(jNanoTime - j8, this.f2009i);
                j11 = this.f1996E + jY;
                long jAbs3 = Math.abs(j11 - jC);
                if (j10 != 0) {
                    long j21 = (jY * 10) / 100;
                    jC = p117p0.M.j(jC, j11 - j21, j11 + j21);
                }
            }
            if (!this.f1995D) {
                j9 = this.f1996E;
                if (j9 != -9223372036854775807L) {
                    this.f2010j = true;
                    long jC5 = p117p0.M.C(p117p0.M.e0(jC - j9), this.f2009i);
                    ((p117p0.G) this.f2000I).getClass();
                    jCurrentTimeMillis = System.currentTimeMillis() - p117p0.M.e0(jC5);
                    interfaceC0128s = n7.f1783a.f1854u;
                    if (interfaceC0128s != null) {
                        interfaceC0128s.h(jCurrentTimeMillis);
                    }
                }
            }
            this.f1997F = jNanoTime;
            this.f1996E = jC;
        } else if (playState == 1) {
            f(jC);
        }
        return jC;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    public final long b() {
        long j8;
        if (this.f2026z != -9223372036854775807L) {
            return Math.min(this.f1994C, d());
        }
        ((p117p0.G) this.f2000I).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f2020t >= 5) {
            AudioTrack audioTrack = this.f2003c;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
                if (this.f2007g) {
                    if (playState == 2 && playbackHeadPosition == 0) {
                        this.f2023w = this.f2021u;
                    }
                    playbackHeadPosition += this.f2023w;
                }
                if (Build.VERSION.SDK_INT > 29) {
                    j8 = this.f2021u;
                    if (j8 > playbackHeadPosition) {
                        if (this.f1998G) {
                            this.f1999H += j8;
                            this.f1998G = false;
                        } else {
                            this.f2022v++;
                        }
                    }
                    this.f2021u = playbackHeadPosition;
                } else if (playbackHeadPosition != 0 || this.f2021u <= 0 || playState != 3) {
                    this.f1992A = -9223372036854775807L;
                    j8 = this.f2021u;
                    if (j8 > playbackHeadPosition) {
                        if (this.f1998G) {
                            this.f1999H += j8;
                            this.f1998G = false;
                        } else {
                            this.f2022v++;
                        }
                    }
                    this.f2021u = playbackHeadPosition;
                } else if (this.f1992A == -9223372036854775807L) {
                    this.f1992A = jElapsedRealtime;
                }
            }
            this.f2020t = jElapsedRealtime;
        }
        return this.f2021u + this.f1999H + (this.f2022v << 32);
    }

    public final long c(long j8) {
        long jY;
        if (this.f2025y != 0) {
            jY = p117p0.M.y(j8 + this.f2013m, this.f2009i);
        } else if (this.f2026z != -9223372036854775807L) {
            jY = p117p0.M.X(this.f2006f, d());
        } else {
            jY = p117p0.M.X(this.f2006f, b());
        }
        long jMax = Math.max(0L, jY - this.f2016p);
        if (this.f2026z == -9223372036854775807L) {
            return jMax;
        }
        return Math.min(p117p0.M.X(this.f2006f, this.f1994C), jMax);
    }

    public final long d() {
        AudioTrack audioTrack = this.f2003c;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.f1993B;
        }
        ((p117p0.G) this.f2000I).getClass();
        return this.f1993B + p117p0.M.Z(p117p0.M.y(p117p0.M.R(SystemClock.elapsedRealtime()) - this.f2026z, this.f2009i), this.f2006f, 1000000L, RoundingMode.UP);
    }

    public final boolean e(long j8) {
        long jA = a();
        int i8 = this.f2006f;
        String str = p117p0.M.f28050a;
        if (j8 <= p117p0.M.Z(jA, i8, 1000000L, RoundingMode.UP)) {
            if (this.f2007g) {
                AudioTrack audioTrack = this.f2003c;
                audioTrack.getClass();
                if (audioTrack.getPlayState() != 2 || b() != 0) {
                }
            }
            return false;
        }
        return true;
    }

    public final void f(long j8) {
        if (this.f1995D) {
            long j9 = this.f2011k;
            if (j9 == -9223372036854775807L || j8 < j9) {
                return;
            }
            long jC = p117p0.M.C(j8 - j9, this.f2009i);
            ((p117p0.G) this.f2000I).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() - p117p0.M.e0(jC);
            this.f2011k = -9223372036854775807L;
            InterfaceC0128s interfaceC0128s = this.f2001a.f1783a.f1854u;
            if (interfaceC0128s != null) {
                interfaceC0128s.h(jCurrentTimeMillis);
            }
        }
    }

    public final void g() {
        this.f2013m = 0L;
        this.f2025y = 0;
        this.f2024x = 0;
        this.f2014n = 0L;
        this.f1996E = -9223372036854775807L;
        this.f1997F = -9223372036854775807L;
        this.f2010j = false;
    }
}
