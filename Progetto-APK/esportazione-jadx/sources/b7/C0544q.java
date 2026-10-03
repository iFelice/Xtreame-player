package b7;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ORPlayerMainActivity;

/* JADX INFO: renamed from: b7.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0544q extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CategoriesActivity f10385b;

    public /* synthetic */ C0544q(CategoriesActivity categoriesActivity, int i8) {
        this.f10384a = i8;
        this.f10385b = categoriesActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i8 = this.f10384a;
        CategoriesActivity categoriesActivity = this.f10385b;
        switch (i8) {
            case 0:
                if (categoriesActivity != null) {
                    categoriesActivity.runOnUiThread(new p123p6.m(2, this, intent));
                    break;
                }
                break;
            default:
                Log.e("FirstReceiver", "FirstReceiver");
                if (intent.getAction().equals(ORPlayerMainActivity.FINISH_ALERT)) {
                    if (!intent.hasExtra("balert")) {
                        categoriesActivity.finish();
                    } else {
                        Toast.makeText(context, "Invalid License! Your app will be banned soon.", 1).show();
                        new Handler(Looper.getMainLooper()).postDelayed(new com.google.android.gms.internal.cast.X(this, 14), 5000L);
                    }
                }
                break;
        }
    }
}
