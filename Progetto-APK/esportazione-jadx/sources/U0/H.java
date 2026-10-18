package U0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
public final class H implements Choreographer.FrameCallback, Handler.Callback {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final H f6649K = new H();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile long f6650G = -9223372036854775807L;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Handler f6651H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Choreographer f6652I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f6653J;

    public H() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        String str = p117p0.M.f28050a;
        Handler handler = new Handler(looper, this);
        this.f6651H = handler;
        handler.sendEmptyMessage(1);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j8) {
        this.f6650G = j8;
        Choreographer choreographer = this.f6652I;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i8 = message.what;
        if (i8 == 1) {
            try {
                this.f6652I = Choreographer.getInstance();
            } catch (RuntimeException e8) {
                p117p0.x.g("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e8);
            }
            return true;
        }
        if (i8 == 2) {
            Choreographer choreographer = this.f6652I;
            if (choreographer != null) {
                int i9 = this.f6653J + 1;
                this.f6653J = i9;
                if (i9 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i8 != 3) {
            return false;
        }
        Choreographer choreographer2 = this.f6652I;
        if (choreographer2 != null) {
            int i10 = this.f6653J - 1;
            this.f6653J = i10;
            if (i10 == 0) {
                choreographer2.removeFrameCallback(this);
                this.f6650G = -9223372036854775807L;
            }
        }
        return true;
    }
}
