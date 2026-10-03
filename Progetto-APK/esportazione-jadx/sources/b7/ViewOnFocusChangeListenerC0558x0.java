package b7;

import android.view.View;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnFocusChangeListenerC0558x0 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10525b;

    public /* synthetic */ ViewOnFocusChangeListenerC0558x0(Object obj, int i8) {
        this.f10524a = i8;
        this.f10525b = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10524a;
        Object obj = this.f10525b;
        switch (i8) {
            case 0:
                if (!z7) {
                    if (!ORPlayerMainActivity.f28775G0) {
                        ((ORPlayerMainActivity) obj).x();
                    }
                } else if (!ORPlayerMainActivity.f28775G0) {
                    ((ORPlayerMainActivity) obj).y();
                }
                break;
            case 1:
                if (!z7) {
                    ((I0) obj).f10064f1.setBackgroundResource(R.drawable.search_icon);
                } else {
                    ((I0) obj).f10064f1.setBackgroundResource(R.drawable.search_icon_f);
                }
                break;
            default:
                if (!z7) {
                    ((A1) obj).f9950J0.setBackgroundResource(R.drawable.search_n);
                } else {
                    ((A1) obj).f9950J0.setBackgroundResource(R.drawable.search);
                }
                break;
        }
    }
}
