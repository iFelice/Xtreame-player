package A0;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Build;
import android.view.Surface;
import com.google.android.gms.internal.measurement.H1;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p094m0.C3136t;
import p094m0.C3137u;
import p094m0.C3138v;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public final class B extends a0 {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final int[] f4c0 = {2, 3, 6, 7, 8, 9, 11, 14};

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final int[] f5d0 = {1920, 1088};

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final long f6e0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final F.i f7J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC0024y f8K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f9L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Surface f10M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final SurfaceTexture f11N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final float[] f12O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ConcurrentLinkedQueue f13P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final ScheduledExecutorService f14Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final boolean f15R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f16S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f17T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f18U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public C3137u f19V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public C3137u f20W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f21X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public ScheduledFuture f22Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public CountDownLatch f23Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public volatile boolean f24a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public volatile RuntimeException f25b0;

    static {
        String str = p117p0.M.f28050a;
        String strH0 = p190y4.k.h0(Build.DEVICE);
        f6e0 = (strH0.contains("emulator") || strH0.contains("emu64a") || strH0.contains("emu64x") || strH0.contains("generic")) ? 20000L : 500L;
    }

    public B(F.i iVar, final h0 h0Var, boolean z7, boolean z8) throws o0 {
        super(h0Var);
        this.f7J = iVar;
        this.f21X = z7;
        this.f15R = z8;
        try {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            AbstractC3164b.e();
            int i8 = iArr[0];
            AbstractC3164b.c(36197, i8, 9729);
            this.f9L = i8;
            SurfaceTexture surfaceTexture = new SurfaceTexture(i8);
            this.f11N = surfaceTexture;
            this.f12O = new float[16];
            this.f13P = new ConcurrentLinkedQueue();
            String str = p117p0.M.f28050a;
            this.f14Q = Executors.newSingleThreadScheduledExecutor(new p117p0.L("ExtTexMgr:Timer", 1));
            surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: A0.A
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                    B b8 = this.f2G;
                    b8.getClass();
                    h0Var.f(new C0025z(b8, 3), false);
                }
            });
            this.f10M = new Surface(surfaceTexture);
        } catch (p117p0.p e8) {
            throw new o0((Throwable) e8);
        }
    }

    public static float l(int i8, float f8) {
        int i9 = i8;
        for (int i10 = 2; i10 <= 256; i10 *= 2) {
            int i11 = (((i8 + i10) - 1) / i10) * i10;
            if (o(f8, i11, i8) < o(f8, i9, i8)) {
                i9 = i11;
            }
        }
        int[] iArr = f5d0;
        for (int i12 = 0; i12 < 2; i12++) {
            int i13 = iArr[i12];
            if (i13 >= i8 && o(f8, i13, i8) < o(f8, i9, i8)) {
                i9 = i13;
            }
        }
        return o(f8, i9, i8) > 1.0E-9f ? f8 : i8 / i9;
    }

    public static float o(float f8, int i8, int i9) {
        float fAbs = 1.0f;
        for (int i10 = 0; i10 <= 2; i10++) {
            float f9 = ((i9 - i10) / i8) - f8;
            if (Math.abs(f9) < fAbs) {
                fAbs = Math.abs(f9);
            }
        }
        return fAbs;
    }

    @Override // A0.a0, A0.I
    public final void A(C3138v c3138v) {
        this.f119G.f(new C0025z(this, 4), true);
    }

    @Override // A0.a0
    public final void a() {
        this.f24a0 = true;
    }

    @Override // A0.a0
    public final void b() {
        this.f16S = 0;
        this.f19V = null;
        this.f13P.clear();
        this.f20W = null;
        super.b();
    }

    @Override // A0.a0
    public final Surface c() {
        return this.f10M;
    }

    @Override // A0.a0
    public final int d() {
        return this.f13P.size();
    }

    @Override // A0.a0
    public final void e(C3137u c3137u) {
        this.f20W = c3137u;
        if (!this.f21X) {
            this.f13P.add(c3137u);
        }
        this.f119G.f(new C0025z(this, 0), true);
    }

    @Override // A0.a0
    public final void f() {
        this.f11N.release();
        this.f10M.release();
        this.f14Q.shutdownNow();
    }

    @Override // A0.a0
    public final void g() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f23Z = countDownLatch;
        this.f119G.f(new C0025z(this, 2), true);
        try {
            if (!countDownLatch.await(f6e0, TimeUnit.MILLISECONDS)) {
                p117p0.x.f("ExtTexMgr", "Timeout reached while waiting for latch to be unblocked.");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            p117p0.x.f("ExtTexMgr", "Interrupted when waiting for MediaCodec frames to arrive.");
        }
        this.f23Z = null;
        if (this.f25b0 != null) {
            throw this.f25b0;
        }
    }

    @Override // A0.a0
    public final void h(C3137u c3137u, boolean z7) {
        this.f21X = z7;
        if (z7) {
            this.f20W = c3137u;
            SurfaceTexture surfaceTexture = this.f11N;
            C3136t c3136t = c3137u.f27053a;
            surfaceTexture.setDefaultBufferSize(c3136t.f27048v, c3136t.f27049w);
        }
    }

    @Override // A0.a0
    public final void j(C0013m c0013m) {
        this.f119G.f(new C0004d(2, this, c0013m), true);
    }

    @Override // A0.a0
    public final void k() {
        this.f119G.f(new C0025z(this, 1), true);
    }

    public final void m() {
        if (this.f16S == 0 || this.f17T == 0 || this.f19V != null) {
            return;
        }
        this.f11N.updateTexImage();
        int i8 = 1;
        this.f17T--;
        C3137u c3137u = (C3137u) this.f13P.element();
        this.f19V = c3137u;
        this.f16S--;
        this.f11N.getTransformMatrix(this.f12O);
        long timestamp = (this.f11N.getTimestamp() / 1000) + c3137u.f27054b;
        if (this.f15R) {
            float[] fArr = this.f12O;
            C3136t c3136t = c3137u.f27053a;
            int i9 = c3136t.f27048v;
            int i10 = c3136t.f27049w;
            int i11 = 0;
            int i12 = fArr.length != 16 ? 1 : 0;
            int[] iArr = f4c0;
            for (int i13 = 0; i13 < 8; i13++) {
                i12 |= Math.abs(fArr[iArr[i13]]) > 1.0E-9f ? 1 : 0;
            }
            int i14 = i12 | (Math.abs(fArr[10] - 1.0f) > 1.0E-9f ? 1 : 0) | (Math.abs(fArr[15] - 1.0f) > 1.0E-9f ? 1 : 0);
            float fAbs = Math.abs(fArr[0]);
            byte b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
            byte b9 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
            byte b10 = 4;
            if (fAbs > 1.0E-9f && Math.abs(fArr[5]) > 1.0E-9f) {
                i8 = (Math.abs(fArr[4]) <= 1.0E-9f ? 0 : 1) | i14 | (Math.abs(fArr[1]) > 1.0E-9f ? 1 : 0);
                b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                b9 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                b10 = 5;
            } else if (Math.abs(fArr[1]) <= 1.0E-9f || Math.abs(fArr[4]) <= 1.0E-9f) {
                i11 = -1;
                b8 = -1;
                b9 = -1;
                b10 = -1;
            } else {
                i8 = i14 | (Math.abs(fArr[0]) > 1.0E-9f ? 1 : 0) | (Math.abs(fArr[5]) > 1.0E-9f ? 1 : 0);
                i11 = 1;
            }
            if (i8 != 0) {
                int i15 = AbstractC0007g.f146a;
                synchronized (AbstractC0007g.class) {
                }
            } else {
                float f8 = fArr[i11];
                float f9 = fArr[b8];
                if (Math.abs(f8) + 1.0E-9f < 1.0f) {
                    float fCopySign = Math.copySign(l(i9, Math.abs(f8)), f8);
                    AbstractC0007g.a();
                    fArr[i11] = fCopySign;
                    fArr[b8] = ((f8 - fCopySign) * 0.5f) + f9;
                }
                float f10 = fArr[b10];
                float f11 = fArr[b9];
                if (Math.abs(f10) + 1.0E-9f < 1.0f) {
                    float fCopySign2 = Math.copySign(l(i10, Math.abs(f10)), f10);
                    AbstractC0007g.a();
                    fArr[b10] = fCopySign2;
                    fArr[b9] = ((f10 - fCopySign2) * 0.5f) + f11;
                }
            }
        }
        InterfaceC0024y interfaceC0024y = this.f8K;
        interfaceC0024y.getClass();
        ((C0013m) interfaceC0024y).f177h.e("uTexTransformationMatrix", this.f12O);
        K k8 = this.f8K;
        k8.getClass();
        F.i iVar = this.f7J;
        int i16 = this.f9L;
        C3136t c3136t2 = c3137u.f27053a;
        ((AbstractC0001a) k8).b(iVar, new C3138v(i16, -1, c3136t2.f27048v, c3136t2.f27049w), timestamp);
        H1.j((C3137u) this.f13P.remove());
        AbstractC0007g.b(timestamp);
    }

    public final void n() {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        while (true) {
            int i8 = this.f17T;
            concurrentLinkedQueue = this.f13P;
            if (i8 <= 0) {
                break;
            }
            this.f17T = i8 - 1;
            this.f11N.updateTexImage();
            concurrentLinkedQueue.remove();
        }
        if (this.f23Z == null || !concurrentLinkedQueue.isEmpty()) {
            return;
        }
        this.f23Z.countDown();
    }

    @Override // A0.I
    public final void r() {
        this.f119G.f(new C0025z(this, 5), true);
    }
}
