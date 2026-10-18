package pe.hf.black20.speedtest;

import W4.a;
import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import java.text.DecimalFormat;
import java.util.HashSet;
import k7.j;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class SpeedTestActivity extends Activity {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static int f29342J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static int f29343K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final SpeedTestActivity f29344G = this;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public j f29345H = null;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public HashSet f29346I;

    public static int a(double d6) {
        if (d6 <= 1.0d) {
            return (int) (d6 * 30.0d);
        }
        if (d6 <= 10.0d) {
            return ((int) (d6 * 6.0d)) + 30;
        }
        if (d6 <= 30.0d) {
            return ((int) ((d6 - 10.0d) * 3.0d)) + 90;
        }
        if (d6 <= 50.0d) {
            return ((int) ((d6 - 30.0d) * 1.5d)) + 150;
        }
        if (d6 <= 100.0d) {
            return ((int) ((d6 - 50.0d) * 1.2d)) + 180;
        }
        return 0;
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_speedtest);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        SpeedTestActivity speedTestActivity = this.f29344G;
        if (Methods.R(speedTestActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        Button button = (Button) findViewById(R.id.startButton);
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        button.setText(speedTestActivity.getString(R.string.xc_begin_test));
        this.f29346I = new HashSet();
        j jVar = new j();
        this.f29345H = jVar;
        jVar.start();
        button.setOnClickListener(new a(this, button, decimalFormat, 7));
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        j jVar = new j();
        this.f29345H = jVar;
        jVar.start();
    }
}
