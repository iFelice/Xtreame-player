package S0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class i extends Handler implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f6353G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f6354H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f6355I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public h f6356J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public IOException f6357K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f6358L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Thread f6359M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f6360N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public volatile boolean f6361O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ m f6362P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(m mVar, Looper looper, j jVar, h hVar, int i8, long j8) {
        super(looper);
        this.f6362P = mVar;
        this.f6354H = jVar;
        this.f6356J = hVar;
        this.f6353G = i8;
        this.f6355I = j8;
    }

    public final void a(boolean z7) {
        this.f6361O = z7;
        this.f6357K = null;
        if (hasMessages(1)) {
            this.f6360N = true;
            removeMessages(1);
            if (!z7) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.f6360N = true;
                    this.f6354H.I();
                    Thread thread = this.f6359M;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z7) {
            this.f6362P.f6367H = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            h hVar = this.f6356J;
            hVar.getClass();
            hVar.c(this.f6354H, jElapsedRealtime, jElapsedRealtime - this.f6355I, true);
            this.f6356J = null;
        }
    }

    public final void b() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j8 = jElapsedRealtime - this.f6355I;
        h hVar = this.f6356J;
        hVar.getClass();
        hVar.p(this.f6354H, jElapsedRealtime, j8, this.f6358L);
        this.f6357K = null;
        m mVar = this.f6362P;
        T0.a aVar = mVar.f6366G;
        i iVar = mVar.f6367H;
        iVar.getClass();
        aVar.execute(iVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f6361O) {
            return;
        }
        int i8 = message.what;
        if (i8 == 1) {
            b();
            return;
        }
        if (i8 == 4) {
            throw ((Error) message.obj);
        }
        this.f6362P.f6367H = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j8 = jElapsedRealtime - this.f6355I;
        h hVar = this.f6356J;
        hVar.getClass();
        if (this.f6360N) {
            hVar.c(this.f6354H, jElapsedRealtime, j8, false);
            return;
        }
        int i9 = message.what;
        if (i9 == 2) {
            try {
                hVar.o(this.f6354H, jElapsedRealtime, j8);
                return;
            } catch (RuntimeException e8) {
                x.d("LoadTask", "Unexpected exception handling load completed", e8);
                this.f6362P.f6368I = new l(e8);
                return;
            }
        }
        if (i9 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f6357K = iOException;
        int i10 = this.f6358L + 1;
        this.f6358L = i10;
        g gVarN = hVar.n(this.f6354H, jElapsedRealtime, j8, iOException, i10);
        int i11 = gVarN.f6351a;
        if (i11 == 3) {
            this.f6362P.f6368I = this.f6357K;
            return;
        }
        if (i11 != 2) {
            if (i11 == 1) {
                this.f6358L = 1;
            }
            long jMin = gVarN.f6352b;
            if (jMin == -9223372036854775807L) {
                jMin = Math.min((this.f6358L - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
            }
            m mVar = this.f6362P;
            H1.i(mVar.f6367H == null);
            mVar.f6367H = this;
            if (jMin > 0) {
                sendEmptyMessageDelayed(1, jMin);
            } else {
                b();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z7;
        try {
            synchronized (this) {
                z7 = !this.f6360N;
                this.f6359M = Thread.currentThread();
            }
            if (z7) {
                Trace.beginSection("load:".concat(this.f6354H.getClass().getSimpleName()));
                try {
                    this.f6354H.p();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.f6359M = null;
                Thread.interrupted();
            }
            if (this.f6361O) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e8) {
            if (this.f6361O) {
                return;
            }
            obtainMessage(3, e8).sendToTarget();
        } catch (Error e9) {
            if (!this.f6361O) {
                x.d("LoadTask", "Unexpected error loading stream", e9);
                obtainMessage(4, e9).sendToTarget();
            }
            throw e9;
        } catch (Exception e10) {
            if (this.f6361O) {
                return;
            }
            x.d("LoadTask", "Unexpected exception loading stream", e10);
            obtainMessage(3, new l(e10)).sendToTarget();
        } catch (OutOfMemoryError e11) {
            if (this.f6361O) {
                return;
            }
            x.d("LoadTask", "OutOfMemory error loading stream", e11);
            obtainMessage(3, new l(e11)).sendToTarget();
        }
    }
}
