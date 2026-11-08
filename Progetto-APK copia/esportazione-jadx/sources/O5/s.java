package O5;

import B0.w0;
import Z3.C0433o;
import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends OrientationEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w0 f5637a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(w0 w0Var, Context context) {
        super(context, 3);
        this.f5637a = w0Var;
    }

    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i8) {
        int rotation;
        w0 w0Var = this.f5637a;
        Object obj = w0Var.f1121I;
        WindowManager windowManager = (WindowManager) obj;
        C0433o c0433o = (C0433o) w0Var.f1123K;
        if (((WindowManager) obj) == null || c0433o == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == w0Var.f1120H) {
            return;
        }
        w0Var.f1120H = rotation;
        ((g) c0433o.f8372H).f5580I.postDelayed(new p045f5.a(c0433o, 1), 250L);
    }
}
