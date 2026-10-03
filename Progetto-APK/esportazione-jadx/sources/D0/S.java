package D0;

import B0.AbstractC0067q;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p094m0.C3121d;
import p094m0.C3122e;
import p094m0.C3136t;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class S implements InterfaceC0131v {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final Object f1790p0 = new Object();

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static ScheduledExecutorService f1791q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f1792r0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public C0116f f1793A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public p096m2.u f1794B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public C3121d f1795C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public K f1796D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public K f1797E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public p094m0.S f1798F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f1799G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ByteBuffer f1800H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f1801I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f1802J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f1803K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f1804L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f1805M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f1806N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f1807O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f1808P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public long f1809Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public float f1810R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public ByteBuffer f1811S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f1812T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ByteBuffer f1813U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f1814V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f1815W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f1816X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f1817Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f1818Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1819a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f1820a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p096m2.u f1821b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f1822b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1823c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public C3122e f1824c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final A f1825d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public p039f.S f1826d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Z f1827e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f1828e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p102n0.k f1829f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public long f1830f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Y f1831g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public long f1832g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d0 f1833h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f1834h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0135z f1835i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f1836i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayDeque f1837j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Looper f1838j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1839k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f1840k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1841l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public long f1842l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Q f1843m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Handler f1844m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final M f1845n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Context f1846n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final M f1847o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final boolean f1848o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final G f1849p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C f1850q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final H f1851r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f1852s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C0.I f1853t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public InterfaceC0128s f1854u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public J f1855v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public J f1856w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public p102n0.d f1857x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public AudioTrack f1858y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public C0114d f1859z;

    public S(I i8) {
        Context context;
        int deviceId;
        Context context2 = i8.f1754a;
        Context applicationContext = context2 == null ? null : context2.getApplicationContext();
        this.f1819a = applicationContext;
        this.f1795C = C3121d.f26823b;
        this.f1859z = applicationContext == null ? i8.f1755b : null;
        this.f1821b = i8.f1756c;
        this.f1823c = i8.f1757d;
        int i9 = Build.VERSION.SDK_INT;
        this.f1839k = i9 >= 23 && i8.f1758e;
        this.f1841l = 0;
        this.f1849p = i8.f1760g;
        C c8 = i8.f1762i;
        c8.getClass();
        this.f1850q = c8;
        this.f1835i = new C0135z(new N(this));
        A a8 = new A();
        this.f1825d = a8;
        Z z7 = new Z();
        z7.f1909m = p117p0.M.f28051b;
        this.f1827e = z7;
        this.f1829f = new p102n0.k();
        this.f1831g = new Y();
        this.f1833h = z4.H.y(z7, a8);
        this.f1810R = 1.0f;
        this.f1820a0 = 0;
        this.f1824c0 = new C3122e();
        p094m0.S s7 = p094m0.S.f26785d;
        this.f1797E = new K(s7, 0L, 0L);
        this.f1798F = s7;
        this.f1799G = false;
        this.f1837j = new ArrayDeque();
        this.f1845n = new M();
        this.f1847o = new M();
        this.f1851r = i8.f1761h;
        int i10 = -1;
        if (i9 >= 34 && (context = i8.f1754a) != null && (deviceId = context.getDeviceId()) != 0 && deviceId != -1) {
            i10 = deviceId;
        }
        this.f1852s = i10;
        this.f1848o0 = true;
    }

    public static boolean r(AudioTrack audioTrack) {
        return Build.VERSION.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    public final void A(int i8) {
        if (this.f1822b0) {
            if (this.f1820a0 != i8) {
                return;
            } else {
                this.f1822b0 = false;
            }
        }
        if (this.f1820a0 != i8) {
            this.f1820a0 = i8;
            this.f1818Z = i8 != 0;
            g();
        }
    }

    public final void B() {
        if (q()) {
            try {
                this.f1858y.setPlaybackParams(AbstractC0067q.n().allowDefaults().setSpeed(this.f1798F.f26786a).setPitch(this.f1798F.f26787b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e8) {
                p117p0.x.g("DefaultAudioSink", "Failed to set playback params", e8);
            }
            p094m0.S s7 = new p094m0.S(this.f1858y.getPlaybackParams().getSpeed(), this.f1858y.getPlaybackParams().getPitch());
            this.f1798F = s7;
            float f8 = s7.f26786a;
            C0135z c0135z = this.f1835i;
            c0135z.f2009i = f8;
            C0133x c0133x = c0135z.f2005e;
            if (c0133x != null) {
                c0133x.a(0);
            }
            c0135z.g();
        }
    }

    public final void C(C3122e c3122e) {
        if (this.f1824c0.equals(c3122e)) {
            return;
        }
        c3122e.getClass();
        if (this.f1858y != null) {
            this.f1824c0.getClass();
        }
        this.f1824c0 = c3122e;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    /* JADX WARN: Code duplicated, block: B:47:0x013e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0141  */
    /* JADX WARN: Code duplicated, block: B:51:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0146  */
    /* JADX WARN: Code duplicated, block: B:54:0x014a  */
    /* JADX WARN: Code duplicated, block: B:56:0x014e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0152  */
    /* JADX WARN: Code duplicated, block: B:60:0x0156  */
    /* JADX WARN: Code duplicated, block: B:63:0x0174  */
    /* JADX WARN: Code duplicated, block: B:64:0x0187  */
    /* JADX WARN: Code duplicated, block: B:65:0x0194  */
    /* JADX WARN: Code duplicated, block: B:66:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:67:0x01be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:69:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:70:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0055 A[SYNTHETIC] */
    public final void D(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferOrder;
        int i8;
        byte b8;
        int i9;
        int i10;
        int i11;
        float f8;
        H1.i(this.f1813U == null);
        if (byteBuffer.hasRemaining()) {
            if (this.f1856w.f1765c != 0) {
                byteBufferOrder = byteBuffer;
            } else {
                int iZ = (int) p117p0.M.Z(p117p0.M.R(20L), this.f1856w.f1767e, 1000000L, RoundingMode.UP);
                long jM = m();
                long j8 = iZ;
                if (jM >= j8) {
                    byteBufferOrder = byteBuffer;
                } else {
                    J j9 = this.f1856w;
                    int i12 = j9.f1769g;
                    int i13 = (int) jM;
                    byteBufferOrder = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
                    int iPosition = byteBuffer.position();
                    while (byteBuffer.hasRemaining() && i13 < iZ) {
                        if (i12 != 2) {
                            if (i12 == 3) {
                                i10 = (byteBuffer.get() & 255) << 24;
                            } else if (i12 == 4) {
                                float fH = p117p0.M.h(byteBuffer.getFloat(), -1.0f, 1.0f);
                                if (fH < 0.0f) {
                                    fH = -fH;
                                    f8 = -2.1474836E9f;
                                } else {
                                    f8 = 2.1474836E9f;
                                }
                                i10 = (int) (fH * f8);
                            } else if (i12 != 21) {
                                if (i12 == 22) {
                                    i8 = (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                    b8 = byteBuffer.get();
                                } else if (i12 == 268435456) {
                                    i8 = (byteBuffer.get() & 255) << 24;
                                    i9 = (byteBuffer.get() & 255) << 16;
                                } else if (i12 == 1342177280) {
                                    i8 = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
                                    i9 = (byteBuffer.get() & 255) << 8;
                                } else {
                                    if (i12 != 1610612736) {
                                        throw new IllegalStateException();
                                    }
                                    i8 = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8);
                                    i9 = byteBuffer.get() & 255;
                                }
                                i10 = i8 | i9;
                            } else {
                                i8 = ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                b8 = byteBuffer.get();
                            }
                            i11 = (int) ((((long) i10) * ((long) i13)) / j8);
                            if (i12 != 2) {
                                byteBufferOrder.put((byte) (i11 >> 16));
                                byteBufferOrder.put((byte) (i11 >> 24));
                            } else if (i12 != 3) {
                                byteBufferOrder.put((byte) (i11 >> 24));
                            } else if (i12 != 4) {
                                if (i12 != 21) {
                                    byteBufferOrder.put((byte) (i11 >> 8));
                                    byteBufferOrder.put((byte) (i11 >> 16));
                                    byteBufferOrder.put((byte) (i11 >> 24));
                                } else if (i12 != 22) {
                                    byteBufferOrder.put((byte) i11);
                                    byteBufferOrder.put((byte) (i11 >> 8));
                                    byteBufferOrder.put((byte) (i11 >> 16));
                                    byteBufferOrder.put((byte) (i11 >> 24));
                                } else if (i12 != 268435456) {
                                    byteBufferOrder.put((byte) (i11 >> 24));
                                    byteBufferOrder.put((byte) (i11 >> 16));
                                } else if (i12 != 1342177280) {
                                    byteBufferOrder.put((byte) (i11 >> 24));
                                    byteBufferOrder.put((byte) (i11 >> 16));
                                    byteBufferOrder.put((byte) (i11 >> 8));
                                } else {
                                    if (i12 == 1610612736) {
                                        throw new IllegalStateException();
                                    }
                                    byteBufferOrder.put((byte) (i11 >> 24));
                                    byteBufferOrder.put((byte) (i11 >> 16));
                                    byteBufferOrder.put((byte) (i11 >> 8));
                                    byteBufferOrder.put((byte) i11);
                                }
                            } else if (i11 < 0) {
                                byteBufferOrder.putFloat((-i11) / (-2.1474836E9f));
                            } else {
                                byteBufferOrder.putFloat(i11 / 2.1474836E9f);
                            }
                            if (byteBuffer.position() == j9.f1766d + iPosition) {
                                i13++;
                                iPosition = byteBuffer.position();
                            }
                        } else {
                            i8 = (byteBuffer.get() & 255) << 16;
                            b8 = byteBuffer.get();
                        }
                        i9 = (b8 & 255) << 24;
                        i10 = i8 | i9;
                        i11 = (int) ((((long) i10) * ((long) i13)) / j8);
                        if (i12 != 2) {
                            byteBufferOrder.put((byte) (i11 >> 16));
                            byteBufferOrder.put((byte) (i11 >> 24));
                        } else if (i12 != 3) {
                            byteBufferOrder.put((byte) (i11 >> 24));
                        } else if (i12 != 4) {
                            if (i12 != 21) {
                                byteBufferOrder.put((byte) (i11 >> 8));
                                byteBufferOrder.put((byte) (i11 >> 16));
                                byteBufferOrder.put((byte) (i11 >> 24));
                            } else if (i12 != 22) {
                                byteBufferOrder.put((byte) i11);
                                byteBufferOrder.put((byte) (i11 >> 8));
                                byteBufferOrder.put((byte) (i11 >> 16));
                                byteBufferOrder.put((byte) (i11 >> 24));
                            } else if (i12 != 268435456) {
                                byteBufferOrder.put((byte) (i11 >> 24));
                                byteBufferOrder.put((byte) (i11 >> 16));
                            } else if (i12 != 1342177280) {
                                byteBufferOrder.put((byte) (i11 >> 24));
                                byteBufferOrder.put((byte) (i11 >> 16));
                                byteBufferOrder.put((byte) (i11 >> 8));
                            } else {
                                if (i12 == 1610612736) {
                                    throw new IllegalStateException();
                                }
                                byteBufferOrder.put((byte) (i11 >> 24));
                                byteBufferOrder.put((byte) (i11 >> 16));
                                byteBufferOrder.put((byte) (i11 >> 8));
                                byteBufferOrder.put((byte) i11);
                            }
                        } else if (i11 < 0) {
                            byteBufferOrder.putFloat((-i11) / (-2.1474836E9f));
                        } else {
                            byteBufferOrder.putFloat(i11 / 2.1474836E9f);
                        }
                        if (byteBuffer.position() == j9.f1766d + iPosition) {
                            i13++;
                            iPosition = byteBuffer.position();
                        }
                    }
                    byteBufferOrder.put(byteBuffer);
                    byteBufferOrder.flip();
                }
            }
            this.f1813U = byteBufferOrder;
        }
    }

    public final void E(p094m0.S s7) {
        this.f1798F = new p094m0.S(p117p0.M.h(s7.f26786a, 0.1f, 8.0f), p117p0.M.h(s7.f26787b, 0.1f, 8.0f));
        if (H()) {
            B();
            return;
        }
        K k8 = new K(s7, -9223372036854775807L, -9223372036854775807L);
        if (q()) {
            this.f1796D = k8;
        } else {
            this.f1797E = k8;
        }
    }

    public final void F(AudioDeviceInfo audioDeviceInfo) {
        this.f1826d0 = audioDeviceInfo == null ? null : new p039f.S(audioDeviceInfo, 28);
        C0116f c0116f = this.f1793A;
        if (c0116f != null) {
            c0116f.b(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.f1858y;
        if (audioTrack != null) {
            p039f.S s7 = this.f1826d0;
            audioTrack.setPreferredDevice(s7 != null ? (AudioDeviceInfo) s7.f24988H : null);
        }
    }

    public final boolean G(C3136t c3136t) {
        return k(c3136t) != 0;
    }

    public final boolean H() {
        J j8 = this.f1856w;
        return j8 != null && j8.f1772j && Build.VERSION.SDK_INT >= 23;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    /* JADX WARN: Code duplicated, block: B:48:0x0098  */
    public final void a(long j8) {
        p094m0.S s7;
        boolean zH = H();
        boolean z7 = this.f1823c;
        boolean z8 = false;
        p096m2.u uVar = this.f1821b;
        if (zH) {
            s7 = p094m0.S.f26785d;
        } else {
            if (this.f1828e0) {
                s7 = p094m0.S.f26785d;
            } else {
                J j9 = this.f1856w;
                if (j9.f1765c == 0) {
                    int i8 = j9.f1763a.f27018I;
                    if (z7) {
                        String str = p117p0.M.f28050a;
                        if (i8 == 21 || i8 == 1342177280 || i8 == 22 || i8 == 1610612736 || i8 == 4) {
                            s7 = p094m0.S.f26785d;
                        }
                    }
                    s7 = this.f1798F;
                    p102n0.j jVar = (p102n0.j) uVar.f27280J;
                    float f8 = s7.f26786a;
                    jVar.getClass();
                    H1.d(f8 > 0.0f);
                    if (jVar.f27358c != f8) {
                        jVar.f27358c = f8;
                        jVar.f27364i = true;
                    }
                    p102n0.j jVar2 = (p102n0.j) uVar.f27280J;
                    jVar2.getClass();
                    float f9 = s7.f26787b;
                    H1.d(f9 > 0.0f);
                    if (jVar2.f27359d != f9) {
                        jVar2.f27359d = f9;
                        jVar2.f27364i = true;
                    }
                } else {
                    s7 = p094m0.S.f26785d;
                }
            }
            this.f1798F = s7;
        }
        p094m0.S s8 = s7;
        if (!this.f1828e0) {
            J j10 = this.f1856w;
            if (j10.f1765c == 0) {
                int i9 = j10.f1763a.f27018I;
                if (z7) {
                    String str2 = p117p0.M.f28050a;
                    if (i9 != 21 && i9 != 1342177280 && i9 != 22 && i9 != 1610612736 && i9 != 4) {
                        z8 = this.f1799G;
                        ((X) uVar.f27279I).f1896o = z8;
                    }
                } else {
                    z8 = this.f1799G;
                    ((X) uVar.f27279I).f1896o = z8;
                }
            }
        }
        this.f1799G = z8;
        this.f1837j.add(new K(s8, Math.max(0L, j8), p117p0.M.X(this.f1856w.f1767e, m())));
        p102n0.d dVar = this.f1856w.f1771i;
        this.f1857x = dVar;
        dVar.b();
        InterfaceC0128s interfaceC0128s = this.f1854u;
        if (interfaceC0128s != null) {
            interfaceC0128s.f(this.f1799G);
        }
    }

    public final AudioTrack b(C0126p c0126p, C3121d c3121d, int i8, C3136t c3136t, Context context) throws r {
        try {
            AudioTrack audioTrackS = ((U4.b) this.f1851r).S(c0126p, c3121d, i8, context);
            int state = audioTrackS.getState();
            if (state == 1) {
                return audioTrackS;
            }
            try {
                audioTrackS.release();
            } catch (Exception unused) {
            }
            throw new r(state, c0126p.f1964b, c0126p.f1965c, c0126p.f1963a, c0126p.f1968f, c3136t, c0126p.f1967e, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e8) {
            throw new r(0, c0126p.f1964b, c0126p.f1965c, c0126p.f1963a, c0126p.f1968f, c3136t, c0126p.f1967e, e8);
        }
    }

    public final AudioTrack c(J j8) throws r {
        int i8;
        Context context;
        Context context2;
        try {
            int i9 = this.f1820a0;
            int i10 = this.f1852s;
            if (i10 == -1 || (context2 = this.f1819a) == null || Build.VERSION.SDK_INT < 34) {
                i8 = i9;
                context = null;
            } else {
                if (this.f1846n0 == null) {
                    this.f1846n0 = context2.createDeviceContext(i10);
                }
                context = this.f1846n0;
                i8 = 0;
            }
            return b(j8.a(), this.f1795C, i8, j8.f1763a, context);
        } catch (r e8) {
            InterfaceC0128s interfaceC0128s = this.f1854u;
            if (interfaceC0128s != null) {
                interfaceC0128s.w(e8);
            }
            throw e8;
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0164  */
    /* JADX WARN: Code duplicated, block: B:70:0x016b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0174  */
    /* JADX WARN: Code duplicated, block: B:73:0x0176  */
    public final void d(C3136t c3136t, int[] iArr) throws C0127q {
        int iIntValue;
        p102n0.d dVar;
        boolean z7;
        int iIntValue2;
        int i8;
        int i9;
        int iS;
        boolean z8;
        int i10;
        int i11;
        int iN;
        boolean z9;
        s();
        boolean zEquals = "audio/raw".equals(c3136t.f27041o);
        boolean z10 = this.f1839k;
        H h8 = this.f1851r;
        String str = c3136t.f27041o;
        int i12 = c3136t.f27017H;
        int i13 = c3136t.f27016G;
        if (zEquals) {
            int i14 = c3136t.f27018I;
            H1.d(p117p0.M.M(i14));
            int iS2 = p117p0.M.s(i14) * i13;
            z4.E e8 = new z4.E(4);
            e8.j0(this.f1833h);
            if (this.f1823c && (i14 == 21 || i14 == 1342177280 || i14 == 22 || i14 == 1610612736 || i14 == 4)) {
                e8.g0(this.f1831g);
            } else {
                e8.g0(this.f1829f);
                e8.h0((p102n0.g[]) this.f1821b.f27278H);
            }
            dVar = new p102n0.d(e8.m0());
            if (dVar.equals(this.f1857x)) {
                dVar = this.f1857x;
            }
            int i15 = c3136t.f27019J;
            Z z11 = this.f1827e;
            z11.f1905i = i15;
            z11.f1906j = c3136t.f27020K;
            this.f1825d.f1739i = iArr;
            try {
                p102n0.e eVarA = dVar.a(new p102n0.e(i12, i13, i14));
                ((U4.b) h8).getClass();
                int i16 = eVarA.f27323b;
                int iR = p117p0.M.r(i16);
                iIntValue = eVarA.f27324c;
                iS = p117p0.M.s(iIntValue) * i16;
                i9 = 0;
                z8 = false;
                i12 = eVarA.f27322a;
                iIntValue2 = iR;
                z7 = z10;
                i8 = iS2;
            } catch (p102n0.f e9) {
                throw new C0127q(e9, c3136t);
            }
        } else {
            p102n0.d dVar2 = new p102n0.d(d0.f31844K);
            C0118h c0118hJ = this.f1841l != 0 ? j(c3136t) : C0118h.f1938d;
            if (this.f1841l == 0 || !c0118hJ.f1939a) {
                Pair pairD = this.f1859z.d(this.f1795C, c3136t);
                if (pairD == null) {
                    throw new C0127q("Unable to configure passthrough for: " + c3136t, c3136t);
                }
                iIntValue = ((Integer) pairD.first).intValue();
                dVar = dVar2;
                z7 = z10;
                iIntValue2 = ((Integer) pairD.second).intValue();
                i8 = -1;
                i9 = 2;
                iS = -1;
                z8 = false;
            } else {
                str.getClass();
                int iD = p094m0.O.d(str, c3136t.f27037k);
                ((U4.b) h8).getClass();
                dVar = dVar2;
                iIntValue2 = p117p0.M.r(i13);
                z8 = c0118hJ.f1940b;
                i9 = 1;
                z7 = true;
                iS = -1;
                iIntValue = iD;
                i8 = -1;
            }
        }
        if (iIntValue == 0) {
            throw new C0127q("Invalid output encoding (mode=" + i9 + ") for: " + c3136t, c3136t);
        }
        if (iIntValue2 == 0) {
            throw new C0127q("Invalid output channel config (mode=" + i9 + ") for: " + c3136t, c3136t);
        }
        boolean zEquals2 = "audio/vnd.dts.hd;profile=lbr".equals(str);
        int i17 = c3136t.f27036j;
        if (zEquals2 && i17 == -1) {
            i17 = 768000;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i12, iIntValue2, iIntValue);
        H1.i(minBufferSize != -2);
        int i18 = iS != -1 ? iS : 1;
        double d6 = z7 ? 8.0d : 1.0d;
        T t7 = (T) this.f1849p;
        t7.getClass();
        if (i9 == 0) {
            dVar = dVar;
            z8 = z8;
            long j8 = i12;
            long j9 = i18;
            i10 = p117p0.M.i(t7.f1862d * minBufferSize, p190y4.k.y(((((long) t7.f1860b) * j8) * j9) / 1000000), p190y4.k.y(((((long) t7.f1861c) * j8) * j9) / 1000000));
        } else if (i9 == 1) {
            int iN2 = E3.f.n(iIntValue);
            H1.i(iN2 != -2147483647);
            i10 = p190y4.k.y((((long) t7.f1864f) * ((long) iN2)) / 1000000);
        } else {
            if (i9 != 2) {
                throw new IllegalArgumentException();
            }
            int i19 = t7.f1863e;
            if (iIntValue == 5) {
                i11 = t7.f1865g;
            } else {
                if (iIntValue == 8) {
                    i11 = t7.f1866h;
                }
                if (i17 != -1) {
                    iN = E3.f.j(i17, 8, RoundingMode.CEILING);
                } else {
                    iN = E3.f.n(iIntValue);
                    if (iN != -2147483647) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    H1.i(z9);
                }
                i10 = p190y4.k.y((((long) i19) * ((long) iN)) / 1000000);
            }
            i19 *= i11;
            if (i17 != -1) {
                iN = E3.f.j(i17, 8, RoundingMode.CEILING);
            } else {
                iN = E3.f.n(iIntValue);
                if (iN != -2147483647) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                H1.i(z9);
            }
            i10 = p190y4.k.y((((long) i19) * ((long) iN)) / 1000000);
        }
        int iMax = (((Math.max(minBufferSize, (int) (((double) i10) * d6)) + i18) - 1) / i18) * i18;
        this.f1834h0 = false;
        J j10 = new J(c3136t, i8, i9, iS, i12, iIntValue2, iIntValue, iMax, dVar, z7, z8, this.f1828e0);
        if (q()) {
            this.f1855v = j10;
        } else {
            this.f1856w = j10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00af  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b2  */
    public final void e(long j8) throws Exception {
        int iWrite;
        InterfaceC0128s interfaceC0128s;
        boolean z7;
        if (this.f1813U == null) {
            return;
        }
        M m7 = this.f1847o;
        boolean z8 = false;
        if (m7.f1780a != null) {
            synchronized (f1790p0) {
                z7 = f1792r0 > 0;
            }
            if (z7 || SystemClock.elapsedRealtime() < m7.f1782c) {
                return;
            }
        }
        int iRemaining = this.f1813U.remaining();
        if (this.f1828e0) {
            H1.i(j8 != -9223372036854775807L);
            if (j8 == Long.MIN_VALUE) {
                j8 = this.f1830f0;
            } else {
                this.f1830f0 = j8;
            }
            AudioTrack audioTrack = this.f1858y;
            ByteBuffer byteBuffer = this.f1813U;
            if (Build.VERSION.SDK_INT >= 26) {
                iWrite = audioTrack.write(byteBuffer, iRemaining, 1, j8 * 1000);
            } else {
                if (this.f1800H == null) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                    this.f1800H = byteBufferAllocate;
                    byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
                    this.f1800H.putInt(1431633921);
                }
                if (this.f1801I == 0) {
                    this.f1800H.putInt(4, iRemaining);
                    this.f1800H.putLong(8, j8 * 1000);
                    this.f1800H.position(0);
                    this.f1801I = iRemaining;
                }
                int iRemaining2 = this.f1800H.remaining();
                if (iRemaining2 <= 0) {
                    iWrite = audioTrack.write(byteBuffer, iRemaining, 1);
                    if (iWrite < 0) {
                        this.f1801I = 0;
                    } else {
                        this.f1801I -= iWrite;
                    }
                } else {
                    int iWrite2 = audioTrack.write(this.f1800H, iRemaining2, 1);
                    if (iWrite2 < 0) {
                        this.f1801I = 0;
                        iWrite = iWrite2;
                    } else if (iWrite2 < iRemaining2) {
                        iWrite = 0;
                    } else {
                        iWrite = audioTrack.write(byteBuffer, iRemaining, 1);
                        if (iWrite < 0) {
                            this.f1801I = 0;
                        } else {
                            this.f1801I -= iWrite;
                        }
                    }
                }
            }
        } else {
            iWrite = this.f1858y.write(this.f1813U, iRemaining, 1);
        }
        this.f1832g0 = SystemClock.elapsedRealtime();
        if (iWrite < 0) {
            if ((Build.VERSION.SDK_INT >= 24 && iWrite == -6) || iWrite == -32) {
                if (m() > 0) {
                    z8 = true;
                } else if (r(this.f1858y)) {
                    if (this.f1856w.f1765c == 1) {
                        this.f1834h0 = true;
                    }
                    z8 = true;
                }
            }
            C0130u c0130u = new C0130u(iWrite, this.f1856w.f1763a, z8);
            InterfaceC0128s interfaceC0128s2 = this.f1854u;
            if (interfaceC0128s2 != null) {
                interfaceC0128s2.w(c0130u);
            }
            if (!c0130u.f1974H || this.f1819a == null) {
                m7.a(c0130u);
                return;
            }
            C0114d c0114d = C0114d.f1916c;
            this.f1859z = c0114d;
            this.f1793A.a(c0114d);
            throw c0130u;
        }
        m7.f1780a = null;
        m7.f1781b = -9223372036854775807L;
        m7.f1782c = -9223372036854775807L;
        if (r(this.f1858y)) {
            if (this.f1805M > 0) {
                this.f1836i0 = false;
            }
            if (this.f1817Y && (interfaceC0128s = this.f1854u) != null && iWrite < iRemaining && !this.f1836i0) {
                interfaceC0128s.n();
            }
        }
        int i8 = this.f1856w.f1765c;
        if (i8 == 0) {
            this.f1804L += (long) iWrite;
        }
        if (iWrite == iRemaining) {
            if (i8 != 0) {
                H1.i(this.f1813U == this.f1811S);
                this.f1805M = (((long) this.f1806N) * ((long) this.f1812T)) + this.f1805M;
            }
            this.f1813U = null;
        }
    }

    public final boolean f() throws Exception {
        if (!this.f1857x.e()) {
            e(Long.MIN_VALUE);
            return this.f1813U == null;
        }
        p102n0.d dVar = this.f1857x;
        if (dVar.e() && !dVar.f27320d) {
            dVar.f27320d = true;
            ((p102n0.g) dVar.f27318b.get(0)).e();
        }
        x(Long.MIN_VALUE);
        if (!this.f1857x.d()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f1813U;
        return byteBuffer == null || !byteBuffer.hasRemaining();
    }

    public final void g() {
        p096m2.u uVar;
        if (q()) {
            this.f1802J = 0L;
            this.f1803K = 0L;
            this.f1804L = 0L;
            this.f1805M = 0L;
            this.f1836i0 = false;
            this.f1806N = 0;
            this.f1797E = new K(this.f1798F, 0L, 0L);
            this.f1809Q = 0L;
            this.f1796D = null;
            this.f1837j.clear();
            this.f1811S = null;
            this.f1812T = 0;
            this.f1813U = null;
            this.f1815W = false;
            this.f1814V = false;
            this.f1816X = false;
            this.f1800H = null;
            this.f1801I = 0;
            this.f1827e.f1911o = 0L;
            p102n0.d dVar = this.f1856w.f1771i;
            this.f1857x = dVar;
            dVar.b();
            AudioTrack audioTrack = this.f1835i.f2003c;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 3) {
                this.f1858y.pause();
            }
            if (r(this.f1858y)) {
                Q q7 = this.f1843m;
                q7.getClass();
                this.f1858y.unregisterStreamEventCallback(q7.f1788b);
                q7.f1787a.removeCallbacksAndMessages(null);
            }
            C0126p c0126pA = this.f1856w.a();
            J j8 = this.f1855v;
            if (j8 != null) {
                this.f1856w = j8;
                this.f1855v = null;
            }
            C0135z c0135z = this.f1835i;
            c0135z.g();
            c0135z.f2003c = null;
            c0135z.f2005e = null;
            if (Build.VERSION.SDK_INT >= 24 && (uVar = this.f1794B) != null) {
                uVar.Q();
                this.f1794B = null;
            }
            AudioTrack audioTrack2 = this.f1858y;
            InterfaceC0128s interfaceC0128s = this.f1854u;
            Handler handler = new Handler(Looper.myLooper());
            synchronized (f1790p0) {
                try {
                    if (f1791q0 == null) {
                        String str = p117p0.M.f28050a;
                        f1791q0 = Executors.newSingleThreadScheduledExecutor(new p117p0.L("ExoPlayer:AudioTrackReleaseThread", 1));
                    }
                    f1792r0++;
                    f1791q0.schedule(new D(audioTrack2, interfaceC0128s, handler, c0126pA, 0), 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f1858y = null;
        }
        M m7 = this.f1847o;
        m7.f1780a = null;
        m7.f1781b = -9223372036854775807L;
        m7.f1782c = -9223372036854775807L;
        M m8 = this.f1845n;
        m8.f1780a = null;
        m8.f1781b = -9223372036854775807L;
        m8.f1782c = -9223372036854775807L;
        this.f1840k0 = 0L;
        this.f1842l0 = 0L;
        Handler handler2 = this.f1844m0;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    public final long h() {
        long j8;
        if (!q()) {
            return -9223372036854775807L;
        }
        if (Build.VERSION.SDK_INT < 23) {
            J j9 = this.f1856w;
            if (j9.f1765c == 0) {
                j8 = ((long) j9.f1767e) * ((long) j9.f1766d);
            } else {
                int iN = E3.f.n(j9.f1769g);
                H1.i(iN != -2147483647);
                j8 = iN;
            }
            return p117p0.M.Z(this.f1856w.f1770h, 1000000L, j8, RoundingMode.DOWN);
        }
        AudioTrack audioTrack = this.f1858y;
        J j10 = this.f1856w;
        if (j10.f1765c == 0) {
            return p117p0.M.X(j10.f1767e, audioTrack.getBufferSizeInFrames());
        }
        long bufferSizeInFrames = audioTrack.getBufferSizeInFrames();
        int iN2 = E3.f.n(j10.f1769g);
        H1.i(iN2 != -2147483647);
        return p117p0.M.Z(bufferSizeInFrames, 1000000L, iN2, RoundingMode.DOWN);
    }

    public final long i() {
        ArrayDeque arrayDeque;
        long j8;
        long jZ;
        if (!q() || this.f1808P) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.f1835i.a(), p117p0.M.X(this.f1856w.f1767e, m()));
        while (true) {
            arrayDeque = this.f1837j;
            if (arrayDeque.isEmpty() || jMin < ((K) arrayDeque.getFirst()).f1777c) {
                break;
            }
            this.f1797E = (K) arrayDeque.remove();
        }
        K k8 = this.f1797E;
        long j9 = jMin - k8.f1777c;
        long jY = p117p0.M.y(j9, k8.f1775a.f26786a);
        boolean zIsEmpty = arrayDeque.isEmpty();
        p096m2.u uVar = this.f1821b;
        if (zIsEmpty) {
            if (((p102n0.j) uVar.f27280J).isActive()) {
                p102n0.j jVar = (p102n0.j) uVar.f27280J;
                if (jVar.f27370o >= 1024) {
                    long j10 = jVar.f27369n;
                    p102n0.i iVar = jVar.f27365j;
                    iVar.getClass();
                    long j11 = j10 - ((long) ((iVar.f27344k * iVar.f27335b) * 2));
                    int i8 = jVar.f27363h.f27322a;
                    int i9 = jVar.f27362g.f27322a;
                    jZ = i8 == i9 ? p117p0.M.Z(j9, j11, jVar.f27370o, RoundingMode.DOWN) : p117p0.M.Z(j9, j11 * ((long) i8), jVar.f27370o * ((long) i9), RoundingMode.DOWN);
                } else {
                    jZ = (long) (((double) jVar.f27358c) * j9);
                }
                j9 = jZ;
            }
            K k9 = this.f1797E;
            j8 = k9.f1776b + j9;
            k9.f1778d = j9 - jY;
        } else {
            K k10 = this.f1797E;
            j8 = k10.f1776b + jY + k10.f1778d;
        }
        long j12 = ((X) uVar.f27279I).f1898q;
        long jX = p117p0.M.X(this.f1856w.f1767e, j12) + j8;
        long j13 = this.f1840k0;
        if (j12 > j13) {
            long jX2 = p117p0.M.X(this.f1856w.f1767e, j12 - j13);
            this.f1840k0 = j12;
            this.f1842l0 += jX2;
            if (this.f1844m0 == null) {
                this.f1844m0 = new Handler(Looper.myLooper());
            }
            this.f1844m0.removeCallbacksAndMessages(null);
            this.f1844m0.postDelayed(new p000a.b(this, 15), 100L);
        }
        return jX;
    }

    public final C0118h j(C3136t c3136t) {
        int i8;
        boolean zBooleanValue;
        if (this.f1834h0) {
            return C0118h.f1938d;
        }
        C3121d c3121d = this.f1795C;
        C c8 = this.f1850q;
        c8.getClass();
        c3136t.getClass();
        c3121d.getClass();
        int i9 = Build.VERSION.SDK_INT;
        if (i9 < 29 || (i8 = c3136t.f27017H) == -1) {
            return C0118h.f1938d;
        }
        Boolean bool = c8.f1742b;
        boolean z7 = false;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            Context context = c8.f1741a;
            if (context != null) {
                String parameters = p102n0.c.f(context).getParameters("offloadVariableRateSupported");
                c8.f1742b = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
            } else {
                c8.f1742b = Boolean.FALSE;
            }
            zBooleanValue = c8.f1742b.booleanValue();
        }
        String str = c3136t.f27041o;
        str.getClass();
        int iD = p094m0.O.d(str, c3136t.f27037k);
        if (iD == 0 || i9 < p117p0.M.p(iD)) {
            return C0118h.f1938d;
        }
        int iR = p117p0.M.r(c3136t.f27016G);
        if (iR == 0) {
            return C0118h.f1938d;
        }
        try {
            AudioFormat audioFormatQ = p117p0.M.q(i8, iR, iD);
            if (i9 < 31) {
                if (!AudioManager.isOffloadedPlaybackSupported(audioFormatQ, (AudioAttributes) c3121d.a().f24988H)) {
                    return C0118h.f1938d;
                }
                C0117g c0117g = new C0117g();
                c0117g.f1935a = true;
                c0117g.f1937c = zBooleanValue;
                return c0117g.a();
            }
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormatQ, (AudioAttributes) c3121d.a().f24988H);
            if (playbackOffloadSupport == 0) {
                return C0118h.f1938d;
            }
            C0117g c0117g2 = new C0117g();
            if (i9 > 32 && playbackOffloadSupport == 2) {
                z7 = true;
            }
            c0117g2.f1935a = true;
            c0117g2.f1936b = z7;
            c0117g2.f1937c = zBooleanValue;
            return c0117g2.a();
        } catch (IllegalArgumentException unused) {
            return C0118h.f1938d;
        }
    }

    public final int k(C3136t c3136t) {
        s();
        if (!"audio/raw".equals(c3136t.f27041o)) {
            return this.f1859z.d(this.f1795C, c3136t) != null ? 2 : 0;
        }
        int i8 = c3136t.f27018I;
        if (p117p0.M.M(i8)) {
            return (i8 == 2 || (this.f1823c && i8 == 4)) ? 2 : 1;
        }
        p117p0.x.f("DefaultAudioSink", "Invalid PCM encoding: " + i8);
        return 0;
    }

    public final long l() {
        J j8 = this.f1856w;
        return j8.f1765c == 0 ? this.f1802J / ((long) j8.f1764b) : this.f1803K;
    }

    public final long m() {
        J j8 = this.f1856w;
        if (j8.f1765c != 0) {
            return this.f1805M;
        }
        long j9 = this.f1804L;
        long j10 = j8.f1766d;
        String str = p117p0.M.f28050a;
        return ((j9 + j10) - 1) / j10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:144:0x024b  */
    /* JADX WARN: Code duplicated, block: B:168:0x0282  */
    /* JADX WARN: Code duplicated, block: B:169:0x0284  */
    /* JADX WARN: Code duplicated, block: B:171:0x0293  */
    /* JADX WARN: Code duplicated, block: B:173:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:174:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:176:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:184:0x02de  */
    /* JADX WARN: Code duplicated, block: B:185:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:187:0x02ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:188:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:190:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:193:0x0305  */
    /* JADX WARN: Code duplicated, block: B:195:0x0318  */
    /* JADX WARN: Code duplicated, block: B:196:0x0329  */
    /* JADX WARN: Code duplicated, block: B:84:0x0137  */
    /* JADX WARN: Code duplicated, block: B:86:0x0147  */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x010b, code lost:
    
        if (r10.b() == 0) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean n(long r26, int r28, java.nio.ByteBuffer r29) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 1192
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: D0.S.n(long, int, java.nio.ByteBuffer):boolean");
    }

    public final boolean o() {
        return q() && !(Build.VERSION.SDK_INT >= 29 && this.f1858y.isOffloadedPlayback() && this.f1816X) && this.f1835i.e(m());
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:96:? A[SYNTHETIC] */
    public final boolean p() throws r {
        boolean z7;
        boolean z8;
        AudioTrack audioTrackC;
        C0116f c0116f;
        C0.I i8;
        M m7 = this.f1845n;
        if (m7.f1780a == null) {
            z8 = false;
        } else {
            synchronized (f1790p0) {
                z7 = f1792r0 > 0;
            }
            if (!z7 && SystemClock.elapsedRealtime() >= m7.f1782c) {
                z8 = false;
            } else {
                z8 = true;
            }
        }
        if (z8) {
            return false;
        }
        try {
            J j8 = this.f1856w;
            j8.getClass();
            audioTrackC = c(j8);
        } catch (r e8) {
            J j9 = this.f1856w;
            if (j9.f1770h > 1000000) {
                J j10 = new J(j9.f1763a, j9.f1764b, j9.f1765c, j9.f1766d, j9.f1767e, j9.f1768f, j9.f1769g, 1000000, j9.f1771i, j9.f1772j, j9.f1773k, j9.f1774l);
                try {
                    audioTrackC = c(j10);
                    this.f1856w = j10;
                } catch (r e9) {
                    e8.addSuppressed(e9);
                    if (this.f1856w.f1765c == 1) {
                        throw e8;
                    }
                    this.f1834h0 = true;
                    throw e8;
                }
            }
            if (this.f1856w.f1765c == 1) {
                throw e8;
            }
            this.f1834h0 = true;
            throw e8;
        }
        this.f1858y = audioTrackC;
        if (r(audioTrackC)) {
            AudioTrack audioTrack = this.f1858y;
            if (this.f1843m == null) {
                this.f1843m = new Q(this);
            }
            Q q7 = this.f1843m;
            Handler handler = q7.f1787a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new O(0, handler), q7.f1788b);
            J j11 = this.f1856w;
            if (j11.f1773k) {
                AudioTrack audioTrack2 = this.f1858y;
                C3136t c3136t = j11.f1763a;
                audioTrack2.setOffloadDelayPadding(c3136t.f27019J, c3136t.f27020K);
            }
        }
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 31 && (i8 = this.f1853t) != null) {
            AudioTrack audioTrack3 = this.f1858y;
            LogSessionId logSessionIdA = i8.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                audioTrack3.setLogSessionId(logSessionIdA);
            }
        }
        AudioTrack audioTrack4 = this.f1858y;
        J j12 = this.f1856w;
        boolean z9 = j12.f1765c == 2;
        int i10 = j12.f1769g;
        int i11 = j12.f1766d;
        int i12 = j12.f1770h;
        C0135z c0135z = this.f1835i;
        c0135z.f2003c = audioTrack4;
        c0135z.f2004d = i12;
        c0135z.f2005e = new C0133x(audioTrack4, c0135z.f2001a);
        c0135z.f2006f = audioTrack4.getSampleRate();
        c0135z.f2007g = z9 && i9 < 23 && (i10 == 5 || i10 == 6);
        boolean zM = p117p0.M.M(i10);
        c0135z.f2018r = zM;
        c0135z.f2008h = zM ? p117p0.M.X(c0135z.f2006f, i12 / i11) : -9223372036854775807L;
        c0135z.f2021u = 0L;
        c0135z.f2022v = 0L;
        c0135z.f1998G = false;
        c0135z.f1999H = 0L;
        c0135z.f2023w = 0L;
        c0135z.f2017q = false;
        c0135z.f2026z = -9223372036854775807L;
        c0135z.f1992A = -9223372036854775807L;
        c0135z.f2019s = 0L;
        c0135z.f2016p = 0L;
        c0135z.f2009i = 1.0f;
        c0135z.f2012l = 0;
        c0135z.f2011k = -9223372036854775807L;
        c0135z.f1995D = this.f1848o0;
        if (q()) {
            this.f1858y.setVolume(this.f1810R);
        }
        this.f1824c0.getClass();
        p039f.S s7 = this.f1826d0;
        if (s7 != null && i9 >= 23) {
            this.f1858y.setPreferredDevice((AudioDeviceInfo) s7.f24988H);
            C0116f c0116f2 = this.f1793A;
            if (c0116f2 != null) {
                c0116f2.b((AudioDeviceInfo) this.f1826d0.f24988H);
            }
        }
        if (i9 >= 24 && (c0116f = this.f1793A) != null) {
            this.f1794B = new p096m2.u(this.f1858y, c0116f);
        }
        this.f1808P = true;
        int audioSessionId = this.f1858y.getAudioSessionId();
        boolean z10 = audioSessionId != this.f1820a0;
        this.f1820a0 = audioSessionId;
        InterfaceC0128s interfaceC0128s = this.f1854u;
        if (interfaceC0128s != null) {
            interfaceC0128s.p(this.f1856w.a());
            if (z10) {
                this.f1822b0 = true;
                this.f1854u.c(this.f1820a0);
            }
        }
        return true;
    }

    public final boolean q() {
        return this.f1858y != null;
    }

    public final void s() {
        Context context;
        C0114d c0114d;
        B0.r rVar;
        Looper looperMyLooper = Looper.myLooper();
        boolean z7 = this.f1793A == null || this.f1838j0 == looperMyLooper;
        StringBuilder sb = new StringBuilder("DefaultAudioSink accessed on multiple threads: ");
        Looper looper = this.f1838j0;
        sb.append(looper == null ? "null" : looper.getThread().getName());
        sb.append(" and ");
        sb.append(looperMyLooper != null ? looperMyLooper.getThread().getName() : "null");
        H1.h(sb.toString(), z7);
        if (this.f1793A == null && (context = this.f1819a) != null) {
            this.f1838j0 = looperMyLooper;
            C0116f c0116f = new C0116f(context, new E(this), this.f1795C, this.f1826d0);
            this.f1793A = c0116f;
            if (c0116f.f1934j) {
                c0114d = c0116f.f1931g;
                c0114d.getClass();
            } else {
                c0116f.f1934j = true;
                C0115e c0115e = c0116f.f1930f;
                if (c0115e != null) {
                    c0115e.f1922b.registerContentObserver(c0115e.f1923c, false, c0115e);
                }
                int i8 = Build.VERSION.SDK_INT;
                Handler handler = c0116f.f1927c;
                Context context2 = c0116f.f1925a;
                if (i8 >= 23 && (rVar = c0116f.f1928d) != null) {
                    p102n0.c.f(context2).registerAudioDeviceCallback(rVar, handler);
                }
                C0114d c0114dB = C0114d.b(context2, context2.registerReceiver(c0116f.f1929e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), c0116f.f1933i, c0116f.f1932h);
                c0116f.f1931g = c0114dB;
                c0114d = c0114dB;
            }
            this.f1859z = c0114d;
        }
        this.f1859z.getClass();
    }

    public final void t() {
        this.f1817Y = false;
        if (q()) {
            C0135z c0135z = this.f1835i;
            c0135z.g();
            if (c0135z.f2026z == -9223372036854775807L) {
                C0133x c0133x = c0135z.f2005e;
                c0133x.getClass();
                c0133x.a(0);
            }
            c0135z.f1993B = c0135z.b();
            if (!this.f1815W || r(this.f1858y)) {
                this.f1858y.pause();
            }
        }
    }

    public final void u() {
        this.f1817Y = true;
        if (q()) {
            C0135z c0135z = this.f1835i;
            if (c0135z.f2026z != -9223372036854775807L) {
                ((p117p0.G) c0135z.f2000I).getClass();
                c0135z.f2026z = p117p0.M.R(SystemClock.elapsedRealtime());
            }
            c0135z.f2011k = p117p0.M.X(c0135z.f2006f, c0135z.b());
            C0133x c0133x = c0135z.f2005e;
            c0133x.getClass();
            c0133x.a(0);
            if (!this.f1815W || r(this.f1858y)) {
                this.f1858y.play();
            }
        }
    }

    public final void v() {
        if (this.f1815W) {
            return;
        }
        this.f1815W = true;
        long jM = m();
        C0135z c0135z = this.f1835i;
        c0135z.f1993B = c0135z.b();
        ((p117p0.G) c0135z.f2000I).getClass();
        c0135z.f2026z = p117p0.M.R(SystemClock.elapsedRealtime());
        c0135z.f1994C = jM;
        if (r(this.f1858y)) {
            this.f1816X = false;
        }
        this.f1858y.stop();
        this.f1801I = 0;
    }

    public final void w() {
        if (!this.f1814V && q() && f()) {
            v();
            this.f1814V = true;
        }
    }

    public final void x(long j8) throws Exception {
        ByteBuffer byteBuffer;
        e(j8);
        if (this.f1813U != null) {
            return;
        }
        if (!this.f1857x.e()) {
            ByteBuffer byteBuffer2 = this.f1811S;
            if (byteBuffer2 != null) {
                D(byteBuffer2);
                e(j8);
                return;
            }
            return;
        }
        while (!this.f1857x.d()) {
            do {
                p102n0.d dVar = this.f1857x;
                if (dVar.e()) {
                    ByteBuffer byteBuffer3 = dVar.f27319c[dVar.c()];
                    if (byteBuffer3.hasRemaining()) {
                        byteBuffer = byteBuffer3;
                    } else {
                        dVar.f(p102n0.g.f27326a);
                        byteBuffer = dVar.f27319c[dVar.c()];
                    }
                } else {
                    byteBuffer = p102n0.g.f27326a;
                }
                if (byteBuffer.hasRemaining()) {
                    D(byteBuffer);
                    e(j8);
                } else {
                    ByteBuffer byteBuffer4 = this.f1811S;
                    if (byteBuffer4 == null || !byteBuffer4.hasRemaining()) {
                        return;
                    }
                    p102n0.d dVar2 = this.f1857x;
                    ByteBuffer byteBuffer5 = this.f1811S;
                    if (dVar2.e() && !dVar2.f27320d) {
                        dVar2.f(byteBuffer5);
                    }
                }
            } while (this.f1813U == null);
            return;
        }
    }

    public final void y() {
        g();
        z4.F fV = this.f1833h.listIterator(0);
        while (fV.hasNext()) {
            ((p102n0.g) fV.next()).a();
        }
        this.f1829f.a();
        this.f1831g.a();
        p102n0.d dVar = this.f1857x;
        if (dVar != null) {
            dVar.g();
        }
        this.f1817Y = false;
        this.f1834h0 = false;
    }

    public final void z(C3121d c3121d) {
        if (this.f1795C.equals(c3121d)) {
            return;
        }
        this.f1795C = c3121d;
        if (this.f1828e0) {
            return;
        }
        C0116f c0116f = this.f1793A;
        if (c0116f != null) {
            c0116f.f1933i = c3121d;
            c0116f.a(C0114d.c(c0116f.f1925a, c3121d, c0116f.f1932h));
        }
        g();
    }
}
