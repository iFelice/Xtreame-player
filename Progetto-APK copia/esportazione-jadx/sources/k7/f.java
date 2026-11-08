package k7;

import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.TextView;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import p104n2.t;
import pe.hf.black20.speedtest.SpeedTestActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26042G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ b f26043H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ t f26044I;

    public /* synthetic */ f(t tVar, b bVar, int i8) {
        this.f26042G = i8;
        this.f26044I = tVar;
        this.f26043H = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        double dDoubleValue;
        int i8 = this.f26042G;
        b bVar = this.f26043H;
        t tVar = this.f26044I;
        switch (i8) {
            case 0:
                TextView textView = (TextView) tVar.f27470H;
                StringBuilder sb = new StringBuilder();
                DecimalFormat decimalFormat = (DecimalFormat) ((W4.a) tVar.f27474L).f7481I;
                try {
                    dDoubleValue = new BigDecimal(bVar.f26027I).setScale(2, RoundingMode.HALF_UP).doubleValue();
                } catch (Exception unused) {
                    dDoubleValue = 0.0d;
                }
                sb.append(decimalFormat.format(dDoubleValue));
                sb.append(" Mbps");
                textView.setText(sb.toString());
                break;
            default:
                RotateAnimation rotateAnimation = new RotateAnimation(SpeedTestActivity.f29343K, SpeedTestActivity.f29342J, 1, 0.5f, 1, 0.5f);
                tVar.f27471I = rotateAnimation;
                rotateAnimation.setInterpolator(new LinearInterpolator());
                ((RotateAnimation) tVar.f27471I).setDuration(100L);
                ((TextView) tVar.f27470H).setText(((DecimalFormat) ((W4.a) tVar.f27474L).f7481I).format(bVar.a()) + " Mbps");
                break;
        }
    }
}
