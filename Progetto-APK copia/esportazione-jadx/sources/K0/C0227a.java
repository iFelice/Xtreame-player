package K0;

import U0.C0344j;
import android.media.MediaCodec;
import android.os.Build;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: renamed from: K0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0227a implements MediaCodec.OnFrameRenderedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0344j f4307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f4308c;

    public /* synthetic */ C0227a(l lVar, C0344j c0344j, int i8) {
        this.f4306a = i8;
        this.f4308c = lVar;
        this.f4307b = c0344j;
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j8, long j9) {
        switch (this.f4306a) {
            case 0:
                b bVar = (b) this.f4308c;
                C0344j c0344j = this.f4307b;
                bVar.getClass();
                if (Build.VERSION.SDK_INT >= 30) {
                    c0344j.a(j8);
                } else {
                    Handler handler = c0344j.f6763G;
                    handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 0, (int) (j8 >> 32), (int) j8));
                }
                break;
            default:
                A a8 = (A) this.f4308c;
                C0344j c0344j2 = this.f4307b;
                a8.getClass();
                if (Build.VERSION.SDK_INT >= 30) {
                    c0344j2.a(j8);
                } else {
                    Handler handler2 = c0344j2.f6763G;
                    handler2.sendMessageAtFrontOfQueue(Message.obtain(handler2, 0, (int) (j8 >> 32), (int) j8));
                }
                break;
        }
    }
}
