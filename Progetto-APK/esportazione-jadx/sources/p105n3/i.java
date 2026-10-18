package p105n3;

import android.app.Activity;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import p113o3.C3151i;

/* JADX INFO: loaded from: classes.dex */
public final class i extends RelativeLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3151i f27505G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f27506H;

    public i(Activity activity, String str, String str2, String str3) {
        super(activity);
        C3151i c3151i = new C3151i(activity);
        c3151i.f27961c = str;
        this.f27505G = c3151i;
        c3151i.f27963e = str2;
        c3151i.f27962d = str3;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f27506H) {
            return false;
        }
        this.f27505G.a(motionEvent);
        return false;
    }
}
