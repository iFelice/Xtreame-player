package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;

/* JADX INFO: loaded from: classes.dex */
public final class GO extends Handler implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final GN f13550G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public FO f13551H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public IOException f13552I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f13553J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Thread f13554K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f13555L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public volatile boolean f13556M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ JO f13557N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GO(JO jo, Looper looper, GN gn, FO fo, long j8) {
        super(looper);
        this.f13557N = jo;
        this.f13550G = gn;
        this.f13551H = fo;
    }

    public final void a(boolean z7) {
        this.f13556M = z7;
        this.f13552I = null;
        if (hasMessages(1)) {
            this.f13555L = true;
            removeMessages(1);
            if (!z7) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.f13555L = true;
                    this.f13550G.f13543g = true;
                    Thread thread = this.f13554K;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z7) {
            this.f13557N.f14154c = null;
            SystemClock.elapsedRealtime();
            FO fo = this.f13551H;
            fo.getClass();
            ((KN) fo).c(this.f13550G, true);
            this.f13551H = null;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        long jMin;
        S0.g gVar;
        Y y7;
        if (this.f13556M) {
            return;
        }
        int i8 = message.what;
        if (i8 == 1) {
            this.f13552I = null;
            JO jo = this.f13557N;
            ExecutorService executorService = jo.f14152a;
            GO go = jo.f14154c;
            go.getClass();
            executorService.execute(go);
            return;
        }
        if (i8 == 4) {
            throw ((Error) message.obj);
        }
        this.f13557N.f14154c = null;
        SystemClock.elapsedRealtime();
        FO fo = this.f13551H;
        fo.getClass();
        if (this.f13555L) {
            ((KN) fo).c(this.f13550G, false);
            return;
        }
        int i9 = message.what;
        if (i9 == 2) {
            try {
                ((KN) fo).l(this.f13550G);
                return;
            } catch (RuntimeException e8) {
                Zo.d("LoadTask", "Unexpected exception handling load completed", e8);
                this.f13557N.f14155d = new IO(e8);
                return;
            }
        }
        if (i9 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f13552I = iOException;
        int i10 = this.f13553J;
        this.f13553J = i10 + 1;
        GN gn = this.f13550G;
        KN kn = (KN) fo;
        Uri uri = gn.f13538b.f16235b;
        C1827pN c1827pN = new C1827pN();
        int i11 = Et.f13234a;
        if ((iOException instanceof C0800Ka) || (iOException instanceof FileNotFoundException) || (iOException instanceof C1975sG) || (iOException instanceof IO)) {
            jMin = -9223372036854775807L;
            break;
        }
        Throwable cause = iOException;
        while (true) {
            if (cause == null) {
                jMin = Math.min(i10 * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                break;
            } else {
                if ((cause instanceof C2231xC) && ((C2231xC) cause).f21855G == 2008) {
                    jMin = -9223372036854775807L;
                    break;
                }
                cause = cause.getCause();
            }
        }
        if (jMin == -9223372036854775807L) {
            gVar = JO.f14151f;
        } else {
            int iM = kn.m();
            int i12 = iM > kn.f14370o0 ? 1 : 0;
            if (kn.f14366k0 || !((y7 = kn.f14359d0) == null || y7.zza() == -9223372036854775807L)) {
                kn.f14370o0 = iM;
            } else {
                boolean z7 = kn.f14355Z;
                if (!z7 || kn.v()) {
                    kn.f14364i0 = z7;
                    kn.f14367l0 = 0L;
                    kn.f14370o0 = 0;
                    for (TN tn : kn.f14352W) {
                        tn.o(false);
                    }
                    gn.f13542f.f7458a = 0L;
                    gn.f13545i = 0L;
                    gn.f13544h = true;
                    gn.f13548l = false;
                } else {
                    kn.f14369n0 = true;
                    gVar = JO.f14150e;
                }
            }
            gVar = new S0.g(i12, jMin, 0);
        }
        int i13 = gVar.f6351a;
        kn.f14339J.n(c1827pN, new C1721nL(-1, (C1804p0) null, Et.w(gn.f13545i), Et.w(kn.f14360e0)), iOException, !(i13 == 0 || i13 == 1));
        int i14 = gVar.f6351a;
        if (i14 == 3) {
            this.f13557N.f14155d = this.f13552I;
            return;
        }
        if (i14 != 2) {
            if (i14 == 1) {
                this.f13553J = 1;
            }
            long jMin2 = gVar.f6352b;
            if (jMin2 == -9223372036854775807L) {
                jMin2 = Math.min((this.f13553J - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
            }
            JO jo2 = this.f13557N;
            p113o3.r.M(jo2.f14154c == null);
            jo2.f14154c = this;
            if (jMin2 > 0) {
                sendEmptyMessageDelayed(1, jMin2);
            } else {
                this.f13552I = null;
                jo2.f14152a.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z7;
        try {
            synchronized (this) {
                z7 = !this.f13555L;
                this.f13554K = Thread.currentThread();
            }
            if (z7) {
                Trace.beginSection("load:".concat(this.f13550G.getClass().getSimpleName()));
                try {
                    this.f13550G.a();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.f13554K = null;
                Thread.interrupted();
            }
            if (this.f13556M) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e8) {
            if (this.f13556M) {
                return;
            }
            obtainMessage(3, e8).sendToTarget();
        } catch (Error e9) {
            if (!this.f13556M) {
                Zo.d("LoadTask", "Unexpected error loading stream", e9);
                obtainMessage(4, e9).sendToTarget();
            }
            throw e9;
        } catch (Exception e10) {
            if (this.f13556M) {
                return;
            }
            Zo.d("LoadTask", "Unexpected exception loading stream", e10);
            obtainMessage(3, new IO(e10)).sendToTarget();
        } catch (OutOfMemoryError e11) {
            if (this.f13556M) {
                return;
            }
            Zo.d("LoadTask", "OutOfMemory error loading stream", e11);
            obtainMessage(3, new IO(e11)).sendToTarget();
        }
    }
}
