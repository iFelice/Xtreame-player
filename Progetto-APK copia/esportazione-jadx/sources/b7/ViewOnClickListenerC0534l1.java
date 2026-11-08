package b7;

import android.view.View;
import pe.hf.black20.RadioPlayerActivity;

/* JADX INFO: renamed from: b7.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0534l1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10345G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ RadioPlayerActivity f10346H;

    public /* synthetic */ ViewOnClickListenerC0534l1(RadioPlayerActivity radioPlayerActivity, int i8) {
        this.f10345G = i8;
        this.f10346H = radioPlayerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10345G;
        RadioPlayerActivity radioPlayerActivity = this.f10346H;
        switch (i8) {
            case 0:
                radioPlayerActivity.f29044G.setEnabled(false);
                radioPlayerActivity.f29044G.setAlpha(0.03f);
                radioPlayerActivity.f29045H.setEnabled(true);
                radioPlayerActivity.f29045H.setAlpha(1.0f);
                RadioPlayerActivity.a(radioPlayerActivity, radioPlayerActivity.f29047J);
                break;
            default:
                radioPlayerActivity.f29055R.pause();
                radioPlayerActivity.f29044G.setEnabled(true);
                radioPlayerActivity.f29044G.setAlpha(1.0f);
                radioPlayerActivity.f29045H.setEnabled(false);
                radioPlayerActivity.f29045H.setAlpha(0.3f);
                break;
        }
    }
}
