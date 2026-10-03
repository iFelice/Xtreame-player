package p032e0;

import U4.b;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class A extends Fragment {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f24712G = 0;

    public final void a(EnumC2981i enumC2981i) {
        if (Build.VERSION.SDK_INT < 29) {
            Activity activity = getActivity();
            q0.g(activity, "activity");
            b.R(activity, enumC2981i);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(EnumC2981i.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        a(EnumC2981i.ON_DESTROY);
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        a(EnumC2981i.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        a(EnumC2981i.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        a(EnumC2981i.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        a(EnumC2981i.ON_STOP);
    }
}
