package O5;

import Z3.C0433o;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f5608n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f5609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DecoratedBarcodeView f5610b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p161u5.g f5616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p161u5.d f5617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Handler f5618j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5621m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5611c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5612d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5613e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f5614f = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5615g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5619k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0433o f5620l = new C0433o(this, 22);

    public k(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        e eVar = new e(this, 1);
        this.f5621m = false;
        this.f5609a = activity;
        this.f5610b = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().f5587P.add(eVar);
        this.f5618j = new Handler();
        this.f5616h = new p161u5.g(activity, new h(this, 0));
        this.f5617i = new p161u5.d(activity);
    }

    public final void a() {
        DecoratedBarcodeView decoratedBarcodeView = this.f5610b;
        P5.f fVar = decoratedBarcodeView.getBarcodeView().f5578G;
        if (fVar == null || fVar.f5938g) {
            this.f5609a.finish();
        } else {
            this.f5619k = true;
        }
        decoratedBarcodeView.f24565G.c();
        this.f5616h.a();
    }

    public final void b(String str) {
        Activity activity = this.f5609a;
        if (activity.isFinishing() || this.f5615g || this.f5619k) {
            return;
        }
        if (str.isEmpty()) {
            str = activity.getString(R.string.zxing_msg_camera_framework_bug);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(activity.getString(R.string.zxing_app_name));
        builder.setMessage(str);
        builder.setPositiveButton(R.string.zxing_button_ok, new i(this, 0));
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: O5.j
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f5607G.f5609a.finish();
            }
        });
        builder.show();
    }
}
