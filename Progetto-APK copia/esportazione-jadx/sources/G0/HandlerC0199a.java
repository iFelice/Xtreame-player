package G0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p094m0.P;
import p141s0.C3185j;

/* JADX INFO: renamed from: G0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC0199a extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f3303b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0199a(d dVar, Looper looper) {
        super(looper);
        this.f3303b = dVar;
    }

    public final boolean a(Message message, B b8) {
        long jMin;
        C0200b c0200b = (C0200b) message.obj;
        if (!c0200b.f3305b) {
            return false;
        }
        int i8 = c0200b.f3307d + 1;
        c0200b.f3307d = i8;
        if (i8 > this.f3303b.f3318j.Y(3)) {
            return false;
        }
        SystemClock.elapsedRealtime();
        SystemClock.elapsedRealtime();
        Throwable uVar = b8.getCause() instanceof IOException ? (IOException) b8.getCause() : new I0.u(b8.getCause());
        U4.b bVar = this.f3303b.f3318j;
        int i9 = c0200b.f3307d;
        bVar.getClass();
        if (!(uVar instanceof P) && !(uVar instanceof FileNotFoundException) && !(uVar instanceof p141s0.w) && !(uVar instanceof S0.l)) {
            int i10 = C3185j.f29946H;
            while (true) {
                if (uVar == null) {
                    jMin = Math.min((i9 - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                    break;
                }
                if ((uVar instanceof C3185j) && ((C3185j) uVar).f29947G == 2008) {
                    jMin = -9223372036854775807L;
                    break;
                }
                uVar = uVar.getCause();
            }
        } else {
            jMin = -9223372036854775807L;
            break;
        }
        if (jMin == -9223372036854775807L) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f3302a) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), jMin);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object objG;
        C0200b c0200b = (C0200b) message.obj;
        try {
            int i8 = message.what;
            if (i8 == 1) {
                objG = this.f3303b.f3320l.g((v) c0200b.f3306c);
            } else {
                if (i8 != 2) {
                    throw new RuntimeException();
                }
                d dVar = this.f3303b;
                objG = dVar.f3320l.f(dVar.f3321m, (u) c0200b.f3306c);
            }
        } catch (B e8) {
            boolean zA = a(message, e8);
            objG = e8;
            if (zA) {
                return;
            }
        } catch (Exception e9) {
            p117p0.x.g("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e9);
            objG = e9;
        }
        U4.b bVar = this.f3303b.f3318j;
        long j8 = c0200b.f3304a;
        bVar.getClass();
        synchronized (this) {
            try {
                if (!this.f3302a) {
                    this.f3303b.f3323o.obtainMessage(message.what, Pair.create(c0200b.f3306c, objG)).sendToTarget();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
