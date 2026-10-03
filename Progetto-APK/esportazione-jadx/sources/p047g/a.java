package p047g;

import Y1.d;
import android.graphics.drawable.Animatable;
import com.google.android.gms.internal.measurement.AbstractC2617p2;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f25227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Animatable f25228f;

    public a(Animatable animatable, int i8) {
        this.f25227e = i8;
        this.f25228f = animatable;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void m() {
        int i8 = this.f25227e;
        Animatable animatable = this.f25228f;
        switch (i8) {
            case 0:
                animatable.start();
                break;
            default:
                ((d) animatable).start();
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void n() {
        int i8 = this.f25227e;
        Animatable animatable = this.f25228f;
        switch (i8) {
            case 0:
                animatable.stop();
                break;
            default:
                ((d) animatable).stop();
                break;
        }
    }
}
