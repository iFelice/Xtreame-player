package X4;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes.dex */
public final class d extends CountDownTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f7664a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(long j8, W4.b bVar) {
        super(j8, 1000L);
        this.f7664a = bVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        W4.b bVar = (W4.b) this.f7664a;
        int i8 = bVar.f7483a;
        W4.c cVar = bVar.f7484b;
        switch (i8) {
            case 0:
                cVar.getClass();
                throw null;
            default:
                cVar.getClass();
                throw null;
        }
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j8) {
    }
}
