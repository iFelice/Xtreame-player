package U0;

import android.content.Context;
import androidx.media3.effect.SingleInputVideoGraph$Factory;
import p094m0.C3126i;
import p094m0.q0;
import p094m0.t0;
import p094m0.v0;

/* JADX INFO: loaded from: classes.dex */
public final class v implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f6851a = new u();

    @Override // p094m0.t0
    public final v0 a(Context context, C3126i c3126i, x xVar, ExecutorC0348n executorC0348n) {
        try {
            return ((t0) SingleInputVideoGraph$Factory.class.getConstructor(q0.class).newInstance(this.f6851a)).a(context, c3126i, xVar, executorC0348n);
        } catch (Exception e8) {
            throw new IllegalStateException(e8);
        }
    }
}
