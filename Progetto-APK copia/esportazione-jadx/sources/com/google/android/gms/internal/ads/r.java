package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
public final class r implements Choreographer.FrameCallback, Handler.Callback {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final r f20663K = new r();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile long f20664G = -9223372036854775807L;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Handler f20665H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Choreographer f20666I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f20667J;

    public r() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f20665H = handler;
        handler.sendEmptyMessage(1);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j8) {
        this.f20664G = j8;
        Choreographer choreographer = this.f20666I;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i8 = message.what;
        if (i8 == 1) {
            try {
                this.f20666I = Choreographer.getInstance();
            } catch (RuntimeException e8) {
                Zo.g("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e8);
            }
            return true;
        }
        if (i8 == 2) {
            Choreographer choreographer = this.f20666I;
            if (choreographer != null) {
                int i9 = this.f20667J + 1;
                this.f20667J = i9;
                if (i9 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i8 != 3) {
            return false;
        }
        Choreographer choreographer2 = this.f20666I;
        if (choreographer2 != null) {
            int i10 = this.f20667J - 1;
            this.f20667J = i10;
            if (i10 == 0) {
                choreographer2.removeFrameCallback(this);
                this.f20664G = -9223372036854775807L;
            }
        }
        return true;
    }
}
