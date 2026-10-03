package k7;

import android.widget.Button;
import android.widget.Toast;
import p104n2.t;
import pe.hf.black20.R;
import pe.hf.black20.speedtest.SpeedTestActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26045G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ t f26046H;

    public /* synthetic */ g(t tVar, int i8) {
        this.f26045G = i8;
        this.f26046H = tVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26045G;
        t tVar = this.f26046H;
        switch (i8) {
            case 0:
                ((Button) ((W4.a) tVar.f27474L).f7480H).setEnabled(true);
                W4.a aVar = (W4.a) tVar.f27474L;
                ((Button) aVar.f7480H).setTextSize(16.0f);
                ((Button) aVar.f7480H).setText("Restart Test");
                break;
            case 1:
                W4.a aVar2 = (W4.a) tVar.f27474L;
                ((Button) aVar2.f7480H).setText(((SpeedTestActivity) aVar2.f7482J).f29344G.getString(R.string.xc_best_server));
                break;
            case 2:
                Toast.makeText(((SpeedTestActivity) ((W4.a) tVar.f27474L).f7482J).getApplicationContext(), "No Connection...", 1).show();
                W4.a aVar3 = (W4.a) tVar.f27474L;
                ((Button) aVar3.f7480H).setEnabled(true);
                ((Button) aVar3.f7480H).setTextSize(16.0f);
                ((Button) aVar3.f7480H).setText(((SpeedTestActivity) aVar3.f7482J).f29344G.getString(R.string.xc_restart_test));
                break;
            default:
                ((Button) ((W4.a) tVar.f27474L).f7480H).setTextSize(12.0f);
                W4.a aVar4 = (W4.a) tVar.f27474L;
                ((Button) aVar4.f7480H).setText(((SpeedTestActivity) aVar4.f7482J).f29344G.getString(R.string.xc_problem_getting_host));
                break;
        }
    }
}
